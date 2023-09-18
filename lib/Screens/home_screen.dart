import 'package:flower/Constants/colors.dart';
import 'package:flower/Models/categorymenu.dart';
import 'package:flower/Models/flowermodel.dart';
import 'package:flower/Widgets/flowers_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
List<FlowerModel> viewList = [];
class _HomeScreenState extends State<HomeScreen> {
   var currentselected = cateogryMenu[cateogryMenu.indexOf(cateogryMenu[0])];
   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.white,
        title: const Text('Welcome', style: TextStyle(color: ColorsConstant.onBoardingScreenColor),),
        leading: const Icon(Icons.menu, color: ColorsConstant.onBoardingScreenColor,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_bag, color: ColorsConstant.onBoardingScreenColor,),
          )
        ],
      ),
      body: Container(
          height: MediaQuery.sizeOf(context).height , 
              width: MediaQuery.sizeOf(context).width,
              color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            const Center(
              child:  Text('Flower Shop', style:  TextStyle(color: Color(0xffF385B2), fontSize: 28, 
              fontWeight: FontWeight.w700),),
            ), 
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: Card(
                shadowColor: Colors.grey,
                elevation: 4, 
              color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                 child: TextFormField(
                    decoration:  InputDecoration(
                      contentPadding: const EdgeInsets.all(12),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: '    Search your flower',
                      hintStyle: TextStyle(
                      color: ColorsConstant.onBoardingScreenColor.withOpacity(0.5)), 
                      border: InputBorder.none, 
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(32)
                      ), 
                      suffixIcon: const Icon(Icons.search), 
                      suffixIconColor: ColorsConstant.onBoardingScreenColor.withOpacity(0.5)
                    ),
                           ),
               ),
             ), 

             Center(
               child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  cateogryMenu.map((e) {
                   
                    bool isSelected = currentselected == e;
                  return GestureDetector( 
                    onTap: (){
                      setState(() {
                        currentselected =e;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 9),
                      child: Text(e.name, style:  TextStyle(fontSize: 19, 
                      fontWeight: FontWeight.w500,
                      color: isSelected ? ColorsConstant.onBoardingScreenColor : Colors.grey),),
                    ),
                  );
                }).toList()),
               ),
             ), 
          
            FlowerListView(id: currentselected.name, listflower: flowerLsit,
              
            ), 
            const Padding(
              
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child:  Text('Recently Viewed', style: TextStyle(color:  Color.fromARGB(255, 245, 103, 162), 
              fontSize: 25, fontWeight: FontWeight.w600), ),

            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0),
                  child: Column(
                    children: [
                      Container(
                        height: 90, 
                        width: MediaQuery.sizeOf(context).width * 0.9, 
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3), 
                          borderRadius: BorderRadius.circular(10) 
                        ),
                        child: ListTile(
                          leading: Image.asset('images/rose.png'), 
                          title: const Text('Red Rose ', style: TextStyle(
                          color: Color.fromARGB(255, 245, 103, 162), fontSize: 23),), 
                          subtitle: const Text('\$60.65', style: TextStyle(fontSize: 16),), 
                          
                        )
                      ),
                      SizedBox(
                        height: 10,
                      ), 
                      Container(
                        height: 90, 
                        width: MediaQuery.sizeOf(context).width * 0.9, 
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3), 
                          borderRadius: BorderRadius.circular(10) 
                        ),
                        child: ListTile(
                          leading: Image.asset('images/yel.png'), 
                          title: const Text('Tulip ', style: TextStyle(
                          color: Color.fromARGB(255, 245, 103, 162), fontSize: 23),), 
                          subtitle: const Text('\$90.05', style: TextStyle(fontSize: 16),), 
                          
                        )
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}