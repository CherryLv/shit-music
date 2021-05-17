
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shit_music/index/IndexWidget.dart';

class SplashWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashWidgetState();
  }

}

class SplashWidgetState extends State<SplashWidget>{
  var countDownSeconds = 3;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 1000), (timer) {
      countDownSeconds--;
      print("倒计时 $countDownSeconds");
      if(countDownSeconds == 0) {
        _timer.cancel();
       jumpIndex();
      }
      setState(() {

      });
    });
  }

  void jumpIndex(){
    Navigator.pop(context);
    Navigator.push(context,MaterialPageRoute(builder: (context){
      return IndexWidget();
    }));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("取消计时器");
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
   return new Container(
     color: Colors.white,
     child: new Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         new Container(
           color: Colors.white,
           alignment: Alignment.topRight,
           margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
           child: new Container(
             decoration: BoxDecoration(
               color: Colors.white,
                 border:Border.all(
                   color: Colors.grey,
                   style: BorderStyle.solid,
                   width: 1.0
                 ),
               borderRadius: BorderRadius.all(Radius.circular(16)),
             ),
             padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
             margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
             child: new GestureDetector(
               onTap: (){
                 jumpIndex();
               },
               child: new Text('${countDownSeconds}S跳过'
                   ,style: TextStyle(
                       color: Colors.black,
                       fontSize: 14,
                       decoration: TextDecoration.none
                   ),
                )
             ),
           )
         ),
         new Expanded(
           child: new Container(
             color: Colors.white,
             alignment: Alignment.center,
             child: new Text("welcome to \n shit music",
               style: TextStyle(
                 fontSize: 32,
                 decoration: TextDecoration.none,
                 color: Colors.black26,
                 letterSpacing: 1,
               ),),

           )
         )
       ],
     )
   );
  }

}