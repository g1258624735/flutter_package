import 'dart:async';

void main() {
//  var test = Test6();
//  print("1111");
//  Test6().getString().then((data) {
//    print(data);
//  });
//  Test6().getString3();
//  print("2222");
//  test.getTest1();

  _timeFunc("2020-04-06 16:20:20.0");
}

void _timeFunc(time) {
  DateTime _diffDate = DateTime.tryParse(time);
  var _newDate = DateTime.now();
  var _surplus = _diffDate.difference(_newDate);
  int _day = (_surplus.inSeconds ~/ 3600) ~/ 24;
  int hour = (_surplus.inSeconds ~/ 3600) % 24;
  int minute = _surplus.inSeconds % 3600 ~/ 60;
  int second = _surplus.inSeconds % 60;
  // formatTime(hour) + ":" + formatTime(minute) + ":" + formatTime(second);
  var _day1 = _day.toString() ?? '0';
  var _hour1 = hour.toString() ?? '0';
  var _minute1 = minute.toString() ?? '0';
  var _text = _newDate.hour.toString()+':' + _newDate.minute.toString();
  print(_day1.toString() + "|" + _hour1.toString() + "|" + _minute1.toString() + "");
  print(_surplus.inDays.toString() + "|" + _surplus.inHours.toString() + "|" + _surplus.inMinutes.toString() + "");
  print(_text.toString());
}

///测试 await== 等待耗时操作   Future 代表修饰此方法是耗时方法
class Test6 {
  String getTest1() {
    return "test1";
  }

  Future getString() async {
    String str = "123";
    return await getString2(str);
  }

  Future getString2(String ss) async {
    String str = "${ss}456";
    return str;
  }

  Future getString3() async {
    // await 代表在此处阻塞 待任务之星完成在进行下一步操作
    await Future.delayed(Duration(seconds: 3));
    String str = "3333";
    print(str);
  }
}
