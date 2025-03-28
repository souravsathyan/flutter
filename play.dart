void add(a, b) {
  print(a + b);
}

void minus({c, d}) {
  print('hi');
}

void main() {
  add(1, 2);
  // minus(c: 2, d: 1);
  minus(d: 2);
}
