import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_clothes_shop/models/product.dart';

class ProductsProvider with ChangeNotifier {
  Firestore _firestore = Firestore.instance;


  Future<List<Product>> fetchData () async{

    List<Product> productList = [];

   QuerySnapshot data = await _firestore.collection('/test-db/man/shoes/brand/adidas').getDocuments();
   // if(data.documents != null){
      for(var product in data.documents){

        print(product.data.values);
        productList.add(Product(name: product.data['name'], size: double.parse(product.data['size'])));
   //   }
    }
    print(productList);

    return productList;
  }

}