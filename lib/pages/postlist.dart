import 'package:covidapplication/model/postmodel.dart';
import 'package:covidapplication/service/postservice.dart';
import 'package:flutter/material.dart';

class postlist extends StatefulWidget {
  const postlist({super.key});

  @override
  State<postlist> createState() => _postlistState();
}

class _postlistState extends State<postlist> {
  Future<List<Patient>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=PostApiService().getPatient();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,

        ),
        body: FutureBuilder(future: data, builder: (context,sshot){
          if(sshot.hasData && sshot.data!.isNotEmpty)
          {
            return ListView.builder(
                itemCount: sshot.data!.length,
                itemBuilder: (value,index){
                  return Card(
                    child: Column(
                      children: [
                        ListTile(

                          title: Text("PATIENT NAME :" +(sshot.data![index].name.toString()) ),
                          subtitle: Text("ADDRESS :" +(sshot.data![index].address.toString()) + "\n" +"PHONE NUMBER :" + (sshot.data![index].phone.toString())+"\n"+"SYMPTOMS :" + (sshot.data![index].symptoms.toString())+"\n"+"STATUS :" + (sshot.data![index].status.toString())),

                        ),
                      ],
                    ),
                  );

                });
          }
          else
          {
            return Text("Loading");
          }
        }),





      ),
    );
  }
}
