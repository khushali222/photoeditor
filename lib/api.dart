import 'dart:convert';

import 'package:http/http.dart' as http;
// class Api{
//   static const apikey = "NaYTD6zvvyPQSPkPHbGTGg6Z";
//   static var baseurl = Uri.parse("https://api.remove.bg/v1.0/removebg");
//
//   static removebg(String imgpath)async{
//   var req = http.MultipartRequest("Post",baseurl);
//   req.headers.addAll({"X-API-KEY":apikey});
//   req.files.add( await http.MultipartFile.fromPath("image_file", imgpath));
//   final res = await req.send();
//   if(res.statusCode == 200){
//   http.Response img = await http.Response.fromStream(res);
//   return img.bodyBytes;
//   }else{
//     print("failed to fetch the data");
//     return null;
//   }
//   }
// }

import 'dart:convert';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

import 'model.dart';

class Api {
  static Future<Uint8List?> removeBackground(
      RemoveBackgroundRequest request) async {
    final apiUrl = 'https://bgremove.dohost.in/remove-bg';

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "image_url":
          "https://4.img-dpreview.com/files/p/TS600x600~sample_galleries/3002635523/4971879462.jpg"
        }),
      );
      print(response.body);

      /*if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        // Assuming the response contains the image data as a base64 string
        String imageData = responseData['image_data'];
        return base64.decode(imageData);
      } else {
        throw Exception('Failed to remove background: ${response.statusCode}');
      }*/
    } catch (e) {
      throw Exception('Failed to remove background: $e');
    }
  }
}

