import 'package:flutter/material.dart';
import 'package:ui/fourthscreen.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("FrameWork"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      
      body: ListView(
       
        children: [

          Center(
            
            child: Image.asset('images/flutter.png',width: 500,height: 500,),
   
          ),
          
          SizedBox(height: 500,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ElevatedButton(onPressed: () {
                Navigator.pop(context,MaterialPageRoute(builder: (context){
                  return FourthScreen();
                }));
              },
              
              style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(150, 60))
              ),
               child: Text("previous page")),

            ],
          )
        ],
      ),
    );
  }
}