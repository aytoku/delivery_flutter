import 'package:flutter/material.dart';

class GlobalStateThrowToBasket{
  final Map<dynamic , dynamic> _data = <dynamic , dynamic>{};

  static GlobalStateThrowToBasket instance = new GlobalStateThrowToBasket._();
  GlobalStateThrowToBasket._();

  set(dynamic key , dynamic value ) => _data[key] = value;
  get(dynamic key) => _data[key];
}