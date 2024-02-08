import 'package:covidapplication/pages/addpatient.dart';
import 'package:covidapplication/pages/postlist.dart';
import 'package:covidapplication/pages/searchpatient.dart';
import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,


        ),
        body: SingleChildScrollView(
          child: Container(

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
                children: [
                  SizedBox(height: 350, width: 850),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));


                        },
                        child: Text("ADD PATIENT")),
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

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));



                        },
                        child: Text("SEARCH PATIENT")),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>postlist()));


                        },
                        child: Text("VIEW PATIENTS")),
                  ),


                ],
              )
          ),
        ),




      ),

    );
  }
}


