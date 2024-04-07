// Author model
class Author {
  final String name;

  Author({required this.name});

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      name: json['name'],
    );
  }
}

// Chapter model
class Chapter {
  final String title;
  final int number;

  Chapter({required this.title, required this.number});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      title: json['title'],
      number: json['number'],
    );
  }
}

// Course model
class Course {
  final String title;
  final Author author;
  final List<Chapter> chapters;

  Course({required this.title, required this.author, required this.chapters});

  factory Course.fromJson(Map<String, dynamic> json) {
    Author author = Author.fromJson(json['author']);

    List<Chapter> chapters = List<Chapter>.from(
      json['chapters'].map((chapterJson) => Chapter.fromJson(chapterJson)),
    );

    return Course(
      title: json['title'],
      author: author,
      chapters: chapters,
    );
  }
}
