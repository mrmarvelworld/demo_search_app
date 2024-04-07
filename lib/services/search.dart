import 'package:demo_app/models/courses.dart';

class CourseSearch {
  Future<List<Course>> searchCourses(String query) async {
    if (query.isEmpty) {
      return Courses;
    }

    // Split the query into individual words
    List<String> queryWords = query.toLowerCase().split(" ");

    // Filter courses based on whether their titles contain any word from the query
    List<Course> filteredCourses = Courses.where((course) {
      for (var word in queryWords) {
        if (course.title.toLowerCase().contains(word)) {
          return true;
        }
      }
      return false;
    }).toList();

    return filteredCourses;
  }

  final List<Course> Courses = [
    Course(
        title: 'Financial Analysis',
        author: Author(name: 'Emily Watson'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to Financial Analysis'),
          Chapter(number: 2, title: 'Tools for Analysis'),
          Chapter(number: 3, title: 'Interpreting Financial Statements')
        ]),
    Course(
        title: 'Economics 101',
        author: Author(name: 'Robert Johnson'),
        chapters: [
          Chapter(number: 1, title: 'Principles of Economics'),
          Chapter(number: 2, title: 'Microeconomics'),
          Chapter(number: 3, title: 'Macroeconomics')
        ]),
    Course(
        title: 'Business Ethics',
        author: Author(name: 'Sophia Lee'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to Ethics'),
          Chapter(number: 2, title: 'Ethical Decision Making'),
          Chapter(number: 3, title: 'Corporate Social Responsibility')
        ]),
    Course(
        title: 'Marketing Fundamentals',
        author: Author(name: 'David Miller'),
        chapters: [
          Chapter(number: 1, title: 'Understanding Marketing'),
          Chapter(number: 2, title: 'Market Research'),
          Chapter(number: 3, title: 'Marketing Strategies')
        ]),
    Course(
        title: 'Entrepreneurship Essentials',
        author: Author(name: 'Anna Chen'),
        chapters: [
          Chapter(number: 1, title: 'What is Entrepreneurship?'),
          Chapter(number: 2, title: 'Business Planning'),
          Chapter(number: 3, title: 'Launching Your Venture')
        ]),
    Course(
        title: 'Leadership Skills',
        author: Author(name: 'Michael Johnson'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to Leadership'),
          Chapter(number: 2, title: 'Leadership Styles'),
          Chapter(number: 3, title: 'Effective Communication')
        ]),
    Course(
        title: 'Supply Chain Management',
        author: Author(name: 'Emma Thompson'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to Supply Chain'),
          Chapter(number: 2, title: 'Logistics Management'),
          Chapter(number: 3, title: 'Inventory Control')
        ]),
    Course(
        title: 'Human Resource Management',
        author: Author(name: 'Daniel Brown'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to HRM'),
          Chapter(number: 2, title: 'Recruitment and Selection'),
          Chapter(number: 3, title: 'Training and Development')
        ]),
    Course(
        title: 'Strategic Management',
        author: Author(name: 'Olivia Adams'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to Strategy'),
          Chapter(number: 2, title: 'SWOT Analysis'),
          Chapter(number: 3, title: 'Strategy Implementation')
        ]),
    Course(
        title: 'International Business',
        author: Author(name: 'Lucas Wright'),
        chapters: [
          Chapter(number: 1, title: 'Globalization and Business'),
          Chapter(number: 2, title: 'International Market Entry'),
          Chapter(number: 3, title: 'Cross-Cultural Management')
        ]),
    Course(
        title: 'Project Management Basics',
        author: Author(name: 'Rachel Scott'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to Project Management'),
          Chapter(number: 2, title: 'Project Planning'),
          Chapter(number: 3, title: 'Project Execution')
        ]),
    Course(
        title: 'Data Analysis Fundamentals',
        author: Author(name: 'Peter White'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to Data Analysis'),
          Chapter(number: 2, title: 'Data Visualization'),
          Chapter(number: 3, title: 'Statistical Analysis')
        ]),
    Course(
        title: 'Cybersecurity Basics',
        author: Author(name: 'Michelle Anderson'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to Cybersecurity'),
          Chapter(number: 2, title: 'Network Security'),
          Chapter(number: 3, title: 'Cyber Threats and Countermeasures')
        ]),
    Course(
        title: 'Digital Marketing Strategies',
        author: Author(name: 'Alex Carter'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to Digital Marketing'),
          Chapter(number: 2, title: 'Content Marketing'),
          Chapter(number: 3, title: 'Social Media Marketing')
        ]),
    Course(
        title: 'Customer Relationship Management',
        author: Author(name: 'Sophie Williams'),
        chapters: [
          Chapter(number: 1, title: 'Introduction to CRM'),
          Chapter(number: 2, title: 'CRM Technologies'),
          Chapter(number: 3, title: 'Customer Engagement Strategies')
        ])
  ];
}
