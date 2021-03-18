import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var elementData;

Future<Widget> loadJsonDataThenReturnWidget(Widget widget) async {
  String rawJson = await rootBundle.loadString('lib/elements.json');
  elementData = json.decode(rawJson);
  return Future.value(widget);
}