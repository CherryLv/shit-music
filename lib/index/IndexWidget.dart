import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shit_music/index/fragment/IndexFragmentWidget.dart';
import 'package:shit_music/index/fragment/MineFragmentWidget.dart';

class IndexWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return IndexWidgetState();
  }

}

class IndexWidgetState extends State<IndexWidget>{

  var currentIndex = 0;
  final pages = [IndexFragmentWidget(),MineFragmentWidget()];

  void changePage(int index){
    if(index != currentIndex){
      setState(() {
        currentIndex = index;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        child: new Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "首页"),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "我的")
            ],
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index){
              changePage(index);
            },
          ),
          body: pages[currentIndex],
        )
      );
  }

}