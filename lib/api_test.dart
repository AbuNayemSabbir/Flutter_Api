import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:log_in_ui/models/Results.dart';

class ApiTest extends StatefulWidget {
  const ApiTest({Key? key}) : super(key: key);

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
   var data;

  Future getAnimal() async {
    var response = await http.get(Uri.parse(
        'https://bracaiapistaging.shebatech.com.bd/api/v1/AnimalCulling'));
    setState(() {
      var decode = json.decode(response.body);
      data = decode["Result"];

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getAnimal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: data==null?0:data.length,
          padding: EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(data[index]['ANIMAL_STATION_NAME'].toString()),
              subtitle: Text(data[index]['ANIMAL_TYPE_NAME'].toString()),
            );
            // return Text(index.toString());
          }),
    );
  }
}
