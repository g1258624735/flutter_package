library flutter_package;

//这个是异步编程的基础
import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'dart:convert';

import 'Point.dart';
//import 'dart:html';

/**
 * dart 基础学习
 */
void main() {
//  test2_1();
//  test2_2();
//  test2_3();
//  test2_4(true, true);
  print(test2_6(1, 2));
  var p1 = new Point(1, 2, 3);
  p1.xyxz="1111";

}

void test2_1() {
  HttpServer.bind('127.0.0.1', 4444)
      .then((server) => print('set.isbroadcast'))
      .catchError(print);
}

void test2_2() {
  //文件流的读写 Stream
  String fileName = "C:/Users/chenshaodan/Desktop/1111.txt";
  Stream<List<int>> stream = new File(fileName).openRead();
  stream.transform(utf8.decoder).listen(print);

  //
//  String path = "https://www.dartlang.org/f/dailyNewsDigest.txt";
//  String content =  HttpRequest.getString(path);
//  print("网络获取文本输出----" + content);
}

// 方法的传入值如果是以大括号”{}“ 代表传入值是非必传的。
void test2_3({bool test1, bool test2}) {
  print("$test1---$test2");
}

// 方法的传入值如果是以中括号”[]“ 代表传入值是非必传的。
void test2_4([bool test3, bool test4]) {
  print("$test3---$test4");
  var list = [1, 2, 3, 4];
  list.forEach((e) => print(e));
  //也可以简写 list.forEach(print); 直接传入方法名
}

//嵌套函数 嵌套的函数中可以访问包含他的函数中定义的变量
//函数也可以返回一个函数
void test2_5() {
  var a = "1";
  Function test2_5_1() {
    return (int i) => print("$i" + a);
  }

  //函数可以作为一个变量值返回
  // test2 就是一个函数
  var test2 = test2_5_1();
  test2(4);

  //expr1 ?? expr2  expr1 不为空则输出a 反之输出 b;
  String test3 = a ?? "b";
  print(test3);

  //级联操作符(..)  级联操作可以减少中间变量
//  querySelector('#button') // Get an object.
//    ..text = 'Confirm'   // Use its members.
//    ..classes.add('important')
//    ..onClick.listen((e) => window.alert('Confirmed!'));

// for 循环的另一种形式
  var list1 = [1, 2, 3];
  for (int i in list1) {
    try {
      print(i);
    } catch (e) {
      print(e);
    } on Exception catch (e) {
      print(e);
    }
  }
}

class Text {
  void print(String text) {}
}

/**
 *接口实现
 */
class Text_3 implements Text {
  int a;
  int b;

  @override
  void print(String text) {}
}

int test2_6(int a, int b) => 101;
