import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class Worker {
  String ?location;
  String ?temp;
  String ?humidity;
  String ?description;

  void getData() async {
    Response response = await get(
      Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=Dhaka&appid=56c36e50f6b699df1bcb304889c87140'),
    );
    Map data = jsonDecode(response.body);
    Map tempData = data['main'];
    double temp = tempData['temp'];
  }


}
