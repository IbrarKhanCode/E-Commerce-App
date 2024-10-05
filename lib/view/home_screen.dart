import 'package:firstproject_app/testing_screen.dart';
import 'package:firstproject_app/utils/custom_colors.dart';
import 'package:firstproject_app/view/add_to_cart_screen.dart';
import 'package:firstproject_app/view/get_started.dart';
import 'package:firstproject_app/view/log_in.dart';
import 'package:firstproject_app/view/sign_up.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List maincatg = [
    "Order Grocery",
    "Order Flowers",
    "Order Grocery",
    "Order Flowers"
  ];
  List subtitle = [
    "Get grocery delivered to you at your doorstep,",
        "Get fresh flowers delivered to your doorstep",
    "Get grocery delivered to you at your doorstep,",
    "Get fresh flowers delivered to your doorstep",
  ];
  List image = [
    "assets/images/Union 3.png",
        "assets/images/Union 5.png",
    "assets/images/Union 3.png",
    "assets/images/Union 5.png",
  ];

  List fruitImage = [

    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
   ];
  List vegetableImage = [

    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    ];
  List vaseImage = [

    "assets/images/vase.png",
    "assets/images/vase.png",
    "assets/images/vase.png",
    "assets/images/vase.png",
    "assets/images/vase.png",
    "assets/images/vase.png",
    "assets/images/vase.png",
    "assets/images/vase.png",
  ];
  List pharmacyImage = [

    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    ];
  List flowerVaseImage = [

    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
];
  List flowerCenterpieceImage = [

    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    ];
  List fruitBasketImage = [

    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
   ];
  List drinksImage = [
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",

  ];



  List categoriesImages = [
    "assets/images/fruits2.png",
    "assets/images/vegetables2.png",
    "assets/images/vase.png",
    "assets/images/pharmacy2.png",
    "assets/images/flowervase.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/fruitbasket.png",
    "assets/images/drinks2.png",
  ];


  List fruitsText = [
    "Fruits",
    "Fruits",
    "Fruits",
    "Fruits",
    "Fruits",
    "Fruits",
    "Fruits",
    "Fruits",

    ];
  List vegetableText = [
    "Vegetables",
    "Vegetables",
    "Vegetables",
    "Vegetables",
    "Vegetables",
    "Vegetables",
    "Vegetables",
    "Vegetables",

    ];
  List vaseText = [
    "Vase",
    "Vase",
    "Vase",
    "Vase",
    "Vase",
    "Vase",
    "Vase",
    "Vase",

    ];
  List pharmacyText = [
    "Pharmacy",
    "Pharmacy",
    "Pharmacy",
    "Pharmacy",
    "Pharmacy",
    "Pharmacy",
    "Pharmacy",
    "Pharmacy",

   ];
  List flowerVaseText = [
    "Flower-in-Vase",
    "Flower-in-Vase",
    "Flower-in-Vase",
    "Flower-in-Vase",
    "Flower-in-Vase",
    "Flower-in-Vase",
    "Flower-in-Vase",
    "Flower-in-Vase",

    ];
  List flowerCenterpieceText = [
    "Flower-centerpiece",
    "Flower-centerpiece",
    "Flower-centerpiece",
    "Flower-centerpiece",
    "Flower-centerpiece",
    "Flower-centerpiece",
    "Flower-centerpiece",
    "Flower-centerpiece",

   ];
  List fruitBasketText = [
    "Fruits-basket",
    "Fruits-basket",
    "Fruits-basket",
    "Fruits-basket",
    "Fruits-basket",
    "Fruits-basket",
    "Fruits-basket",
    "Fruits-basket",

   ];
  List drinksText = [
    "Drinks",
    "Drinks",
    "Drinks",
    "Drinks",
    "Drinks",
    "Drinks",
    "Drinks",
    "Drinks",

  ];


  List searchFruit = [ "Fruits",
   ];
  List searchVegetable = [
    "Vegetables",
    ];
  List searchVase = [
    "Vase",
];
  List searchPharmacy = [
    "Pharmacy",
];
  List searchFlowerVase = [
    "Flower Vase",
    ];
  List searchFlowerCenterpiece = [
    "Flower Centerpiece",
    ];
  List searchFruitBasket = [
    "Fruit Basket",
    ];
  List searchDrinks = [
    "Drinks",];


  List categoriesText = [
    "Fruits",
    "Vegetables",
    "Vase",
    "Pharmacy",
    "Flower-in-Vase",
    "Flower-centerpiece",
    "Fruits-basket",
    "Drinks",
  ];

  List resultFruit = [ "10 Results For Fruits",
];
  List resultVegetable = [
    "10 Results For Vegetables",
    ];
  List resultVase = [
    "10 Results For Vase",
    ];
  List resultPharmacy = [
    "10 Results For Medicines",
    ];
  List resultFlowerVase = [
    "10 Results For Flower",
];
  List resultFlowerCenterpiece = [
    "10 Results For Flower Centerpiece",
   ];
  List resultFlowerBasket = [
    "10 Results For Fruit Basket",
];
  List resultDrinks = [
    "10 Results For Drinks",];



  List priceFruit = [
    "\$56",
    "\$56",
    "\$56",
    "\$56",
    "\$56",
    "\$56",
    "\$56",
    "\$56",

    ];
  List priceVegetable = [
    "\$78",
    "\$78",
    "\$78",
    "\$78",
    "\$78",
    "\$78",
    "\$78",
    "\$78",

    ];
  List priceVase = [
    "\$99",
    "\$99",
    "\$99",
    "\$99",
    "\$99",
    "\$99",
    "\$99",
    "\$99",

    ];
  List pricePharmacy = [
    "\$40",
    "\$40",
    "\$40",
    "\$40",
    "\$40",
    "\$40",
    "\$40",
    "\$40",

];
  List priceFlowerVase = [
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",
    "\$120",

    ];
  List priceFlowerCenterpiece = [
    "\$150",
    "\$150",
    "\$150",
    "\$150",
    "\$150",
    "\$150",
    "\$150",
    "\$150",

   ];
  List priceBasket = [
    "\$200",
    "\$200",
    "\$200",
    "\$200",
    "\$200",
    "\$200",
    "\$200",
    "\$200",

   ];
  List priceDrinks = [
    "\$30",
    "\$30",
    "\$30",
    "\$30",
    "\$30",
    "\$30",
    "\$30",
    "\$30",

  ];
  List<String> popList = ["Login","Sign up","Log out",];

  int Selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //top container
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: bgcolor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [

                      PopupMenuButton(
                          color: bgcolor,
                          icon: Icon(Icons.menu, color: Colors.white,  ),
                          onSelected: (value){
                            if(value=="Login"){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                            }else if(value=="Sign up"){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                            }
                            else{
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>GetStartedScreen()));
                            }
                          },
                          itemBuilder: (context){
                            return popList.map((e) =>PopupMenuItem(

                                value: e,
                                child: Text(e,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),))).toList();

                          }
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Edgware Road',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            'London',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddToCartScreen()));
                              },
                              child: Badge(
                                  label: Text('0'),
                                  largeSize: 15,
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: 30,
                                  )),
                            ),
                            SizedBox(width: 20,),
                            Badge(
                                smallSize: 12,
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 30,
                                )),

                          ],
                        ),
                      )


                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      cursorColor: bgcolor,
                      focusNode: FocusNode(descendantsAreFocusable: false),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Container(
              height: 250,
              child: ListView.builder(
                  itemCount: maincatg.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: InkWell(
                        onTap: (){
                         setState(() {
                           Selectedindex = index;
                         });
                        },
                        child: Container(
                          height: 250,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Selectedindex == index ? bgcolor : Colors.white ,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20, left: 15),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.shopping_cart_checkout_outlined,
                                      color: Selectedindex == index ? Colors.white : Colors.grey ,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      maincatg[index],
                                      style: TextStyle(
                                          color: Selectedindex == index? Colors.white : Colors.grey,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 7),
                                child: Text(
                                  subtitle[index],
                                  style:
                                      TextStyle(color: Selectedindex == index? Colors.white:Colors.grey, fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                image[index],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(width: 14,),
                Text(
                  'Categories',
                  style: TextStyle(color: Colors.grey.shade400,fontSize: 13),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesText.length,
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        if (index==0){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TestingScreen(names: fruitsText,images: fruitImage,searchText: searchFruit,resultText: resultFruit,price: priceFruit,indexno: index,)));
                        }
                        if (index==1){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>TestingScreen(names: vegetableText,images: vegetableImage,searchText: searchVegetable,resultText: resultVegetable,price: priceVegetable,indexno: index,)));
                        }
                        if (index==2){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>TestingScreen(names: vaseText,images: vaseImage,searchText: searchVase,resultText: resultVase,price: priceVase,indexno: index,)));
                        }
                        if (index==3){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>TestingScreen(names: pharmacyText,images: pharmacyImage,searchText: searchPharmacy,resultText: resultPharmacy,price: pricePharmacy,indexno: index,)));
                        }
                        if (index==4){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>TestingScreen(names: flowerVaseText,images: flowerVaseImage,searchText: searchFlowerVase,resultText: resultFlowerVase,price: priceFlowerVase,indexno: index,)));
                        }
                        if (index==5){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>TestingScreen(names: flowerCenterpieceText,images: flowerCenterpieceImage,searchText: searchFlowerCenterpiece,resultText: resultFlowerCenterpiece,price: priceFlowerCenterpiece,indexno: index,)));
                        }
                        if (index==6){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>TestingScreen(names: fruitBasketText,images: fruitBasketImage,searchText: searchFruitBasket,resultText: resultFlowerBasket,price: priceBasket,indexno: index,)));
                        }
                        if (index==7){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>TestingScreen(names: drinksText,images: drinksImage,searchText: searchDrinks,resultText: resultDrinks,price: priceDrinks,indexno: index,)));
                        }

                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(categoriesImages[index]),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(categoriesText[index],style: TextStyle(color: Colors.grey,fontSize: 11),),
                        ],
                      ),
                    );
                  }),
            ),

            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('Popular',style: TextStyle(color: Colors.grey.shade400,fontSize: 13),),
                SizedBox(width: 10,),
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 170,
              child: ListView.builder(
                itemCount: 15,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Container(
                            height: 163,
                            width: 140,
                            decoration: BoxDecoration(
                              border: Border.symmetric(vertical: BorderSide(width: 1,color: Colors.grey.shade200)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 5,),
                                    Image.asset('assets/images/apple.png'),
                                    Icon(Icons.add,color: bgcolor,),
                                  ],
                                ),

                                SizedBox(height: 10,),
                                Container(
                                  height: 40,
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: bgcolor,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text('Red Apple',style: TextStyle(color: Colors.white,fontSize: 10),),
                                      ),
                                      SizedBox(width: 30,),
                                      Container(
                                        height: 20,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(child: Text('E1',style: TextStyle(color: bgcolor,fontSize: 10),)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),

          ],
        ),
      ),
    );
  }
}


