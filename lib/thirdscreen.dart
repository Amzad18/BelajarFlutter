import 'package:flutter/material.dart';
import 'package:ui/fourthscreen.dart';
import 'package:ui/secondscreen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Text("Gambar Game"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      
      body: ListView(
        
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              
              Container(
                child: Image.asset('images/game.jpg',width: 500,height: 500,),
              ),
              
              Container(
                child: Image.asset('images/game2.jpg',width: 500,height: 300,),
              )
            ],
          
          ),
          
          SizedBox(height: 500,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ElevatedButton(onPressed: () {
                Navigator.pop(context,MaterialPageRoute(builder: (context){
                  return SecondScreen();
                }));
              },
              
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(150, 60))
              ),
              child: Text("previous page")),
              
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FourthScreen();
                }));
              }, 
             
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(150, 60))
              ),
              
              child:Text("Next Page"))
            ],
          )
        ],
      ),
    );
  }
}