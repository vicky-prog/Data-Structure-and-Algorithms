class Employee {
  String name;
  String position;
  int employeeId;

  Employee({required this.name, required this.position, required this.employeeId});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Employee) return false;
    return other.name == name && other.employeeId == employeeId;
  }

  @override
  int get hashCode {
    return name.hashCode ^ employeeId.hashCode;
  }

  @override
  String toString() {
    return '$name ($position)';
  }
}