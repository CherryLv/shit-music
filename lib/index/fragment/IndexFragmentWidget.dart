import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexFragmentWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return IndexFragmentWidgetState();
  }

}

class IndexFragmentWidgetState extends State<IndexFragmentWidget>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Text("IndexFragmentWidget"),
    );
  }

}