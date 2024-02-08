import 'package:covidapplication/service/postservice.dart';
import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  String getname="",getaddress="",getphone="",getsymp="",getstatus="";
  TextEditingController name=new TextEditingController();
  TextEditingController address=new TextEditingController();
  TextEditingController phone=new TextEditingController();
  TextEditingController symp=new TextEditingController();
  TextEditingController status=new TextEditingController();
  void sendbutton()async{
    final response=await PostApiService().sendbutton(name.text, address.text, phone.text, symp.text,status.text);
    if (response['status'] == 'sucess') {
      print("sucessfully add");
    }
    else {
      print("error");
    }
  }


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
            controller: name,

            decoration: InputDecoration(
                labelText: "Patient Name",
                hintText: "Enter patient name",
                border: OutlineInputBorder()
            ),
          ),

          SizedBox(height: 20,),
          TextField(
            controller: phone,


            decoration: InputDecoration(
                labelText: "Phone Number",
                hintText: "Enter Phone Number",
                border: OutlineInputBorder()
            ),
          ),

          SizedBox(height: 20,),
          TextField(
            controller: address,


            decoration: InputDecoration(
                labelText: "Address",
                hintText: "Enter Address",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: symp,


            decoration: InputDecoration(
                labelText: "Symptom",
                hintText: "Enter symptom",
                border: OutlineInputBorder()
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            controller: status,


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

            sendbutton();

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
