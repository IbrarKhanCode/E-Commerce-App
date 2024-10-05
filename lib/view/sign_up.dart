import 'package:firstproject_app/utils/custom_colors.dart';
import 'package:firstproject_app/view/home_screen.dart';
import 'package:firstproject_app/view/log_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var isObscure = true;
  var isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset('assets/images/two.png'),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Container(
                height: 700,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 225),
                      child: Text(
                        'Welcome!',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sdd do.',
                      style: TextStyle(color: Colors.grey),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        cursorColor: bgcolor,
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          hintStyle: TextStyle(color: Colors.grey,letterSpacing: 1),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: bgcolor,
                              width: 2

                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        cursorColor: bgcolor,
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(color: Colors.grey,letterSpacing: 1),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: bgcolor,
                                    width: 2

                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        cursorColor: bgcolor,
                        obscuringCharacter: "*",
                        obscureText: isObscure,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: (){
                              setState(() {
                                isObscure = !isObscure;
                              });

                            },
                              child: Icon(isObscure == true ? Icons.visibility_off : Icons.visibility,color: Colors.grey,)),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey,letterSpacing: 1),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: bgcolor,
                                    width: 2

                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextField(
                        cursorColor: bgcolor,
                        obscuringCharacter: "*",
                        obscureText: isObscure2,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: (){
                             setState(() {
                               isObscure2 = !isObscure2;
                             });
                            },
                              child: Icon(isObscure2 == true ? Icons.visibility_off : Icons.visibility,color: Colors.grey,)),
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(color: Colors.grey,letterSpacing: 1),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(
                                    color: bgcolor,
                                    width: 2

                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) =>HomeScreen()
                            ),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                          color: bgcolor,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Center(
                          child: Text('SIGN UP',
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 15),),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?',style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 5,),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => LogIn()
                                ),
                            );
                          },
                            child: Text('Log in',style: TextStyle(color: bgcolor,fontWeight: FontWeight.w500),)),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3,
                          width: 35,
                          color: bgcolor,
                        ),
                        SizedBox(width: 10,),
                        Text('or',style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 10,),
                        Container(
                          height: 3,
                          width: 35,
                          color: bgcolor,
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sign up with',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    SizedBox(height: 5,),
                    SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: Colors.grey.shade100,
                            ),
                            child:  Image.network('https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png'),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: Colors.grey.shade100,
                            ),
                            child: Icon(Icons.mail,color: bgcolor,size: 30,),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: Colors.grey.shade100,
                            ),
                            child: Icon(Icons.phone,color: bgcolor,size: 30,),
                          ),
                      
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }

  Icon visibility(){
    if (isObscure){
      return const Icon(Icons.visibility);
    }else {
      return const Icon(Icons.visibility_off);
    }
  }

}
