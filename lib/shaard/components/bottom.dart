import 'package:flutter/material.dart';

Widget ButtomStyleOne({
  Color color = const Color(0xFF0148A4),
  @required String text,
}) {
  return Material(
    borderRadius: BorderRadius.circular(100),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 7,
    shadowColor: const Color(0xFF0148A4),
    child: Container(
      height: 50,
      width: 200,
      color: color,
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      )),
    ),
  );
}

Widget ButtomStyleTwo(
    {@required Color bgColor, @required String text, @required IconData icon}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Material(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      borderRadius: BorderRadius.circular(10),
      elevation: 3,
      child: Container(
        height: 40,
        width: 130,
        decoration: BoxDecoration(color: bgColor),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20, end: 10),
              child: Icon(
                icon,
                size: 15,
                color: Colors.white,
              ),
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    ),
  );
}
