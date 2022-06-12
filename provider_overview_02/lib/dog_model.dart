class Dog {
  final String? name;
  final String? bread;
  int age;

  Dog({
    required this.name,
    required this.bread,
    this.age = 1,
  });

  void grow() {
    age++;
    print('dog age: $age');
  }
}
