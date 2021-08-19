import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  int count=0;
  SecondPage({required this.count}) ;
  
  @override
  _SecondPageState createState() => _SecondPageState();
}
  
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 300.0,
            child: Text('${widget.count}',style: TextStyle(fontSize: 30.0)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  widget.count++ ;
                });
              }, child: Text('Add')),
              ElevatedButton(onPressed: (){
                setState(() {
                  widget.count-- ;
                });
              }, child: Text('Delete'))
            ],
          )
        ],
      ),
    );
  }
}
