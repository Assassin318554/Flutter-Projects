class Task {
  final String id;
  final String title;

  final String? description;
  bool favourite;
  bool status;

  final DateTime createdAt;
  DateTime updatedAt;

  Task({
    required this.id,
    required this.title,
    this.description,
    this.favourite = false,
    this.status = false,
    required this.createdAt,
    required this.updatedAt,
  });

  void toogleStatus() => favourite = !favourite;
  void toogleCompleted() => status = !status;
  set setUpdatedAt(DateTime newUpdatedAt) => updatedAt = newUpdatedAt;
}
