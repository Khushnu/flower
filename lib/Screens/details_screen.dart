import 'package:flower/Constants/colors.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.name, required this.image, required this.description, required this.price});
  final String name; 
  final String image; 
  final String description; 
  final String price;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height, 
        width: MediaQuery.sizeOf(context).width, 
        child: Column(
          children: [
            Container(
              color: Colors.pink,
              child: Image.asset(widget.image)), 
              Transform.translate(
                offset: const Offset(0, -30),
                child: Container(
                  height: MediaQuery.sizeOf(context).height * 0.5 + 16.4, 
                  width: MediaQuery.sizeOf(context).width, 
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), 
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(widget.name, style: const TextStyle(fontSize: 30, 
                      color: Color.fromARGB(255, 245, 103, 162)),),
                      const SizedBox(
                        height: 20,
                      ), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("\$${widget.price}", style: const TextStyle(fontSize: 30, 
                          color: Color.fromARGB(255, 245, 103, 162))),
                          const Spacer(),
                          Container(
                            height: 40, 
                            width: 40, 
                            decoration: BoxDecoration(
                              color: const Color(0xffF2DCE0), 
                              borderRadius: BorderRadius.circular(10)
                            ), 
                            child: const Icon(Icons.remove, color: Colors.pink,),
                          ), 
                           const SizedBox(
                            width: 6,
                          ), 
                          const Text('1', style: TextStyle(fontSize: 20),),
                          const SizedBox(
                            width: 6,
                          ), 
                          Container(
                            height: 40, 
                            width: 40, 
                            decoration: BoxDecoration(
                              color: ColorsConstant.onBoardingScreenColor, 
                              borderRadius: BorderRadius.circular(10)
                            ), 
                            child: const Icon(Icons.add, color: Colors.white,),
                          ), 
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(widget.description, style: const TextStyle(color: ColorsConstant.textColor, fontSize: 20, ),),
                      const SizedBox(
                        height: 80,
                      ), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                                height: 50, 
                                width: 50, 
                                decoration: BoxDecoration(
                                  color: ColorsConstant.onBoardingScreenColor, 
                                  borderRadius: BorderRadius.circular(15)
                                ), 
                                child: const Icon(Icons.shopping_bag, color: Colors.white,),
                              ), 
                              Container(
                                height: 50, 
                                width: MediaQuery.sizeOf(context).width * 0.8 - 10, 
                                decoration: BoxDecoration(
                                  color: ColorsConstant.onBoardingScreenColor, 
                                  borderRadius: BorderRadius.circular(15)
                                ), 
                                child: const Center(child:  Text('Add to Cart', 
                                style: TextStyle(color: Colors.white, fontSize: 22),)),
                              ),
                        ],
                      ), 
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}