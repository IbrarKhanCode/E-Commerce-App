import 'package:firstproject_app/utils/custom_colors.dart';
import 'package:firstproject_app/view/add_to_cart_screen.dart';
import 'package:firstproject_app/widgets/details_screen.dart';
import 'package:flutter/material.dart';


class TestingScreen extends StatefulWidget {

  final List names;
  final List images;
  final List searchText;
  final List resultText;
  final List price;
  final int indexno;
  const TestingScreen({super.key, required this.names, required this.images, required this.searchText, required this.resultText, required this.price, required this.indexno});

  @override
  State<TestingScreen> createState() => _TestingScreenState();
}

class _TestingScreenState extends State<TestingScreen> {

  List<String> bottomImages1 = [
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
    "assets/images/fruits2.png",
  ];
  List<String> bottomImages2 = [
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
    "assets/images/vegetables2.png",
  ];
  List<String> bottomImages3 = [
    "assets/images/vase.png",
    "assets/images/vase.png",
    "assets/images/vase.png",
    "assets/images/vase.png",
    "assets/images/vase.png",
  ];
  List<String> bottomImages4 = [
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
    "assets/images/pharmacy2.png",
  ];
  List<String> bottomImages5 = [
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
    "assets/images/flowervase.png",
  ];
  List<String> bottomImages6 = [
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
    "assets/images/flowercenterpiece.png",
  ];
  List<String> bottomImages7 = [
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
    "assets/images/fruitbasket.png",
  ];
  List<String> bottomImages8 = [
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
    "assets/images/drinks2.png",
  ];

  List<String> text1 = [
    "Fruits",
    "Fruits",
    "Fruits",
    "Fruits",
    "Fruits",
  ];
  List<String> text2 = [
    "Vegetables",
    "Vegetables",
    "Vegetables",
    "Vegetables",
    "Vegetables",
  ];
  List<String> text3 = [
    "Vase",
    "Vase",
    "Vase",
    "Vase",
    "Vase",
  ];
  List<String> text4 = [
    "Pharmacy",
    "Pharmacy",
    "Pharmacy",
    "Pharmacy",
    "Pharmacy",
  ];
  List<String> text5 = [
    "White Flower Vase",
    "White Flower Vase",
    "White Flower Vase",
    "White Flower Vase",
    "White Flower Vase",
  ];
  List<String> text6 = [
    "Flower Centerpiece",
    "Flower Centerpiece",
    "Flower Centerpiece",
    "Flower Centerpiece",
    "Flower Centerpiece",
  ];
  List<String> text7 = [
    "Flower Basket",
    "Flower Basket",
    "Flower Basket",
    "Flower Basket",
    "Flower Basket",
  ];
  List<String> text8 = [
    "Drinks",
    "Drinks",
    "Drinks",
    "Drinks",
    "Drinks",
  ];

  List<String> firstRate1 = ["\$23",];
  List<String> firstRate2 = ["\$25",];
  List<String> firstRate3 = ["\$26",];
  List<String> firstRate4 = ["\$28",];
  List<String> firstRate5 = ["\$34",];
  List<String> firstRate6 = ["\$36",];
  List<String> firstRate7 = ["\$74",];
  List<String> firstRate8 = ["\$45",];

  List<String> secondRate1 = [
    "\$20",
    "\$20",
    "\$20",
    "\$20",
    "\$20",
  ];
  List<String> secondRate2 = [
    "\$22",
    "\$22",
    "\$22",
    "\$22",
    "\$22",
  ];
  List<String> secondRate3 = [
    "\$25",
    "\$25",
    "\$25",
    "\$25",
    "\$25",
  ];
  List<String> secondRate4 = [
    "\$28",
    "\$28",
    "\$28",
    "\$28",
    "\$28",
  ];
  List<String> secondRate5 = [
    "\$30",
    "\$30",
    "\$30",
    "\$30",
    "\$30",
  ];
  List<String> secondRate6 = [
    "\$33",
    "\$33",
    "\$33",
    "\$33",
    "\$33",
  ];
  List<String> secondRate7 = [
    "\$35",
    "\$35",
    "\$35",
    "\$35",
    "\$35",
  ];
  List<String> secondRate8 = [
    "\$40",
    "\$40",
    "\$40",
    "\$40",
    "\$40",
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color: bgcolor,

              child: SafeArea(
                child: Row(

                  children: [
                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        cursorColor: bgcolor,
                        decoration: InputDecoration(
                            hintText: widget.searchText[index],
                            hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Colors.grey.shade500),
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.search,color: Colors.grey,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.deepPurpleAccent,
                                    width: 3
                                ),
                                borderRadius: BorderRadius.circular(50)

                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddToCartScreen()));
                        },
                        child: Badge(
                            smallSize: 15,
                            largeSize: 15,
                            label: Text('0'),
                            child: Icon(Icons.shopping_cart,color: Colors.white,size: 30,)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 15,),
                Text(widget.resultText[index],style: TextStyle(color: Colors.grey,fontSize: 12),),
                SizedBox(width: 20,),
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
            Hero(
                tag: "firstHero",
                child:  Container(
              height: 660,
              child: GridView.builder(
                  itemCount: widget.names.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: GestureDetector(
                        onTap: (){
                          if (widget.indexno==0){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(images: bottomImages1,text: text1,firstRate: firstRate1,secondRate: secondRate1,)));}
                          if (widget.indexno==1){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(images: bottomImages2,text: text2,firstRate: firstRate2,secondRate: secondRate2,)));}
                          if (widget.indexno==2){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(images: bottomImages3,text: text3,firstRate: firstRate3,secondRate: secondRate3,)));}
                          if (widget.indexno==3){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(images: bottomImages4,text: text4,firstRate: firstRate4,secondRate: secondRate4,)));}
                          if (widget.indexno==4){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(images: bottomImages5,text: text5,firstRate: firstRate5,secondRate: secondRate5,)));}
                          if (widget.indexno==5){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(images: bottomImages6,text: text6,firstRate: firstRate6,secondRate: secondRate6,)));}
                          if (widget.indexno==6){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(images: bottomImages7,text: text7,firstRate: firstRate7,secondRate: secondRate7,)));}
                          if (widget.indexno==7){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(images: bottomImages8,text: text8,firstRate: firstRate8,secondRate: secondRate8,)));}

                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 163,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade100),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 15,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Colors.greenAccent.shade100,
                                        backgroundImage: AssetImage(widget.images[index]),),
                                      Icon(Icons.add,color: bgcolor,),
                                    ],
                                  ),
                                  SizedBox(height: 25,),
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
                                            Text('Different types',style: TextStyle(color: Colors.white,fontSize: 7),),
                                            Text(widget.names[index],style: TextStyle(color: Colors.white,fontSize: 7))
                                          ],
                                        ),
                                        SizedBox(width: 10,),
                                        Container(
                                          height: 20,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(6)
                                          ),
                                          child: Center(child: Text(widget.price[index],style: TextStyle(color: bgcolor,fontSize: 10,fontWeight: FontWeight.w600),)),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
            ),
          ],
        ),
      ),
    );
  }
}
