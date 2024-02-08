import 'package:covidapplication/model/postmodel.dart';
import 'package:http/http.dart' as http;
class PostApiService{
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
