class Student {
  final String? id;
  final String name;
  final int marks;

  Student({
    this.id,
    required this.name,
    required this.marks,
  });

  // Create Student from JSON
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id']?.toString(),
      name: json['name'] ?? '',
      marks: json['marks'] ?? 0,
    );
  }

  // Convert Student to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'marks': marks,
    };
  }

  // Convert Student to JSON with ID (for display purposes)
  Map<String, dynamic> toJsonWithId() {
    return {
      'id': id,
      'name': name,
      'marks': marks,
    };
  }

  // Create a copy of Student with updated fields
  Student copyWith({
    String? id,
    String? name,
    int? marks,
  }) {
    return Student(
      id: id ?? this.id,
      name: name ?? this.name,
      marks: marks ?? this.marks,
    );
  }

  // Get grade based on marks
  String get grade {
    if (marks >= 90) return 'A+';
    if (marks >= 80) return 'A';
    if (marks >= 70) return 'B';
    if (marks >= 60) return 'C';
    if (marks >= 50) return 'D';
    return 'F';
  }

  // Get grade color
  String get gradeStatus {
    if (marks >= 70) return 'Excellent';
    if (marks >= 50) return 'Good';
    return 'Needs Improvement';
  }

  // Check if student data is valid
  bool get isValid {
    return name.trim().isNotEmpty && marks >= 0 && marks <= 100;
  }

  @override
  String toString() {
    return 'Student{id: $id, name: $name, marks: $marks}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Student &&
        other.id == id &&
        other.name == name &&
        other.marks == marks;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ marks.hashCode;
}
