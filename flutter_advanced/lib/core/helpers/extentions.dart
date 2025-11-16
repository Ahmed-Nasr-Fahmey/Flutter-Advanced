import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamedAndRemoveUntil(String routeName) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  Future<dynamic> pushNamed(String routeName) {
    return Navigator.of(this).pushNamed(routeName);
  }

  Future<dynamic> pushReplacementNamed(String routeName) {
    return Navigator.of(this).pushReplacementNamed(routeName);
  }

  void pop() {
    return Navigator.of(this).pop();
  }
}