import 'package:flutter/material.dart';

class GlobalStateModalTrigger{
  final Map<dynamic , dynamic> _data = <dynamic , dynamic>{};

  static GlobalStateModalTrigger instance = new GlobalStateModalTrigger._();
  GlobalStateModalTrigger._();

  set(dynamic key , dynamic value ) => _data[key] = value;
  get(dynamic key) => _data[key];
}