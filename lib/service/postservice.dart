import 'dart:convert';

import 'package:covidapplication/model/postmodel.dart';
import 'package:covidapplication/pages/addpatient.dart';
import 'package:http/http.dart' as http;
class PostApiService{


  Future<dynamic> sendbutton(String name,address,phone,symp,status) async {
    var client = http.Client();
    var apiUrl = Uri.parse("http://localhost:3001/api/patient/add");
    var response = await client.post(apiUrl,
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{

            "name":name,
            "phone":phone,
            "address":address,
            "symptoms":symp,
            "status":status,
        }
        )
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }
    else {
      throw Exception("Failure");
    }
  }






  Future<List<Patient>> getPatient() async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/patient/viewall");
    var response=await client.get(apiUrl);
    if(response.statusCode==200)
    {
      return patientFromJson(response.body);
    }
    else
    {
      return [];
    }
  }

}
