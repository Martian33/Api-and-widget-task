class Modeling {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Modeling({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Modeling.fromJson(Map<String, dynamic> json) {
    return Modeling(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}
