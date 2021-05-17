import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineFragmentWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MineFragmentWidgetState();
  }

}

class MineFragmentWidgetState extends State<MineFragmentWidget>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Text("MineFragmentWidget"),
    );
  }

}