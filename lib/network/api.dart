import 'dart:convert';

import 'package:flutter_webservice/model/author.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';


class API {
  //static String _BASE_URL = 'https://flutterducat.000webhostapp.com/api.php';

  static Future<Author> createAuthor(String name) async {
    final Response response = await post('https://flutterducat.000webhostapp.com/api.php',
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        },
        body: jsonEncode(<String, String>{"name": name}));
    if (response.statusCode == 200) {
      var msg=response.body;
      Fluttertoast.showToast(
          msg: msg.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1
      );
      print(response.body);
      return Author.fromJson(json.decode(response.body));
    } else {

      Fluttertoast.showToast(
          msg: 'Error Occured',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1
      );
      print('Error');
      throw Exception("Can't load author");
    }
  }
}
