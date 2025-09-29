class Todo {
  final String label;
  final String description;

  const Todo({required this.label, required this.description});

  Todo copyWith({String? label, String? description}) => Todo(
      label: label ?? this.label,
      description: description ?? this.description,
  );
}
