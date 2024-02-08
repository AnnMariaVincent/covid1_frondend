import 'package:covidapplication/pages/buttons.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
backgroundColor: Colors.pinkAccent,
        ),
      body: SingleChildScrollView(
        child: Container(
            width: 700,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.pink.withOpacity(.2),
                      Colors.white.withOpacity(.2),
                      Colors.cyanAccent.withOpacity(.2),
                      Colors.pink.withOpacity(.2),
                    ]


                )
            ),

            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 90,
                  backgroundColor: Colors.cyanAccent.withOpacity(.0),
                  backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/512/2781/2781395.png"),

                ),

                SizedBox(height: 100, width: 900),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                      labelText: "USER NAME",
                      hintText: "Enter User Name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 60, width: 250),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
                      hintText: "Enter Password",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20,width: 250,),
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black12.withOpacity(.2),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                          )
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>buttons()));


                      },
                      child: Text("LOGIN")),
                ),


              ],
            )
        ),
      ),
      ),

    );
  }
}
