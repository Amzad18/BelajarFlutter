import 'package:flutter/material.dart';
import 'package:ui/firstpage.dart';
import 'package:ui/thirdscreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Gambar Anime"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ), //Appbar//
      
      body: ListView(
        
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              Container(
                child: Image.asset('images/onepiece.jpg',width: 500,height: 500,),
              ),//container//
              
              Container(
                child: Image.asset('images/onepiece2.jpg',width: 500,height: 300,),
              )//container//
            
            ],
          
          ),//Row
          
          SizedBox(height: 500,),
          
          Row(
           
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ElevatedButton(onPressed: () {
                Navigator.pop(context,MaterialPageRoute(builder: (context){
                  return FirstScreen();
                }));//MaterialPageroute
              },
              
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(150, 60))
              ),//buttonstyle
              child: Text("previous page")),
              
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ThirdScreen();
                }));//materialpageroute
              }, 
              
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(150, 60))
              ),//button style
              child:Text("Next Page"))//Elevated button
            
            ],
          ) //Row
        ],
      ), //listview
    ); //scaffold
  }
}