library flutter_package;

/**
 * dart 基础学习
 * 关于dart 的基础学习网站 https://www.jianshu.com/p/9e5f4c81cc7d
 * 总结网站
 *
 */
void main() {
  test5_1();
}

void test5_1() {
  //List 集合 类似于java 的数组
  List list = [1, 2, 3, 4];
  print(list[0]);
  // 特殊for 循环 还有其他for 循环模式和 java 类似
  for (int i in list) {
    switch (i) {
      case 0:
        print(i);
        break;
      case 1:
        print(i);
        break;
    }
  }
}

class Test5Person {
  String name;
}

/**
    为类添加特征：mixins

    mixins 是一种多类层次结构的类的代码重用。

    要使用 mixins ，在 with 关键字后面跟一个或多个 mixin 的名字。下面的例子显示了两个使用mixins的类：
 */
class Maestro extends Test5Person with Musical {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}

abstract class Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}
