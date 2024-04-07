import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/models/courses.dart';
import 'package:demo_app/services/search.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController;
  List<Course> _searchResult = [];
  late CourseSearch _courseSearch; // Instance of CourseSearch

  @override
  void initState() {
    super.initState();

    _searchController = TextEditingController();
    _courseSearch = CourseSearch();

    _searchResult = _courseSearch.Courses; // Initialize CourseSearch instance
    // Initial search results to all courses
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchTextChanged(String query) async {
    // Call instance method of CourseSearch to search courses
    print(query);
    List<Course> result =
        await _courseSearch.searchCourses(_searchController.text);
    setState(() {
      _searchResult = result; // Update search results
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Find Your Favorite Courses',
          style: TextStyle(fontSize: 20, color: Colors.orangeAccent.shade400),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: _onSearchTextChanged,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.grey.shade500,
                ),
                hintText: 'Search courses...',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintStyle: TextStyle(color: Colors.grey),
              ),
              style: TextStyle(color: Colors.grey),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResult.length,
                itemBuilder: (BuildContext context, int index) {
                  Course course = _searchResult[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade50,
                    ),
                    child: ListTile(
                      title: Text(
                        course.title,
                      ),
                      subtitle: Text(course.author.name),
                      trailing: Text('${course.chapters.length} Chapter'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
