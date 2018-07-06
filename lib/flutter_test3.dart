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
void test3_1(){

}

abstract class Text {
  void printTest(String text) {
    print(text);
  }
}

abstract class Text2 {
  void printTest(String text) {}
}

//测试接口 实现  dart 是可以直接同过实现类来达到实现接口的功能的
// 实现的接口可以是 抽象类
class Text_3_1 implements Text {
  int a;
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
