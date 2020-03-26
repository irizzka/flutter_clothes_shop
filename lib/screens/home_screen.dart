import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clothes_shop/models/product.dart';
import 'package:flutter_clothes_shop/providers/products_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  final _firestore = Firestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    /*  body: RaisedButton(
        onPressed: () {
          _firestore.collection('/test-db/man/shoes/brand/adidas').add({
            'name' : 'Neo City Racer',
            'size' : 42.5
          });
        },
      ),*/
    appBar: AppBar(
      title: Text('Shop'),
    ),
    body: FutureBuilder(
        future: Provider.of<ProductsProvider>(context).fetchData(),
      builder: (BuildContext context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].size.toString()),
                  );
                }
            );
          }else {
            return Center(child: CircularProgressIndicator());
          }
      },
    ),
    );
  }
}
