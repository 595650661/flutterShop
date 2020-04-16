import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     getHttp();
//     return Scaffold(
//       body: Center(
//         child: Text('首页')
//       )
//     );
//   }

//   // 请求
//   void getHttp() async {
//     try {
//       Response response;
//       response = await Dio().get('https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian?name=大胸美女');
//       return print(response);
//     } catch (e) {
//       return print(e);
//     }
//   }
// }


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController typeController = TextEditingController();

  String showText = '欢迎你来到美好人间高级会所';

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('美好人间'),
         ),
         body: Container(
           child: Column(
             children: <Widget>[
               TextField(
                 controller: typeController,
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.all(10),
                   labelText: '美女类型',
                   helperText: '请输入你喜欢的类型'
                 ),
                 autofocus: false,
               ),
               RaisedButton(
                 onPressed: (){

                 },
                 child: Text('选择完毕'),
               ),
               Text(
                 showText,
                 overflow: TextOverflow.ellipsis,
                 maxLines: 1,
               ),
             ],
           ),
         ),
       ),
    );
  }
}