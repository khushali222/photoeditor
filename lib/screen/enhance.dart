import 'package:flutter/material.dart';

import '../gridview.dart';


class Enhance extends StatefulWidget {
  const Enhance({super.key});

  @override
  State<Enhance> createState() => _EnhanceState();
}

class _EnhanceState extends State<Enhance> {
  List products = [
    {"Product_name":"AI Avatar Generator","price":"\$200" ,"image_path":'assets/images/ai1.png'},
    {"Product_name":"AI Scene Generator","price":"\$200" ,"image_path":'assets/images/ai2.png'},
    {"Product_name":"AI Anime Generator","price":"\$200" ,"image_path":'assets/images/ai3.png'},
    {"Product_name":"AI Cartoonizer","price":"\$200" ,"image_path":'assets/images/ai4.png'},
    {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/images/ai5.png'},
    {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/images/ai6.png'},
   // {"Product_name":"AI  Generator","price":"\$200" ,"image_path":'assets/images/1.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child:
        Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.grey[100],
        //   centerTitle: true,
        //   leading:
        //   CircleAvatar(
        //     radius: 10,
        //    backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/128/847/847969.png',),
        //   ),
        //   title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
        //   actions: [
        //     // IconButton(
        //     //   onPressed: () {
        //     //     // Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),
        //     //     // ),);
        //     //   },
        //     //   icon: Padding(
        //     //     padding: const EdgeInsets.all(4.0),
        //     //     child: CircleAvatar(child: Image(image: AssetImage('assets/cart.png'),height: 20,width: 20,)),
        //     //   ),
        //     // ),
        //     // IconButton(
        //     //   onPressed: ()
        //     //   {
        //     //
        //     //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
        //     //
        //     //     //  Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),),);
        //     //   },
        //     //   icon: CircleAvatar(child: Image(image: AssetImage('assets/profile.png',),),radius: 15,),
        //     //
        //     // ),
        //     // Stack(
        //     //     children: [
        //     //       _image != null
        //     //           ? CircleAvatar(
        //     //         radius: 30,
        //     //         backgroundImage: MemoryImage(_image!),
        //     //       )
        //     //           : CircleAvatar(
        //     //         backgroundImage: NetworkImage(
        //     //             'https://t4.ftcdn.net/jpg/05/86/91/55/240_F_586915596_gPqgxPdgdJ4OXjv6GCcDWNxTjKDWZ3JD.jpg'),
        //     //         radius: 20,
        //     //       ),
        //     //     ]),
        //     IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.black,),),
        //     IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.black,),),
        //     SizedBox(width: 15,),
        //   ],
        // ),
          body:          Container(
            child: Column(
              children: [
               SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://www.flaticon.com/free-icon/profile_3135715'),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Column(
                      children: [
                        Text(
                          "Welcome back",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),

                        Row(
                          children: [
                            SizedBox(width: 7,),
                            Text("Khushali Sarvaiya"),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(width: 30,),
                    Spacer(),

                    Row(
                      children: [
                        //this is for notification
                        // Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3239/3239952.png',),
                        //   height: 20,width: 20,),
                        SizedBox(width: 10,),
                        Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/2040/2040504.png',),
                          height: 20,width: 20,),
                        SizedBox(width: 10,),
                        Stack(
                            children:
                            [
                              Material(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.deepPurple[200],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 7,
                                left: 4,
                                child: Image(
                                  image: NetworkImage('https://cdn-icons-png.flaticon.com/128/6423/6423882.png',),
                                  height: 15,width: 15,),
                              ),
                              Positioned(
                                  top: 7,
                                  right: 9,
                                  child: Text("Pro",style: TextStyle(fontSize: 10),)),
                            ]
                        ),
                        SizedBox(
                          width: 22,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Expanded(
                  child:
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                     children: [


                       SizedBox(
                         height: 10,
                       ),
                       // Container(
                       //   height: 150,
                       //   width: MediaQuery.of(context).size.width * .9,
                       //   decoration: BoxDecoration(
                       //     gradient: LinearGradient(
                       //       begin: Alignment.topLeft,
                       //       end: Alignment.topRight,
                       //       colors: [
                       //         Color.fromRGBO(124, 87, 187, .5),
                       //         Color.fromRGBO(128, 200, 226, 1)
                       //       ],
                       //     ),
                       //     borderRadius: BorderRadius.all(Radius.circular(18)),
                       //   ),
                       //   child:
                       //   Column(
                       //     children: [
                       //     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
                       //       SizedBox(height: 17,),
                       //       Row(
                       //         children: [
                       //           SizedBox(width: 20,),
                       //           Container(
                       //             height: 120,
                       //             width: 100,
                       //             decoration: BoxDecoration(
                       //               color: Colors.white.withOpacity(0.3),
                       //               borderRadius: BorderRadius.all(Radius.circular(18)),
                       //             ),
                       //             child: Column(
                       //               children: [
                       //                 SizedBox(height: 10,),
                       //                 Text("Get the special discount",style: TextStyle(fontSize: 7,color: Colors.white,fontWeight: FontWeight.w800),),
                       //                 Text("50%\nOFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white),),
                       //                 //Text("OFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
                       //               ],
                       //             ),
                       //           ),
                       //           SizedBox(width: 20,),
                       //           //SizedBox(width: MediaQuery.of(context).size.width * .2,),
                       //         ],
                       //       ),
                       //     ],
                       //   ),
                       // ),
                       //
                       // SizedBox(height: 5,),
                       //
                       //    Expanded(
                       //        child: Padding(
                       //      padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
                       //      child: Grid(),
                       //    )
                       //    ),
                       // SingleChildScrollView(
                       //   child: Padding(
                       //     padding:  EdgeInsets.only(left: 20,right: 20),
                       //     child: SizedBox(
                       //          height: 330,
                       //         child: Expanded(
                       //         //  flex: 20,
                       //             child: Grid())),
                       //   ),
                       // ),
                       //recently
                       //recently
                      Row(
                        children: [
                          SizedBox(width: 22,),
                          Text("Rcently",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),),
                        ],
                      ),

                       Padding(
                         padding: const EdgeInsets.only(left: 13,right: 13),
                         child: SizedBox(
                           height: 100,
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             itemCount: products.length,
                               itemBuilder: (context,index){
                                return    Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    width: 80,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        '${products[index]['image_path']}',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                               }
                           ),
                         ),
                       ),
                       SizedBox(
                         height: 10,
                       ),

                      // albums

                       Row(
                         children: [
                           SizedBox(width: 20,),
                           Text("Albums",style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 17,
                           ),
                           ),
                           Spacer(),
                           Text("See all",style: TextStyle(fontWeight: FontWeight.bold),),
                           SizedBox(width: 20,),
                         ],
                       ),
                       SizedBox(
                         height: 7,
                       ),
                       Container(
                         height: 100,
                         width: MediaQuery.of(context).size.width * .91,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             begin: Alignment.topLeft,
                             end: Alignment.topRight,
                             colors: [
                               Color.fromRGBO(124, 87, 187, .5),
                               Color.fromRGBO(128, 200, 226, 1)
                             ],
                           ),
                           borderRadius: BorderRadius.all(Radius.circular(18)),
                         ),
                         child:
                         Column(
                           children: [
                           //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
                             SizedBox(height: 23,),
                             Row(
                               children: [
                                 SizedBox(width: 10,),
                               Text("Animals",style: TextStyle(fontWeight: FontWeight.bold),),

                               ],
                             ),
                             SizedBox(height: 10,),
                             Row(
                               children: [
                                 SizedBox(width: 10,),
                                 Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold),),

                               ],
                             ),
                           ],
                         ),
                       ),
                       // SizedBox(
                       //   height: 10,
                       // ),
                       // Row(
                       //   children: [
                       //     SizedBox(width: 20,),
                       //     Text("Rcently",style: TextStyle(
                       //       fontWeight: FontWeight.bold,
                       //       fontSize: 17,
                       //     ),),
                       //   ],
                       // ),
                       // SizedBox(
                       //   height: 10,
                       // ),
                       // SizedBox(
                       //   height: 100,
                       //   child: ListView.builder(
                       //       scrollDirection: Axis.horizontal,
                       //       itemCount: products.length,
                       //       itemBuilder: (context,index){
                       //         return    Padding(
                       //           padding: const EdgeInsets.all(8.0),
                       //           child: Container(
                       //             height: 50,
                       //             width: 80,
                       //             child: ClipRRect(
                       //               borderRadius: BorderRadius.circular(10),
                       //               child: Image.asset(
                       //                 '${products[index]['image_path']}',
                       //                 fit: BoxFit.cover,
                       //               ),
                       //             ),
                       //           ),
                       //         );
                       //       }
                       //   ),
                       // ),
                      SizedBox(height: 20,),
                     //all photos
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           children: [
                             Column(
                               children: [
                                 GestureDetector(
                                   // onTap: (){
                                   //   all = true;
                                   //   jackets = false;
                                   //   shoes = false;
                                   //   setState(() {
                                   //
                                   //   });
                                   // },
                                   child:
                                   Material(
                                     // elevation: 3.0,
                                     borderRadius: BorderRadius.circular(10),
                                    // color: all? Colors.deepPurple[200] : Colors.white,
                                     //  color: selectedCategoryProvider.selectedCategory == index
                                     //      ? Colors.white
                                     //      : Colors.white.withOpacity(0.4),
                                     child: Container(
                                       height: 55,
                                       width: 55,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: Colors.deepPurple[100],
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child:
                                         Icon(Icons.border_all_outlined),
                                       ),
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 5,),
                                 Text("All photos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                               ],
                             ),
                             SizedBox(width: 33,),
                             Column(
                               children: [
                                 GestureDetector(
                                   // onTap: (){
                                   //   all = true;
                                   //   jackets = false;
                                   //   shoes = false;
                                   //   setState(() {
                                   //
                                   //   });
                                   // },
                                   child:
                                   Material(
                                     // elevation: 3.0,
                                     borderRadius: BorderRadius.circular(10),
                                     // color: all? Colors.deepPurple[200] : Colors.white,
                                     //  color: selectedCategoryProvider.selectedCategory == index
                                     //      ? Colors.white
                                     //      : Colors.white.withOpacity(0.4),
                                     child: Container(
                                       height: 55,
                                       width: 55,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: Colors.deepPurple[100],
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child:
                                         Icon(Icons.camera_alt),
                                       ),
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 5,),
                                 Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                               ],
                             ),
                             SizedBox(width: 32,),
                             Column(
                               children: [
                                 GestureDetector(
                                   // onTap: (){
                                   //   all = true;
                                   //   jackets = false;
                                   //   shoes = false;
                                   //   setState(() {
                                   //
                                   //   });
                                   // },
                                   child:
                                   Material(
                                     // elevation: 3.0,
                                     borderRadius: BorderRadius.circular(10),
                                     // color: all? Colors.deepPurple[200] : Colors.white,
                                     //  color: selectedCategoryProvider.selectedCategory == index
                                     //      ? Colors.white
                                     //      : Colors.white.withOpacity(0.4),
                                     child: Container(
                                       height: 55,
                                       width: 55,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: Colors.deepPurple[100],
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child:
                                         Icon(Icons.download_for_offline),
                                       ),
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 5,),
                                 Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                               ],
                             ),
                             SizedBox(width: 30,),
                             Column(
                               children: [
                                 GestureDetector(
                                   // onTap: (){
                                   //   all = true;
                                   //   jackets = false;
                                   //   shoes = false;
                                   //   setState(() {
                                   //
                                   //   });
                                   // },
                                   child:
                                   Material(
                                     // elevation: 3.0,
                                     borderRadius: BorderRadius.circular(10),
                                     // color: all? Colors.deepPurple[200] : Colors.white,
                                     //  color: selectedCategoryProvider.selectedCategory == index
                                     //      ? Colors.white
                                     //      : Colors.white.withOpacity(0.4),
                                     child: Container(
                                       height: 55,
                                       width: 55,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: Colors.deepPurple[100],
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child:
                                         Icon(Icons.file_copy_rounded),
                                       ),
                                     ),
                                   ),
                                 ),
                                 SizedBox(height: 5,),
                                 Text("Others",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                               ],
                             ),
                           ],
                         ),
                       ),
                       SizedBox(
                         height: 15,
                       ),

                       //november
                       Row(
                         children: [
                           SizedBox(width: 20,),
                           Text("November , 2019",style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 17,
                           ),),
                         ],
                       ),
                       SizedBox(
                         height: 10,
                       ),
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20,right: 20),
                           child: Row(
                             children: [
                               Container(
                                 height: 90,
                                 width: 80,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(10),
                                   child: Image.asset(
                                     'assets/images/ai1.png',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Container(
                                 height: 90,
                                 width: 80,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(10),
                                   child: Image.asset(
                                     'assets/images/ai2.png',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Container(
                                 height: 90,
                                 width: 80,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(10),
                                   child: Image.asset(
                                     'assets/images/ai3.png',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Stack(
                                 children:
                                 [
                                   Container(
                                     height: 90,
                                     width: 80,
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.circular(10),
                                     child: Image.asset(
                                       'assets/images/ai4.png',
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                 ),]
                               ),
                             ],
                           ),
                         ),
                       ),
                       //April
                       Row(
                         children: [
                           SizedBox(width: 20,),
                           Text("April , 2019",style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 17,
                           ),),
                         ],
                       ),
                       SizedBox(
                         height: 10,
                       ),
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20,right: 20),
                           child: Row(
                             children: [
                               Container(
                                 height: 90,
                                 width: 80,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(10),
                                   child: Image.asset(
                                     'assets/images/ai1.png',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Container(
                                 height: 90,
                                 width: 80,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(10),
                                   child: Image.asset(
                                     'assets/images/ai2.png',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Container(
                                 height: 90,
                                 width: 80,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(10),
                                   child: Image.asset(
                                     'assets/images/ai3.png',
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                               SizedBox(width: 10,),
                               Stack(
                                   children:
                                   [
                                     Container(
                                       height: 90,
                                       width: 80,
                                       child: ClipRRect(
                                         borderRadius: BorderRadius.circular(10),
                                         child: Image.asset(
                                           'assets/images/ai4.png',
                                           fit: BoxFit.cover,
                                         ),
                                       ),
                                     ),]
                               ),
                             ],
                           ),
                         ),
                       ),
                     ],
                                   ),
                  ),
                ),
                // Continue with the rest of your content...
              ],
            ),
          )


        ),
      );
  }
}
