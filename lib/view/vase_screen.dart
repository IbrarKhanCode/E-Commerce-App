import 'package:firstproject_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class VaseScreen extends StatefulWidget {
  const VaseScreen({super.key});

  @override
  State<VaseScreen> createState() => _VaseScreenState();
}

class _VaseScreenState extends State<VaseScreen> {
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
                    Icon(Icons.arrow_forward,color: Colors.white,size: 25,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        cursorColor: bgcolor,
                        decoration: InputDecoration(
                          hintText: 'Vase',
                          hintStyle: TextStyle(fontWeight: FontWeight.w400),
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
                      child: Badge(
                        backgroundColor: Colors.blueAccent,
                          textColor: Colors.white,
                          smallSize: 15,
                          largeSize: 15,
                          label: Text('0'),
                          child: Icon(Icons.shopping_cart,color: Colors.white,size: 25,)),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                SizedBox(width: 15,),
                Text('45 Results For "Vases ',style: TextStyle(color: Colors.grey),),
                SizedBox(width: 20,),
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade200,
                  ),
                ),
              ],
            ),
          Container(
            height: 660,
            child: GridView.builder(
              itemCount: 14,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/.png'),
                                Icon(Icons.add,color: bgcolor,),
                              ],
                            ),
                            SizedBox(height: 8,),
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
                                      Text('White Flower',style: TextStyle(color: Colors.white,fontSize: 10),),
                                      Text('Vase',style: TextStyle(color: Colors.white,fontSize: 10))
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
                                    child: Center(child: Text('E1',style: TextStyle(color: bgcolor,fontSize: 10,fontWeight: FontWeight.w600),)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
                }),
          )
           
          ],
        ),
      ),
    );
  }
}
