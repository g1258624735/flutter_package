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
  var arr_1 = [];
  for (var i = 0; i++; i < 5) {
    arr_1[i] = i;
  }
  arr_1.forEach((c)=>c());
}

String demo1() {
  return "nihao";
}

/**
 * =>  匿名函数的写法  只有一个表达式的 简单写法
 */
String demo2() => "nihao";
