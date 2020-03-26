import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final _firestore = Firestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RaisedButton(
        onPressed: () {
          _firestore
              .collection('clothes-man')
              .document('vrfnIkPBuLsFem1t64C5')
              .collection('man-teenager')
              .document('R0QVGJOEx4hOZ5j2DcSx')
              .collection('jeans')
              .add({
            'description': 'description2',
            'imageUrl': "non",
            'name': 'new name',
            'price': 200
          });
        },
      ),
    );
  }
}
