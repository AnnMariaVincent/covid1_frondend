import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
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
      Colors.pinkAccent.withOpacity(.3),
      Colors.lightBlueAccent.withOpacity(.2),
      Colors.lightBlueAccent.withOpacity(.2),
      Colors.purpleAccent.withOpacity(.1),
      Colors.pinkAccent.withOpacity(.3),

    ]
    )
    ),

      padding: EdgeInsets.all(70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(height: 60,width: 250,),
          SizedBox(height: 30,),
          TextField(

            decoration: InputDecoration(
                labelText: "Patient Name",
                hintText: "Enter patient name",
                border: OutlineInputBorder()
            ),
          ),

          SizedBox(height: 20,),
          TextField(


            decoration: InputDecoration(
                labelText: "Phone Number",
                hintText: "Enter Phone Number",
                border: OutlineInputBorder()
            ),
          ),

          SizedBox(height: 20,),
          TextField(


            decoration: InputDecoration(
                labelText: "Address",
                hintText: "Enter Address",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
          TextField(


            decoration: InputDecoration(
                labelText: "Symptom",
                hintText: "Enter symptom",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
          TextField(


            decoration: InputDecoration(
                labelText: "Status",
                hintText: "Enter Status",
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






              },
              child: Text("SUBMIT"),
            ),
          ),

        ],



      ),
    ),
        ),

      ),
    );
  }
}
