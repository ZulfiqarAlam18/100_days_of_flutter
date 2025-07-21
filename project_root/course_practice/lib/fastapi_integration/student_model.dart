class Student {
  final int id;
  final String name;
  final String rollNumber;
  final int year;

  Student({required this.id, required this.name, required this.rollNumber, required this.year});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      rollNumber: json['roll_number'],
      year: json['year'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'roll_number': rollNumber,
      'year': year,
    };
  }
}
