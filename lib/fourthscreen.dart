import 'package:flutter/material.dart';
import 'package:ui/fifth.dart';
import 'package:ui/thirdscreen.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: Text("Bahasa Pemprograman"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      
      body: ListView(
       
        children: [

          Row(
           
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
            children: [
              Container(
                child: Image.asset('images/kotlin.jpg',width: 500,height: 500,),
              ),
              
              Container(
                child: Image.asset('images/dart.png',width: 500,height: 300,),
              )
            ],
          
          ),
          SizedBox(height: 500,),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ElevatedButton(onPressed: () {
                Navigator.pop(context,MaterialPageRoute(builder: (context){
                  return ThirdScreen();
                }));
              },
              
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(150, 60))
              ),
               child: Text("previous page")),
              
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FifthScreen();
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