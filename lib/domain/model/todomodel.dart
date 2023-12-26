/// Create a Model of Our Class
/// Create a Constructor for our class
/// Create a Copy of our Class with "copyWith"
/// Save our data in Json Type -> toJson
/// Access our data from that Json -> fromJson

class TodoModel {
  final String title;
  final String subtitle;
  bool isCompleted;

  TodoModel({
    this.title = '',
    this.subtitle = '',
    this.isCompleted = false,
  });
  TodoModel copyWith({
    String? title,
    String? subtitle,
    bool? isCompleted,
  }) =>
      TodoModel(
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        isCompleted: isCompleted ?? this.isCompleted,
      );

  factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        title: json['title'],
        subtitle: json['subtitle'],
        isCompleted: json['isCompleted'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'subtitle': subtitle,
        'isCompleted': isCompleted,
      };
}
