library flutter_package;

//这个是异步编程的基础
import 'dart:async';

/**
 * dart 基础学习
 */
void main() {
//  new Text_3_1().printTest("你好测试接口");
//  new Text_3_2().printTest("你好");
}

void test3_1() {}

abstract class Text {
  void printTest(String text) {
    print(text);
  }
}

abstract class Text2 {
  void printTest(String text) {}
}

class Text3 {
  int a = 2;

  void _printTest(String text) {}
}

//测试接口 实现  dart 是可以直接同过实现类来达到实现接口的功能的
// 实现的接口可以是 抽象类
/**
 *  变量 _a 代表是私有  不加下划线 代表共有 在同一个File 里面可以访问
 *  当时在不同File 不可以访问。
 */
class Text_3_1 implements Text {
  int _a;
  int b;

  @override
  void printTest(String text) {
    print(text);
  }
}

class Text_3_2 extends Text {
  @override
  void printTest(String text) {
    super.printTest(text);
  }
}

class Text_3_3 extends Text3 {
  void haha() {
    _printTest("$a");
  }
}
