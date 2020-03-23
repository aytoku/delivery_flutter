import 'package:flutter/material.dart';

class GlobalStateChangeAddress{
  final Map<dynamic , dynamic> _data = <dynamic , dynamic>{};

  static GlobalStateChangeAddress instance = new GlobalStateChangeAddress._();
  GlobalStateChangeAddress._();

  set(dynamic key , dynamic value ) => _data[key] = value;
  get(dynamic key) => _data[key];
}