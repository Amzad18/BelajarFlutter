import 'package:flutter/material.dart';
import 'package:ui/secondscreen.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Gambar Pemandangan"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      
      body: ListView(
        
        children: [
          
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset('images/pemandangan.jpg',width: 400,height: 500,),
              ),
              
              Container(
                child:Image.asset('images/pemandangan2.jpg',width: 500,height: 500,),
              )
              
            ],
             
          ),
         
          SizedBox(height: 500),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              SizedBox(width: 16,),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SecondScreen();
                  }));
                },
                
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(150, 60)),
                  
                ),
                child: Text("Next Page"),
              
              ),
            ],
          ),
        ],
      ),
    );
  }
}
