void main() {
  Employee e = Employee(name: "Thịnh", hour: 50, salaryPerHour: 350000);
  print(e.gross());
  print(e.net());
}

class Employee {
  final String name;
  final double hour;
  final double salaryPerHour;

  Employee({
    required this.name,
    required this.hour,
    required this.salaryPerHour,
  });

  double gross() {
    final totalSalary = hour * salaryPerHour;
    if (this.hour > 40) {
      final bonus = totalSalary * 0.2;
      return totalSalary + bonus;
    }
    return totalSalary;
  }

  double net() {
    final grossSalary = gross();
    if (grossSalary > 10000000) {
      final tax = (grossSalary * 0.1);
      print(tax);
      return grossSalary - tax;
    } else if (grossSalary >= 7000000) {
      final tax = (grossSalary * 0.05);
      print(tax);
      return grossSalary - tax;
    } else {
      return grossSalary;
    }
  }
}
