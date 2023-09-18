import 'package:flower/Constants/colors.dart';
import 'package:flower/Models/flowermodel.dart';
import 'package:flower/Screens/details_screen.dart';
import 'package:flutter/material.dart';

class FlowerListView extends StatefulWidget {
  const FlowerListView({super.key, required this.id, required this.listflower});
  final String id;
  final List<FlowerModel> listflower;

  @override
  State<FlowerListView> createState() => _FlowerListViewState();
}

class _FlowerListViewState extends State<FlowerListView> {
//(list.where((element) => element.id == widget.id)).length == 0 ?   :

  @override
  Widget build(BuildContext context) {
    var list = widget.listflower;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:  (list.where((element) => element.id == widget.id)).isEmpty ? [ 
          const SizedBox(
            height: 360, 
            child: Center(child: Text('                        No Item in This Category')), 
          )
        ] : (list.where((element) => element.id == widget.id)).map((e) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> DetailsScreen(
                name: e.name, image: e.image, description: e.description, price: e.price) ));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.bounceIn,
                height: 270,
                width: 220,
                decoration: BoxDecoration(
                    color: ColorsConstant.flowerCardColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                      Transform.translate(
                        offset: Offset(0, -50),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.asset(
                              e.image,
                              fit: BoxFit.cover,
                            ),
                        ),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, 
                        vertical: 50),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                              e.name,
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 245, 79, 148),
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
                        child: Align( 
                          alignment: Alignment.bottomLeft,
                          child: RichText(
                              text: TextSpan(
                                  text: '\$',
                                  style: TextStyle(color: Colors.pink),
                                  children: [
                                    TextSpan(
                                      text: e.price, 
                                      style: TextStyle(color: Colors.black, fontSize: 20)
                                      )
                                    ])),
                        ),
                      ), 
                      Transform.translate(
                        offset: const Offset(20, 5),
                        child: Align( 
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 70, 
                            width: 70, 
                            decoration: BoxDecoration(
                              color: ColorsConstant.onBoardingScreenColor, 
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: const Icon(Icons.add, color: Colors.white, size: 40,),
                          ),
                        ),
                      )
                  ],
                )
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
