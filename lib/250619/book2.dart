class Book2 implements Comparable<Book2> {
  String title;
  DateTime publishDate;
  String comment;

  Book2({
    required this.title,
    required this.comment,
    DateTime? publishDate,
  }) : publishDate = publishDate ?? DateTime.now();

  @override
  bool operator ==(Object other) {
    if (other is Book2) {
      return title == other.title &&
          publishDate.toString().substring(0, 9) ==
              other.publishDate.toString().substring(0, 9);
    } else {
      return false;
    }
  }

  @override
  int get hashCode => title.hashCode;

  //비교
  @override
  int compareTo(Book2 book2) {
    return publishDate.compareTo(book2.publishDate);
  }

  //다른 Book2의 내용과 같은 book을 만듬.
  Book2 copyWith({String? title, DateTime? publishDate, String? comment}) {
    return Book2(
      title: title ?? this.title,
      comment: comment ?? this.comment,
      publishDate: publishDate ?? this.publishDate,
    );
  }
}
