class Task {
  final String id;
  final String title;

  final String? description;
  bool delete;
  bool status;

  final DateTime createdAt;
  DateTime updatedAt;

  Task({
    required this.id,
    required this.title,
    this.description,
    this.delete = false,
    this.status = false,
    required this.createdAt,
    required this.updatedAt,
  });

  void toogleStatus() => delete = !delete;
  void toogleCompleted() => status = !status;
  set setUpdatedAt(DateTime newUpdatedAt) => updatedAt = newUpdatedAt;

  Task copyWith({
    String? id,
    String? title,
    String? description,
    bool? delete,
    bool? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      delete: delete ?? this.delete,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
  
}
