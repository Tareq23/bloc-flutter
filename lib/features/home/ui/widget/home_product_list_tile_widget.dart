
import 'package:blocpattern/features/home/data_model/home_data_model.dart';
import 'package:flutter/material.dart';

class HomeProductListTileWidget extends StatelessWidget {
  final ProductDataModel product;
  const HomeProductListTileWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(product.imageUrl,),
                    fit: BoxFit.cover
                )
            ),
          ),
          const SizedBox(height: 8,),
          Text(product.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          const SizedBox(height: 4,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${product.price}", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined),),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
