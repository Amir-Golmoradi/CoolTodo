class Todo {
  final String title;

  final String subtitle;

  bool isDone;

  Todo({
    this.title = "",
    this.subtitle = "",
    this.isDone = false,
  });
  Todo copyWith({
    String? title,
    String? subtitle,
    bool? isDone,
  }) =>
      Todo(
          title: title ?? this.title,
          subtitle: subtitle ?? this.subtitle,
          isDone: isDone ?? this.isDone);

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json["title"],
      subtitle: json["subtitle"],
      isDone: json["isDone"],
    );
  }

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "isDone": isDone
      };
}
