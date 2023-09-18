import 'package:flower/Constants/colors.dart';
import 'package:flower/PageRoute/custompageroute.dart';
import 'package:flower/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height, 
      width: MediaQuery.sizeOf(context).width, 
      color: ColorsConstant.onBoardingScreenColor,
      child: Stack(
        children: [
           Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
            child: SizedBox(
               width: MediaQuery.sizeOf(context).width,
              child: const Text('With Flowers \nAlmost As Rich As \nOur History', 
              style: TextStyle(decoration: TextDecoration.none, color: Colors.white, 
              fontSize: 27, fontWeight: FontWeight.w500),)),
          ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 97),
             child: Align( 
                alignment: Alignment.bottomLeft, 
                child: Image.asset('images/bgimage.png' , scale: 2,)),
           ), 
             Transform.translate(
              offset: const Offset(-100, 45),
               child: Align( 
                  alignment: Alignment.bottomLeft, 
                  child: Image.asset('images/bottom.png' , scale: 2,),
                        ),
             ), 
             Padding(
             padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
             child: Align( 
                alignment: Alignment.bottomRight, 
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(CustomPageRoute(child: const HomeScreen() ));
                  },
                  child: Container(
                    height: 55, 
                    width: 55, 
                    padding: const EdgeInsets.all(15),
                   decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(40)
                   ), 
                    child: Image.asset('images/right.png', color: ColorsConstant.onBoardingScreenColor,),
                  ),
                )),
           ),
        ],
      ),
    );
  }
}