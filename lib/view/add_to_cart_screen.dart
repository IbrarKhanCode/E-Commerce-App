import 'package:firstproject_app/utils/custom_colors.dart';
import 'package:firstproject_app/view/home_screen.dart';
import 'package:firstproject_app/widgets/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {

  List<ItemModel> itemList = const [
    ItemModel(productId: "1", productImages: "assets/images/fruits2.png", productName: "Fruits", productPrice: "23"),
    ItemModel(productId: "2", productImages: "assets/images/vegetables2.png", productName: "Vegetables", productPrice: "25"),
    ItemModel(productId: "3", productImages: "assets/images/vase.png", productName: "Vase", productPrice: "26"),
    ItemModel(productId: "4", productImages: "assets/images/pharmacy2.png", productName: "Pharmacy", productPrice: "28"),
    ItemModel(productId: "5", productImages: "assets/images/flowervase.png", productName: "Flower-in-Vase", productPrice: "34"),
    ItemModel(productId: "6", productImages: "assets/images/flowercenterpiece.png", productName: "Flower Centerpiece", productPrice: "36"),
    ItemModel(productId: "7", productImages: "assets/images/fruitbasket.png", productName: "Flower Basket", productPrice: "74"),
    ItemModel(productId: "8", productImages: "assets/images/drinks2.png", productName: "Drinks", productPrice: "45"),
  ];

  var index = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: bgcolor,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            "Cart",
            style:
                TextStyle(color: Colors.white, fontSize: 19, letterSpacing: 1),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 27,
                  )),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Your Order',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Divider(
                  color: Colors.grey.shade200,
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              child: PersistentShoppingCart().showCartItems(
                  cartTileWidget: ({required data}) =>
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                        child: Container(
                          height: 100,
                          width: 370,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: BorderDirectional(
                                  bottom: BorderSide(color: Colors.grey))),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 80,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25),
                                    border: BorderDirectional(
                                      bottom: BorderSide(color: Colors.grey.shade300),
                                      start: BorderSide(color: Colors.grey.shade300),
                                      end: BorderSide(color: Colors.grey.shade300),
                                    )),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: (){
                                        PersistentShoppingCart().incrementCartItemQuantity(data.productId);
                                      },
                                      icon: Icon(Icons.add,color: bgcolor,size: 10,),
                                    ),
                                    Text(data.quantity.toString(),style: TextStyle(fontSize: 10),),
                                    IconButton(
                                      onPressed: (){
                                        PersistentShoppingCart().decrementCartItemQuantity(data.productId);
                                      },
                                      icon: Icon(Icons.minimize,color: bgcolor,size: 10,),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                           itemList[index].productImages,
                                        ))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30, left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      itemList[index].productName,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12),
                                    ),
                                    Text(
                                      itemList[index].productPrice,
                                      style: TextStyle(
                                          color: bgcolor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10,top: 10),
                                    child: IconButton(
                                      onPressed: (){
                                        PersistentShoppingCart().removeFromCart(data.productId);
                                      },
                                      icon: Icon(Icons.delete,color: Colors.grey,),
                                    )
                                  )),
                            ],
                          ),
                        ),
                      ),

                  showEmptyCartMsgWidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Cart is Empty"),
                    ],
                  ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Text('Add more items',style: TextStyle(color: bgcolor,fontSize: 13,fontWeight: FontWeight.w500),))
              ],
            ),
            SizedBox(height: 50,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Column(
               children: [
                 Row(
                   children: [
                     Text('Cart Total',style: TextStyle(color: bgcolor,fontWeight: FontWeight.w500),),
                     Spacer(),
                     Text('\$9.00',style: TextStyle(color: Colors.grey),)
                   ],
                 ),
                 SizedBox(height: 15,),
                 Row(
                   children: [
                     Text('Tax',style: TextStyle(color: bgcolor,fontWeight: FontWeight.w500),),
                     Spacer(),
                     Text('\$5.00',style: TextStyle(color: Colors.grey),)
                   ],
                 ),
                 SizedBox(height: 15,),
                 Row(
                   children: [
                     Text('Delivery',style: TextStyle(color: bgcolor,fontWeight: FontWeight.w500),),
                     Spacer(),
                     Text('\$3.00',style: TextStyle(color: Colors.grey),)
                   ],
                 ),
                 SizedBox(height: 15,),
                 Row(
                   children: [
                     Text('Promo Discount',style: TextStyle(color: bgcolor,fontWeight: FontWeight.w500),),
                     Spacer(),
                     Text('\$0.00',style: TextStyle(color: Colors.grey),)
                   ],
                 ),
                 SizedBox(height: 10,),
                 Divider(color: Colors.grey.shade300,),
                 SizedBox(height: 10,),
                 Row(
                   children: [
                     Text('Subtotal',style: TextStyle(color: bgcolor,fontWeight: FontWeight.w500),),
                     Spacer(),
                     Text('\$15.00',style: TextStyle(color: Colors.black),)
                   ],
                 ),
               ],
             ),
           ),
            Divider(color: Colors.grey.shade300,thickness: 2,),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 360,
              decoration: BoxDecoration(
                color: bgcolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text('Proceed to Checkout',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)),
            )
          ],
        ));
  }
}
