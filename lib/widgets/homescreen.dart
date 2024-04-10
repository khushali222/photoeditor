import 'package:flutter/material.dart';
import 'package:projects/widgets/cropscren.dart';

import 'package:projects/widgets/provider.dart';
import 'package:provider/provider.dart';

import '../startscreen.dart';
import 'adjustment_screen.dart';
import 'fitler_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Photo Editor",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StartScreen()));
            },
            icon: Icon(Icons.close,color: Colors.white,)),
        actions: [
          TextButton(onPressed: (){}, child: Text("Save"),),
        ],
      ),
      body: Center(
        child: Consumer<AppImageProvider>(
            builder: (BuildContext context, value, Widget? child) {
          if (value.currentImage != null) {
            return Image.memory(value.currentImage!);
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
      bottomNavigationBar: Container(
        height: 58,
        width: double.infinity,
        color: Colors.black,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                _BottomButton(
                  Icons.crop,
                  'Crop',
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CropScreen()));
                  }
                ),
                _BottomButton(
                    Icons.filter_vintage_outlined,
                    'Filter',
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Filter_Screen()));
                    }
                ),
                _BottomButton(
                    Icons.tune,
                    'Adjust',
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Adjustment_Screen()));
                    }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _BottomButton(IconData icon , String title ,{required onPressed}){
   return  InkWell(
     onTap: onPressed,
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
       child: Column(
         children: [
           Icon(icon,color: Colors.white,),
           Text(title,style: TextStyle(color: Colors.white70),),

         ],
       ),
     ),
   );
  }
}
