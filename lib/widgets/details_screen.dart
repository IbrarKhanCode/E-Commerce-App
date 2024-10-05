import 'package:firstproject_app/utils/custom_colors.dart';
import 'package:firstproject_app/view/add_to_cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_shopping_cart/model/cart_model.dart';
import 'package:persistent_shopping_cart/persistent_shopping_cart.dart';

import 'item_model.dart';

class DetailsScreen extends StatefulWidget {

  final List images;
  final List text;
  final List firstRate;
  final List secondRate;

  const DetailsScreen({super.key, required this.images, required this.text, required this.firstRate, required this.secondRate});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

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


 int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Hero(
                  tag: "firstHero",
                    child: Image.asset(widget.images[selectedIndex],height: 300,fit: BoxFit.cover,width: MediaQuery.of(context).size.width,)),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: PersistentShoppingCart().showCartItemCountWidget(
                          cartItemCountWidgetBuilder: (itemCount) => IconButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddToCartScreen()));
                          },
                              icon: Badge(
                                label: Text(itemCount.toString()),
                                child: Icon(Icons.shopping_cart,color: Colors.white,size: 30,),
                              )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                widget.text[selectedIndex],
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  widget.firstRate[selectedIndex],
                  style: TextStyle(
                      color: bgcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text('Lorem eeier iweiw iewiwon siiwwie '),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Lorem kaaei wiser siwrr siwr fowri wirwr seiwi ewiwi\n'
              'wriow ewri wri wiwrirr rrier erirrjakazmva iwnazayrs\n '
              'khgfdvv wjfwijo wifwi wfkajawi wiihuf iwfwoohh\n'
                  ' vskwo sifwi sfwwie hjoijuy fdyf iuyuys ',
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 20,),
              PersistentShoppingCart().showAndUpdateCartItemWidget(
                  inCartWidget: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Center(child: Text('Removed from Cart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),))),
                  notInCartWidget: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: bgcolor,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Center(child: Text('Add to Cart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),))),
                  product: PersistentShoppingCartItem(
                      productId: itemList[selectedIndex].productId,
                      productName: itemList[selectedIndex].productName,
                      unitPrice: double.parse(itemList[selectedIndex].productPrice.toString()),
                      quantity: 1)),
              SizedBox(width: 20,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.favorite_border,color: bgcolor,),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              SizedBox(width: 20,),
              Text('More like this',style: TextStyle(color: Colors.grey.shade400),),
              SizedBox(width: 10,),
              Expanded(child: Divider(color: Colors.grey.shade100,))
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: widget.images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 160,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade100),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage(widget.images[index]),
                                  ),
                                  SizedBox(width: 10,),
                                  Icon(Icons.add,color: bgcolor,),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: bgcolor,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Different types",style: TextStyle(color: Colors.white,fontSize: 8),),
                                      Text(widget.text[index],style: TextStyle(color: Colors.white,fontSize: 8),),

                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Container(
                                    height: 20,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: Center(child: Text(widget.secondRate[index],style: TextStyle(color: bgcolor,fontSize: 8),)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ),
          )
        ],
      )),
    );
  }
}
