import 'package:flutter/material.dart';
import 'Pages/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container( // 一般最外层都用 containner 进行包装，以便后续扩展
      child: MaterialApp(
        title: '百姓生活',
        debugShowCheckedModeBanner: false, // 去掉右上角DEBUG标识
        theme: ThemeData( // 主题颜色
          primarySwatch: Colors.pink
        ),
        home: IndexPage(),
      ),
    );
  }
}

