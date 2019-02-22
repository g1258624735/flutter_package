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
  print(list[0]);
  // 特殊for 循环 还有其他for 循环模式和 java 类似

  for (int i in list) {
    print(i);
  }
}

/**
 * map 集合
 */
void test4_2() {
  Map<int, String> map = new Map();
  map[0] = "_0";
  map[1] = "_1";

  Map<int, String> map_2 = {0: "1"};
}
