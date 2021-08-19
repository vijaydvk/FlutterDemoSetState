import 'package:flutter/material.dart';
import 'package:setstate_app/secondpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
  
class _HomePageState extends State<HomePage> {
  int itemCount = 0 ;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return SecondPage(
              count: itemCount,
            );
          }));
        },
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 300.0,
            child: Text('$itemCount',style: TextStyle(fontSize: 30.0)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  itemCount++ ; 
                });
              }, child: Text('Add')),
              ElevatedButton(onPressed: (){
                setState(() {
                  itemCount-- ; 
                });
              }, child: Text('Delete'))
            ],
          )
        ],
      ),
    );
  }
}