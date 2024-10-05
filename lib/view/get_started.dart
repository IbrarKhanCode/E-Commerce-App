import 'package:firstproject_app/utils/custom_colors.dart';
import 'package:firstproject_app/view/termsofuse_screen.dart';
import 'package:firstproject_app/view/log_in.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  bool? isChecked= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Image.asset('assets/images/two.png'),
          Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Image.asset('assets/images/three.png'),
                    SizedBox(height: 20,),
                    Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Text('Order Your Favourite Food And Get It Delivered To Your Doorstep',
                      style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 80,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LogIn()
                      ),
                    );
                  },
                  child:  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: bgcolor,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                        child: Text('START',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Row(
                        children: [
                        Checkbox(
                            value: isChecked ,
                            activeColor: bgcolor,
                            onChanged: (newBool){
                              setState(() {
                                isChecked = newBool;
                              });
                            },
                        ),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TermsofuseScreen()),
                              );
                            },
                              child: Text('Terms & Conditions',
                                style: TextStyle(color: Colors.grey),))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
