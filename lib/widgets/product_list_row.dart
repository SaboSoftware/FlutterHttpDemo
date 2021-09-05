import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListRowWidget extends StatelessWidget{
  Product product;

  ProductListRowWidget(this.product);

  @override
  Widget build(BuildContext context) {
    
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
      child: Column(
        children: [
          Container(
            child: Image.network("https://hwp.com.tr/wp-content/uploads/2021/02/laptop.jpg"),
            height: 130.0,
            width: MediaQuery.of(context).size.width/2,
          ),
          Text(product.productName),
          Text(product.unitPrice.toString()+ " TL",style:  TextStyle(fontSize: 18.0, color:  Colors.red),),
          Text("Stok Adeti : "+ product.unitsInStock.toString(), style: TextStyle(color: Colors.blue), )
        ],
      ),  
      ),
    );
  }
  
  
}