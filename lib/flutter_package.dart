library flutter_package;

/**
 * dart 基础学习
 */
void main() {
  test1();
  test2();
}

/**
 * dart 基础常量学习
 */
void test1() {
  print("nihao");
  var str1 = "123";
  String str2 = "nihao";
  //三引号 可以多行编写
  var str3 = """ iajap
  nihao
  """;
  //断言 不符合立即终止执行
  assert(str1 == "123");
  //字符串输出
  print("name： $str1");
  print("name" + "haha");
  var text1 = 1;
  print(text1);

  //编译时常量
  const time = 1;
  //变量型常量
  final time1 = new DateTime.now();
}

/**
 * 函数学习 方法学习
 */
void test2() {
  var myString = demo1();
  for (var i = 0; i < 5; i++) {
    print(i);
  }
  int a = 3;
  int b = 2;
  // 取整~/操作符
  print(a ~/ b);
  // num 是 int 和 double 父类
  num c = 1;
  print(c);
  // 对象的不同构造函数的表现形式
  var p1 = new Point(1, 2, 3);
  var p2 = new Point.test([2, 3, 4]);
  print(p1);
  print(p2);
}

String demo1() {
  return "nihao";
}

/**
 * =>  匿名函数的写法  只有一个表达式的 简单写法
 */
String demo2() => "nihao";

class Point {
  //num int he double 的 父类
  num x;

  num y;
  num z;

  // 变量前面加下划线 代表私有属性 类似于 java private
  num _YYYY;

  //下面的构造函数 this.x 是一种简写 相当于 this.x = x; 不需要在下面赋值了
  Point(this.x, this.y, z) {
    this.z = z;
  }

  Point.test2(num a) {
    this.z = a;
    this.x = a;
    this.y = a;
  }

  //另一种形式的构造函数
  Point.test(var list)
      : x = list[0],
        y = list[1],
        z = list[2] {}

  void test1() {}

  String toString() => 'x:$x y:$y z$z';
}

class Point2 extends Point {
  Point2(num x, num y, num z) : super(x, y, z);

  void test2() {
    test1();
  }
}
