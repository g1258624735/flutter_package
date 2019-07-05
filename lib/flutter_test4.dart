library flutter_package;

/**
 * dart 基础学习
 */
void main() {
  test4_1();
}

void test4_1() {
  //List 集合 类似于java 的数组
  List list = [1, 2, 3, 4];
  list.add(5);
  print(list[0]);
  // 特殊for 循环 还有其他for 循环模式和 java 类似

  for (int i in list) {
    print(i);
  }
}

/**
 * map 集合
 * 初始化程序无法访问 this 关键字
 * 工厂构造函数不能用 this。
 */
void test4_2() {
//  map 集合 定于方式
  Map<int, String> map = new Map();
  map[0] = "_0";
  map[1] = "_1";
// map 集合的第二种定义方式 类似 json 数组。
  Map<int, String> map_2 = {0: "1", 1: "2"};

  // dart 级联操作符 类似kotlin 的语法 可以返回对象上一级
  //当返回值是void时不能构建级联 级联的..符号不是操作符。它只是Dart语法的一部分。
//   getObject()
//  ..hashCode();
//   ..

//-----------------
  //可选函数 【参数】第二个参数可传可不传
  text4_3("1");
  text4_3("1", "2");

  //您可以将一个函数作为参数传递给另一个函数。
  var list = [1, 2, 3];

  // 把 printElement函数作为一个参数传递进来
  list.forEach(text4_4);
  //  $ S  符号可以是一段代码 不局限于一个
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
  //构造函数不能继承(Constructors aren’t inherited)

  //命名的构造函数(Named constructors)
//  class Point {
//  num x;
//  num y;
//
//  Point(this.x, this.y);
//
//  // 命名构造函数Named constructor
//  Point.fromJson(Map json) {
//  x = json['x'];
//  y = json['y'];
//  }
//  }


}
void text4_4(int i){
  print(i);
}

String text4_3(String text1, [String text2]) {
  if (text2 != null) {
    return "$text1";
  } else {
    return "$text1+$text2";
  }
}

Object getObject() {
  return new Object();
}
