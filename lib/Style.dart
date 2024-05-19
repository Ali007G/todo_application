import 'package:flutter/material.dart';

InputDecoration AppInputDecoration(label) {
  return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      border: OutlineInputBorder(),
      labelText: label
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(23),
      backgroundColor: Colors.amber,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))));
}

AppButtonTextStyle() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 16,
  );

}

SizedBox SizeBox50(child) {
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}
