import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Material(
                   elevation: 3.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 10,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      Icon(
                        Icons.remove_red_eye_outlined,
                        size: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                GestureDetector(

                  child: Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Icon(
                          Icons.upload,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 60,),
                Material(
                  elevation: 4.0,
                 // borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 290,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:
                   Image.asset('assets/images/bg.png',fit: BoxFit.cover,),
                  ),
                ),

              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 50,),
                Material(
                  elevation: 3.0,
                  // borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[50],
                    //  borderRadius: BorderRadius.circular(50),
                    ),
                    child:
                      Column(
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Icon(Icons.layers_outlined,size: 16,),
                          Text("Layers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                        ],
                      ),
                  ),
                ),
                SizedBox(width: 10,),
                Material(
                  elevation: 3.0,
                  // borderRadius: BorderRadius.circular(50),
                  child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                       // borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      Column(
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Icon(Icons.add,size: 16,),
                          Text("Insert",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                        ],
                      ),
                  ),
                ),
                SizedBox(width: 10,),
                Material(
                  elevation: 3.0,
                  // borderRadius: BorderRadius.circular(50),
                  child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        color: Colors.deepPurple[50],
                      //  borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      Column(
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Icon(Icons.text_format,size: 16,),
                          Text("Text",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                        ],
                      ),
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 50,),
                Material(
                  elevation: 3.0,
                  // borderRadius: BorderRadius.circular(50),
                  child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                       // color: Colors.white,
                        //borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      Column(
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Icon(Icons.layers_outlined,size: 16,),
                          Text("Background",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                        ],
                      ),
                  ),
                ),
                SizedBox(width: 10,),
                Material(
                  elevation: 3.0,
                  // borderRadius: BorderRadius.circular(50),
                  child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                       // color: Colors.white,
                       // borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      Column(
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Icon(Icons.roller_shades_outlined,size: 16,),
                          Text("Shadow",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                        ],
                      ),
                  ),
                ),
                SizedBox(width: 10,),
                Material(
                  elevation: 3.0,
                  // borderRadius: BorderRadius.circular(50),
                  child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                     //   color: Colors.white,
                       // borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      Column(
                        children: [
                          SizedBox(
                            height: 4,
                          ),
                          Icon(Icons.crop,size: 16,),
                          Text("Resize",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                        ],
                      ),
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
            SizedBox(height: 30,),
            Material(
              elevation: 5.0,
              color: Colors.deepPurple,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width * .75,
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Color(0x3F000000),
                  //     blurRadius: 4,
                  //     offset: Offset(0, 4),
                  //     spreadRadius: 0,
                  //   ),
                  // ]
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Center(
                          child: Text(
                            "Export",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
