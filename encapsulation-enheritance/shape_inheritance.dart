class Shape {
  double d1;
  double d2;

  Shape(this.d1, this.d2);
}

class Rectangle extends Shape {
  Rectangle(double width, double height) : super(width, height);

  double area() {
    return d1 * d2;
  }
}

class Triangle extends Shape {
  Triangle(double base, double height) : super(base, height);

  double area() {
    return 0.5 * d1 * d2;
  }
}
