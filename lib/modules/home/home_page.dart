import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:convert';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _search;
  int _offset = 0;

  Future<Map> _getGifs() async {
    http.Response response;

    if (_search == null) {
      var url =
          "https://api.giphy.com/v1/gifs/trending?api_key=9OtDbuZCWsE64PsR99ymLwVs1WPFpYt5&limit=20&rating=g";
      var uri = Uri.parse(url);
      response = await http.get(uri);
    } else {
      var url =
          "https://api.giphy.com/v1/gifs/search?api_key=9OtDbuZCWsE64PsR99ymLwVs1WPFpYt5&q=$_search&limit=20&offset=$_offset&rating=g";
      var uri = Uri.parse(url);
      response = await http.get(uri);
    }

    return json.decode(response!.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
