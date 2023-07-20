class User {
  String name;
  int age;
  double height;
  String toJson() {
    return '{name: $name, age: $age, height: $height}';
  }

  User({required this.name, required this.age, required this.height});
}
