import 'package:firstproject_app/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class TermsofuseScreen extends StatefulWidget {
  const TermsofuseScreen({super.key});

  @override
  State<TermsofuseScreen> createState() => _TermsofuseScreenState();
}

class _TermsofuseScreenState extends State<TermsofuseScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/two.png'),
          Column(
            children: [
              SizedBox(
                height: 310,
              ),
              Container(
                height: 555,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Checkbox(
                                value: isChecked,
                                activeColor: bgcolor,
                                onChanged: (newbool) {
                                  setState(() {
                                    isChecked = newbool;
                                  });
                                }),
                            Text(
                              'Accept',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),


                       Row(
                         children: [
                           GestureDetector(
                             onTap:(){
                               Navigator.pop(context);
                             },
                             child: Icon(
                               Icons.close,
                               color: bgcolor,
                             ),
                           ),
                           SizedBox(width: 10,),
                         ],
                       )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                      'TERMS OF USE',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                          'Lorem sfjwfie sojewi sowufwf wiwi fjwofw sfwuwiuwe sfwiuwfuwe  fweuiuwe fuwurwu '
                          'fwowoiuwi suwuw sfuwuw sfuwuw fuwuwu fuwouw fwouw jsfjwof jsfwofwofp fwouwowpf'
                          ' dgjdgagia ifiw fiwfiwfiirir rieierfrwerrrerior ireierieroeoreoreo ffiwrfiwiwiweriwep'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                          'Lorem sfjwfie sojewi sowufwf wiwi fjwofw sfwuwiuwe sfwiuwfuwe  fweuiuwe fuwurwu '
                          'fwowoiuwi suwuw sfuwuw sfuwuw fuwuwu fuwouw fwouw jsfjwof jsfwofwofp fwouwowpf '
                          'wjwfwfwoi eirpwi jgearipiwpojwfj woiweiwe wiiweiwgjwig wfwiwiw sjdfiowjfwiojfw'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                          'Lorem sfjwfie sojewi sowufwf wiwi fjwofw sfwuwiuwe sfwiuwfuwe  fweuiuwe fuwurwu '
                          'fwowoiuwi suwuw sfuwuw sfuwuw fuwuwu fuwouw fwouw jsfjwof jsfwofwofp fwouwowpf '),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
