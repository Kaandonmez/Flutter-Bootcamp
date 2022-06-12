import 'dart:convert';

class Test {
  int a;
  double b;
  Test({
    required this.a,
    required this.b,
  });

  Test copyWith({
    int? a,
    double? b,
  }) {
    return Test(
      a: a ?? this.a,
      b: b ?? this.b,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'a': a,
      'b': b,
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      a: map['a']?.toInt() ?? 0,
      b: map['b']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Test.fromJson(String source) => Test.fromMap(json.decode(source));

  @override
  String toString() => 'Test(a: $a, b: $b)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Test && other.a == a && other.b == b;
  }

  @override
  int get hashCode => a.hashCode ^ b.hashCode;
}

void main() {
  //print("hello");
  var x = Test(a: 5, b: 6.0);

  print("${x.hashCode}");
}
