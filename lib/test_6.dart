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

//  _timeFunc("2020-04-06 16:20:20.0");
//  String time = handleDate("2020-04-07 2:20:20.0");
//  print(time);

// 测试定时取值
  List<String> money = ["101", "102", "103", "104"];
  List<String> time = ["1分钟", "2分钟", "3分钟", "4分钟"];
  int _scrollIndex = 0; //当前收益轮播到的 条目
  String _preIncome = "0.00"; //正在显示收益
  String _nextIncome = "0.00"; //将要显示的下一个收益
  String _preTime = ""; //当前显示的收益时间
  Timer _timer = Timer.periodic(Duration(seconds: 2), (timer) {
    print("_scrollIndex=" + _scrollIndex.toString());
    if (money.length == 1) {
      //赋值显示的收益
      _preIncome = money[_scrollIndex];
      _nextIncome = money[_scrollIndex];
      _preTime = time[_scrollIndex];
      _scrollIndex++;
    } else if (money.length > 1 && _scrollIndex < money.length - 1) {
      //赋值显示的收益
      _preIncome = money[_scrollIndex];
      _nextIncome = money[_scrollIndex + 1];
      _preTime = time[_scrollIndex];
      _scrollIndex++;
    } else if (money.length > 1 && _scrollIndex == money.length - 1) {
      //赋值显示的收益
      _preIncome = money[_scrollIndex];
      _nextIncome = money[0];
      _preTime = time[_scrollIndex];
      _scrollIndex++;
    } else {
      _preIncome = "0.00";
      _nextIncome = "0.00";
      _scrollIndex = 0;
    }
    print("_preIncome=" + _preIncome + "|_nextIncome=" + _nextIncome);
    print("_preTime=" + _preTime);
    //滑动最后一个重置index
    if (_scrollIndex == money.length) {
      _scrollIndex = 0;
    }
  });
}

//时间差处理
String handleDate(String oldTime) {
  String nowTime =
      new DateTime.now().toString().split('.')[0].replaceAll('-', '/');
  int nowYear = int.parse(nowTime.split(" ")[0].split('/')[0]);
  int nowMonth = int.parse(nowTime.split(" ")[0].split('/')[1]);
  int nowDay = int.parse(nowTime.split(" ")[0].split('/')[2]);
  int nowHour = int.parse(nowTime.split(" ")[1].split(':')[0]);
  int nowMin = int.parse(nowTime.split(" ")[1].split(':')[1]);

  int oldYear = int.parse(oldTime.split(" ")[0].split('-')[0]);
  int oldMonth = int.parse(oldTime.split(" ")[0].split('-')[1]);
  int oldDay = int.parse(oldTime.split(" ")[0].split("-")[2]);
  int oldHour = int.parse(oldTime.split(" ")[1].split(':')[0]);
  int oldMin = int.parse(oldTime.split(" ")[1].split(':')[1]);

  var now = new DateTime(nowYear, nowMonth, nowDay, nowHour, nowMin);
  var old = new DateTime(oldYear, oldMonth, oldDay, oldHour, oldMin);
  var difference = now.difference(old);
  if (difference.inDays > 1) {
    if (difference.inHours - (difference.inDays * 24) - nowHour >= 24) {
      return (difference.inDays + 1).toString() + '天前';
    } else {
      return (difference.inDays).toString() + '天前';
    }
  } else if (difference.inDays == 1) {
    if (difference.inHours - nowHour >= 24) {
      return 2.toString() + '天前';
    } else {
      return '昨天'.toString();
    }
  } else if (difference.inHours >= 1 && difference.inHours < 24) {
    return (difference.inHours).toString() + '小时前';
  } else if (difference.inMinutes > 5 && difference.inMinutes < 60) {
    return (difference.inMinutes).toString() + '分钟前';
  } else if (difference.inMinutes <= 5) {
    return '刚刚';
  }
  return "";
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
