import 'dart:convert';
import 'package:http/http.dart';

// class Fetch {
//   String location;
//   String locality;
//   String type;
//   String bed;
//   String toilet;
//   String estate;
//   String bath;
//   String park;
//   String year;

//   Fetch(
//       {this.location,
//       this.locality,
//       this.type,
//       this.bed,
//       this.toilet,
//       this.estate,
//       this.bath,
//       this.park,
//       this.year});

//   factory Fetch.fromJson(Map<String, dynamic> parsedjson) => Fetch(
//       location: parsedjson['Location'],
//       locality: parsedjson['Locality'],
//       type: parsedjson['Type'],
//       bed: parsedjson['Bedroom'],
//       toilet: parsedjson['Toilet'],
//       estate: parsedjson['Estate'],
//       bath: parsedjson['Bathroom'],
//       park: parsedjson['Parking'],
//       year: parsedjson['Year']);

//   Map<String, dynamic> toJson() => {
//         "Location" : this.location,
//         "Locality" : this.locality,
//         "Type" : this.type,
//         "Bedroom" : this.bed,
//         "Toilet" : this.toilet,
//         "Estate" : this.estate,
//         "Bathroom" : this.bath,
//         "Parking" : this.park,
//         "Year" : this.year
//       };
// }
// Future<Fetch> fetchData(
//   String location,
//   String locality,
//   String type,
//   String bed,
//   String toilet,
//   String estate,
//   String bath,
//   String park,
//   String year,
// ) async {
//   final url = 'https://housing-priceprediction.herokuapp.com/predict';
//   final headers = {
//     'Accept': 'application/json',
//     'Content-Type': 'application/json',
//     "Access-Control-Allow-Origin": "*", // Required for CORS support to work
//     "Access-Control-Allow-Credentials":
//         true, // Required for cookies, authorization headers with HTTPS
//     "Access-Control-Allow-Headers":
//         "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token",
//     "Access-Control-Allow-Methods": "POST, OPTIONS"
//   };

//   final String body = jsonEncode( <String, String> {
//     "Location": location,
//     "Locality": locality,
//     "Type": type,
//     "Bedroom": bed,
//     "Toilet": bath,
//     "Estate": estate,
//     "Bathroom": bath,
//     "Parking": park,
//     "Year": year
//   });
//   //String jsonBody = jsonEncode(body);

//   Response response;
//   response = await post(
//     url,
//     headers: headers,
//     body: body,
//   );

//   if (response.statusCode == 200) {
//     return Fetch.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('Failed to connect.');
//   }
// }


Future fetchData(
    String location,
    String locality,
    String type,
    int bed,
    int toilet,
    String estate,
    int bath,
    int park,
    int year,
    ) async {

    final url = 'https://housing-priceprediction.herokuapp.com/predict';
    final header = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    } ;
    final head = json.encode(header);

    final Map<String, dynamic> body ={
      "Location": location,
      "Locality": locality,
      "Type": type,
      "Bedroom": bed,
      "Toilet": bath,
      "Estate": estate,
      "Bathroom": bath,
      "Parking": park,
      "Year": year
    };
    var jsonBody = jsonEncode(body);

    Response response;
    response = await post(
      url,
      headers: header,
      body: jsonBody,
    );
    return response;



}