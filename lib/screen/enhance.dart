//
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:projects/second_home.dart';
//
// import '../filtter.dart';
// import '../gridview.dart';
// import '../setting.dart';
// // void main(){
// //   runApp(MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Enhance()));
// // }
//
// // class Enhance extends StatefulWidget {
// //   const Enhance({super.key});
// //
// //   @override
// //   State<Enhance> createState() => _EnhanceState();
// // }
// //
// // class _EnhanceState extends State<Enhance> {
// //   List<dynamic> storageImages = [];
// //
// //   Future<void> fetchImages() async {
// //     // Fetch products from Firestore
// //     QuerySnapshot querySnapshot =
// //     await FirebaseFirestore.instance.collection('images').get();
// //     print(querySnapshot);
// //     setState(() {
// //       storageImages = querySnapshot.docs.map((doc) => doc.data()).toList();
// //     });
// //   }
// //
// //   Future<String> getImageUrl(String imagePath) async {
// //     // Get download URL from Firebase Storage
// //     String downloadURL = await FirebaseStorage.instance
// //         .ref()
// //         .child(imagePath)
// //         .getDownloadURL();
// //     debugPrint(downloadURL.toString());
// //     return downloadURL;
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchImages();
// //   }
// //   int _selectedIndex = 0;
// //   List products = [
// //     {"Product_name":"AI Avatar Generator","price":"\$200" ,"image_path":'assets/image/ai1.png'},
// //     {"Product_name":"AI Scene Generator","price":"\$200" ,"image_path":'assets/image/ai2.png'},
// //     {"Product_name":"AI Anime Generator","price":"\$200" ,"image_path":'assets/image/ai3.png'},
// //     {"Product_name":"AI Cartoonizer","price":"\$200" ,"image_path":'assets/image/ai4.png'},
// //     {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/image/ai5.png'},
// //     {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/image/ai6.png'},
// //     // {"Product_name":"AI  Generator","price":"\$200" ,"image_path":'assets/images/1.png'},
// //   ];
// //
// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return
// //       SafeArea(
// //         child:
// //         Scaffold(
// //         // appBar: AppBar(
// //         //   backgroundColor: Colors.grey[100],
// //         //   centerTitle: true,
// //         //   leading:
// //         //   CircleAvatar(
// //         //     radius: 10,
// //         //    backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/128/847/847969.png',),
// //         //   ),
// //         //   title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
// //         //   actions: [
// //         //     // IconButton(
// //         //     //   onPressed: () {
// //         //     //     // Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),
// //         //     //     // ),);
// //         //     //   },
// //         //     //   icon: Padding(
// //         //     //     padding: const EdgeInsets.all(4.0),
// //         //     //     child: CircleAvatar(child: Image(image: AssetImage('assets/cart.png'),height: 20,width: 20,)),
// //         //     //   ),
// //         //     // ),
// //         //     // IconButton(
// //         //     //   onPressed: ()
// //         //     //   {
// //         //     //
// //         //     //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
// //         //     //
// //         //     //     //  Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),),);
// //         //     //   },
// //         //     //   icon: CircleAvatar(child: Image(image: AssetImage('assets/profile.png',),),radius: 15,),
// //         //     //
// //         //     // ),
// //         //     // Stack(
// //         //     //     children: [
// //         //     //       _image != null
// //         //     //           ? CircleAvatar(
// //         //     //         radius: 30,
// //         //     //         backgroundImage: MemoryImage(_image!),
// //         //     //       )
// //         //     //           : CircleAvatar(
// //         //     //         backgroundImage: NetworkImage(
// //         //     //             'https://t4.ftcdn.net/jpg/05/86/91/55/240_F_586915596_gPqgxPdgdJ4OXjv6GCcDWNxTjKDWZ3JD.jpg'),
// //         //     //         radius: 20,
// //         //     //       ),
// //         //     //     ]),
// //         //     IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.black,),),
// //         //     IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.black,),),
// //         //     SizedBox(width: 15,),
// //         //   ],
// //         // ),
// //           body:
// //           Container(
// //             child: Column(
// //               children: [
// //                SizedBox(height: 10,),
// //                 Row(
// //                   children: [
// //                     SizedBox(
// //                       width: 20,
// //                     ),
// //                     CircleAvatar(
// //                       backgroundImage: NetworkImage('https://www.flaticon.com/free-icon/profile_3135715'),
// //                     ),
// //                     SizedBox(
// //                       width: 18,
// //                     ),
// //                     Column(
// //                       children: [
// //                         Text(
// //                           "Welcome back",
// //                           style:
// //                           TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
// //                         ),
// //
// //                         Row(
// //                           children: [
// //                             SizedBox(width: 7,),
// //                             Text("Khushali Sarvaiya"),
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                     // SizedBox(width: 30,),
// //                     Spacer(),
// //
// //                     Row(
// //                       children: [
// //                         //this is for notification
// //                         // Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3239/3239952.png',),
// //                         //   height: 20,width: 20,),
// //                         SizedBox(width: 10,),
// //                         GestureDetector(
// //                           onTap: (){
// //                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
// //                           },
// //                           child: Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/2040/2040504.png',),
// //                             height: 20,width: 20,),
// //                         ),
// //                         SizedBox(width: 10,),
// //                         Stack(
// //                             children:
// //                             [
// //                               Material(
// //                                 borderRadius: BorderRadius.circular(20),
// //                                 child: Container(
// //                                   height: 30,
// //                                   width: 50,
// //                                   decoration: BoxDecoration(
// //                                     borderRadius: BorderRadius.circular(20),
// //                                     color: Colors.deepPurple[200],
// //                                   ),
// //                                 ),
// //                               ),
// //                               Positioned(
// //                                 top: 7,
// //                                 left: 4,
// //                                 child: Image(
// //                                   image: NetworkImage('https://cdn-icons-png.flaticon.com/128/6423/6423882.png',),
// //                                   height: 15,width: 15,),
// //                               ),
// //                               Positioned(
// //                                   top: 7,
// //                                   right: 9,
// //                                   child: Text("Pro",style: TextStyle(fontSize: 10),)),
// //                             ]
// //                         ),
// //                         SizedBox(
// //                           width: 22,
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //                 SizedBox(height: 10,),
// //                 Expanded(
// //                   child:
// //                   SingleChildScrollView(
// //                     scrollDirection: Axis.vertical,
// //                     child: Column(
// //                      children: [
// //                        SizedBox(
// //                          height: 10,
// //                        ),
// //                        // Container(
// //                        //   height: 150,
// //                        //   width: MediaQuery.of(context).size.width * .9,
// //                        //   decoration: BoxDecoration(
// //                        //     gradient: LinearGradient(
// //                        //       begin: Alignment.topLeft,
// //                        //       end: Alignment.topRight,
// //                        //       colors: [
// //                        //         Color.fromRGBO(124, 87, 187, .5),
// //                        //         Color.fromRGBO(128, 200, 226, 1)
// //                        //       ],
// //                        //     ),
// //                        //     borderRadius: BorderRadius.all(Radius.circular(18)),
// //                        //   ),
// //                        //   child:
// //                        //   Column(
// //                        //     children: [
// //                        //     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
// //                        //       SizedBox(height: 17,),
// //                        //       Row(
// //                        //         children: [
// //                        //           SizedBox(width: 20,),
// //                        //           Container(
// //                        //             height: 120,
// //                        //             width: 100,
// //                        //             decoration: BoxDecoration(
// //                        //               color: Colors.white.withOpacity(0.3),
// //                        //               borderRadius: BorderRadius.all(Radius.circular(18)),
// //                        //             ),
// //                        //             child: Column(
// //                        //               children: [
// //                        //                 SizedBox(height: 10,),
// //                        //                 Text("Get the special discount",style: TextStyle(fontSize: 7,color: Colors.white,fontWeight: FontWeight.w800),),
// //                        //                 Text("50%\nOFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white),),
// //                        //                 //Text("OFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
// //                        //               ],
// //                        //             ),
// //                        //           ),
// //                        //           SizedBox(width: 20,),
// //                        //           //SizedBox(width: MediaQuery.of(context).size.width * .2,),
// //                        //         ],
// //                        //       ),
// //                        //     ],
// //                        //   ),
// //                        // ),
// //                        //
// //                        // SizedBox(height: 5,),
// //                        //
// //                        //    Expanded(
// //                        //        child: Padding(
// //                        //      padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
// //                        //      child: Grid(),
// //                        //    )
// //                        //    ),
// //                        // SingleChildScrollView(
// //                        //   child: Padding(
// //                        //     padding:  EdgeInsets.only(left: 20,right: 20),
// //                        //     child: SizedBox(
// //                        //          height: 330,
// //                        //         child: Expanded(
// //                        //         //  flex: 20,
// //                        //             child: Grid())),
// //                        //   ),
// //                        // ),
// //                        //recently
// //                        //recently
// //                       Row(
// //                         children: [
// //                           SizedBox(width: 22,),
// //                           Text("Rcently",style: TextStyle(
// //                             fontWeight: FontWeight.bold,
// //                             fontSize: 17,
// //                           ),),
// //                         ],
// //                       ),
// //
// //                        Padding(
// //                          padding: const EdgeInsets.only(left: 13,right: 13),
// //                          child: SizedBox(
// //                            height: 100,
// //                            child: ListView.builder(
// //                              scrollDirection: Axis.horizontal,
// //                              itemCount: products.length,
// //                                itemBuilder: (context,index){
// //                                 return    Padding(
// //                                   padding: const EdgeInsets.all(8.0),
// //                                   child: Container(
// //                                     height: 50,
// //                                     width: 80,
// //                                     child: ClipRRect(
// //                                       borderRadius: BorderRadius.circular(10),
// //                                       child: Image.asset(
// //                                         '${products[index]['image_path']}',
// //                                         fit: BoxFit.cover,
// //                                       ),
// //                                     ),
// //                                   ),
// //                                 );
// //                                }
// //                            ),
// //                          ),
// //                        ),
// //                        SizedBox(
// //                          height: 10,
// //                        ),
// //
// //                       // albums
// //
// //                        Row(
// //                          children: [
// //                            SizedBox(width: 20,),
// //                            Text("Albums",style: TextStyle(
// //                              fontWeight: FontWeight.bold,
// //                              fontSize: 17,
// //                            ),
// //                            ),
// //                            Spacer(),
// //                            Text("See all",style: TextStyle(fontWeight: FontWeight.bold),),
// //                            SizedBox(width: 20,),
// //                          ],
// //                        ),
// //                        SizedBox(
// //                          height: 7,
// //                        ),
// //                        // Material(
// //                        //   elevation: 3,
// //                        //   borderRadius: BorderRadius.all(Radius.circular(18)),
// //                        //   child: Container(
// //                        //     height: 100,
// //                        //     width: MediaQuery.of(context).size.width * .91,
// //                        //     decoration: BoxDecoration(
// //                        //       // gradient: LinearGradient(
// //                        //       //   begin: Alignment.topLeft,
// //                        //       //   end: Alignment.topRight,
// //                        //       //   colors: [
// //                        //       //     Color.fromRGBO(124, 87, 187, .5),
// //                        //       //     Color.fromRGBO(128, 200, 226, 1)
// //                        //       //   ],
// //                        //       // ),
// //                        //       borderRadius: BorderRadius.all(Radius.circular(18)),
// //                        //     ),
// //                        //     child:
// //                        //     Column(
// //                        //       children: [
// //                        //       //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
// //                        //         SizedBox(height: 23,),
// //                        //         Row(
// //                        //           children: [
// //                        //             SizedBox(width: 10,),
// //                        //           Text("Animals",style: TextStyle(fontWeight: FontWeight.bold),),
// //                        //
// //                        //           ],
// //                        //         ),
// //                        //         SizedBox(height: 10,),
// //                        //         Row(
// //                        //           children: [
// //                        //             SizedBox(width: 10,),
// //                        //             Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold),),
// //                        //
// //                        //           ],
// //                        //         ),
// //                        //       ],
// //                        //     ),
// //                        //   ),
// //                        // ),
// //                        // SizedBox(
// //                        //   height: 10,
// //                        // ),
// //                        // Row(
// //                        //   children: [
// //                        //     SizedBox(width: 20,),
// //                        //     Text("Rcently",style: TextStyle(
// //                        //       fontWeight: FontWeight.bold,
// //                        //       fontSize: 17,
// //                        //     ),),
// //                        //   ],
// //                        // ),
// //                        // SizedBox(
// //                        //   height: 10,
// //                        // ),
// //                        // SizedBox(
// //                        //   height: 100,
// //                        //   child: ListView.builder(
// //                        //       scrollDirection: Axis.horizontal,
// //                        //       itemCount: products.length,
// //                        //       itemBuilder: (context,index){
// //                        //         return    Padding(
// //                        //           padding: const EdgeInsets.all(8.0),
// //                        //           child: Container(
// //                        //             height: 50,
// //                        //             width: 80,
// //                        //             child: ClipRRect(
// //                        //               borderRadius: BorderRadius.circular(10),
// //                        //               child: Image.asset(
// //                        //                 '${products[index]['image_path']}',
// //                        //                 fit: BoxFit.cover,
// //                        //               ),
// //                        //             ),
// //                        //           ),
// //                        //         );
// //                        //       }
// //                        //   ),
// //                        // ),
// //                        Material(
// //                          elevation: 3,
// //                          borderRadius: BorderRadius.all(Radius.circular(18)),
// //                          child: Container(
// //                            height: 100,
// //                            width: MediaQuery.of(context).size.width * .91,
// //                            decoration: BoxDecoration(
// //                              // Replace the gradient with Image.network
// //                              image: DecorationImage(
// //                                image: AssetImage(
// //                                  'assets/images/img_7.png',
// //                                ),
// //                                fit: BoxFit.cover, // Adjust this based on your needs
// //                              ),
// //                              borderRadius: BorderRadius.all(Radius.circular(18)),
// //                            ),
// //                            child: Column(
// //                              children: [
// //                                SizedBox(height: 23,),
// //                                Row(
// //                                  children: [
// //                                    SizedBox(width: 10,),
// //                                    Text("Animals",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
// //                                  ],
// //                                ),
// //                                SizedBox(height: 10,),
// //                                Row(
// //                                  children: [
// //                                    SizedBox(width: 10,),
// //                                    Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
// //                                  ],
// //                                ),
// //                              ],
// //                            ),
// //                          ),
// //                        ),
// //
// //                        SizedBox(height: 20,),
// //                      //all photos
// //                        SingleChildScrollView(
// //                          scrollDirection: Axis.horizontal,
// //                          child: Row(
// //                            children: [
// //                              Column(
// //                                children: [
// //                                  GestureDetector(
// //                                    // onTap: (){
// //                                    //   all = true;
// //                                    //   jackets = false;
// //                                    //   shoes = false;
// //                                    //   setState(() {
// //                                    //
// //                                    //   });
// //                                    // },
// //                                    child:
// //                                    // Material(
// //                                    //    elevation: 3.0,
// //                                    //   borderRadius: BorderRadius.circular(10),
// //                                    //  // color: all? Colors.deepPurple[200] : Colors.white,
// //                                    //   //  color: selectedCategoryProvider.selectedCategory == index
// //                                    //   //      ? Colors.white
// //                                    //   //      : Colors.white.withOpacity(0.4),
// //                                    //   child: Container(
// //                                    //     height: 55,
// //                                    //     width: 55,
// //                                    //     decoration: BoxDecoration(
// //                                    //       borderRadius: BorderRadius.circular(10),
// //                                    //       color: Colors.deepPurple[100],
// //                                    //     ),
// //                                    //     child:
// //                                    //     // Padding(
// //                                    //     //   padding: const EdgeInsets.all(8.0),
// //                                    //     //   child:
// //                                    //     //   Icon(Icons.border_all_outlined),
// //                                    //     // ),
// //                                    //     Image.asset('assets/images/img_8.png',height: 5,width: 5,),
// //                                    //   ),
// //                                    // ),
// //                                    Material(
// //                                      elevation: 3.0,
// //                                      borderRadius: BorderRadius.circular(10),
// //                                      child: Container(
// //                                        height: 55,
// //                                        width: 55,
// //                                        decoration: BoxDecoration(
// //                                          borderRadius: BorderRadius.circular(10),
// //                                          color: Colors.deepPurple[100],
// //                                        ),
// //                                        child: Padding(
// //                                          padding: const EdgeInsets.all(12.0),
// //                                          child: Image.asset(
// //                                            'assets/images/img_9.png',
// //                                            height: 5, // Adjust the height as needed
// //                                            width: 5,  // Adjust the width as needed
// //                                          ),
// //                                        ),
// //                                      ),
// //                                    ),
// //                                  ),
// //                                  SizedBox(height: 5,),
// //                                  Text("All photos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
// //                                ],
// //                              ),
// //                              SizedBox(width: 33,),
// //                              Column(
// //                                children: [
// //                                  GestureDetector(
// //                                    // onTap: (){
// //                                    //   all = true;
// //                                    //   jackets = false;
// //                                    //   shoes = false;
// //                                    //   setState(() {
// //                                    //
// //                                    //   });
// //                                    // },
// //                                    child:
// //                                    Material(
// //                                       elevation: 3.0,
// //                                      borderRadius: BorderRadius.circular(10),
// //                                      // color: all? Colors.deepPurple[200] : Colors.white,
// //                                      //  color: selectedCategoryProvider.selectedCategory == index
// //                                      //      ? Colors.white
// //                                      //      : Colors.white.withOpacity(0.4),
// //                                      child: Container(
// //                                        height: 55,
// //                                        width: 55,
// //                                        decoration: BoxDecoration(
// //                                          borderRadius: BorderRadius.circular(10),
// //                                          color: Colors.deepPurple[100],
// //                                        ),
// //                                        child:
// //                                        Material(
// //                                          elevation: 3.0,
// //                                          borderRadius: BorderRadius.circular(10),
// //                                          child: Container(
// //                                            height: 55,
// //                                            width: 55,
// //                                            decoration: BoxDecoration(
// //                                              borderRadius: BorderRadius.circular(10),
// //                                              color: Colors.deepPurple[100],
// //                                            ),
// //                                            child:
// //                                            Padding(
// //                                              padding: const EdgeInsets.all(8.0),
// //                                              child: Image.asset(
// //                                                'assets/images/img_8.png',
// //                                                height: 5, // Adjust the height as needed
// //                                                width: 5,  // Adjust the width as needed
// //                                              ),
// //                                            ),
// //                                          ),
// //                                        ),
// //                                        // Padding(
// //                                        //   padding: const EdgeInsets.all(8.0),
// //                                        //   child:
// //                                        //   Icon(Icons.camera_alt),
// //                                        // ),
// //                                      ),
// //                                    ),
// //                                  ),
// //                                  SizedBox(height: 5,),
// //                                  Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
// //                                ],
// //                              ),
// //                              SizedBox(width: 32,),
// //                              Column(
// //                                children: [
// //                                  GestureDetector(
// //                                    // onTap: (){
// //                                    //   all = true;
// //                                    //   jackets = false;
// //                                    //   shoes = false;
// //                                    //   setState(() {
// //                                    //
// //                                    //   });
// //                                    // },
// //                                    child:
// //                                    Material(
// //                                       elevation: 3.0,
// //                                      borderRadius: BorderRadius.circular(10),
// //                                      // color: all? Colors.deepPurple[200] : Colors.white,
// //                                      //  color: selectedCategoryProvider.selectedCategory == index
// //                                      //      ? Colors.white
// //                                      //      : Colors.white.withOpacity(0.4),
// //                                      child: Container(
// //                                        height: 55,
// //                                        width: 55,
// //                                        decoration: BoxDecoration(
// //                                          borderRadius: BorderRadius.circular(10),
// //                                          color: Colors.deepPurple[100],
// //                                        ),
// //                                        child:
// //                                        Padding(
// //                                          padding: const EdgeInsets.all(15.0),
// //                                          child: Image.asset(
// //                                            'assets/images/img_10.png',
// //                                            height: 5, // Adjust the height as needed
// //                                            width: 5,  // Adjust the width as needed
// //                                          ),
// //                                        ),
// //                                        // Padding(
// //                                        //   padding: const EdgeInsets.all(8.0),
// //                                        //   child:
// //                                        //   Icon(Icons.download_for_offline),
// //                                        // ),
// //                                      ),
// //                                    ),
// //                                  ),
// //                                  SizedBox(height: 5,),
// //                                  Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
// //                                ],
// //                              ),
// //                              SizedBox(width: 30,),
// //                              Column(
// //                                children: [
// //                                  GestureDetector(
// //                                    // onTap: (){
// //                                    //   all = true;
// //                                    //   jackets = false;
// //                                    //   shoes = false;
// //                                    //   setState(() {
// //                                    //
// //                                    //   });
// //                                    // },
// //                                    child:
// //                                    Material(
// //                                       elevation: 3.0,
// //                                      borderRadius: BorderRadius.circular(10),
// //                                      // color: all? Colors.deepPurple[200] : Colors.white,
// //                                      //  color: selectedCategoryProvider.selectedCategory == index
// //                                      //      ? Colors.white
// //                                      //      : Colors.white.withOpacity(0.4),
// //                                      child: Container(
// //                                        height: 55,
// //                                        width: 55,
// //                                        decoration: BoxDecoration(
// //                                          borderRadius: BorderRadius.circular(10),
// //                                          color: Colors.deepPurple[100],
// //                                        ),
// //                                        child:
// //                                        Padding(
// //                                          padding: const EdgeInsets.all(14.0),
// //                                          child: Image.asset(
// //                                            'assets/images/img_11.png',
// //                                            height: 5, // Adjust the height as needed
// //                                            width: 5,  // Adjust the width as needed
// //                                          ),
// //                                        ),
// //                                      ),
// //                                    ),
// //                                  ),
// //                                  SizedBox(height: 5,),
// //                                  Text("Others",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
// //                                ],
// //                              ),
// //                            ],
// //                          ),
// //                        ),
// //                        SizedBox(
// //                          height: 15,
// //                        ),
// //
// //                        //november
// //                        Row(
// //                          children: [
// //                            SizedBox(width: 20,),
// //                            Text("November , 2019",style: TextStyle(
// //                              fontWeight: FontWeight.bold,
// //                              fontSize: 17,
// //                            ),),
// //                          ],
// //                        ),
// //                        SizedBox(
// //                          height: 10,
// //                        ),
// //                        SingleChildScrollView(
// //                          scrollDirection: Axis.horizontal,
// //                          child: Padding(
// //                            padding: const EdgeInsets.only(left: 20,right: 20),
// //                            child: Row(
// //                              children: [
// //                                Container(
// //                                  height: 90,
// //                                  width: 80,
// //                                  child: ClipRRect(
// //                                    borderRadius: BorderRadius.circular(10),
// //                                    child: Image.asset(
// //                                      'assets/images/ai1.png',
// //                                      fit: BoxFit.cover,
// //                                    ),
// //                                  ),
// //                                ),
// //                                SizedBox(width: 10,),
// //                                Container(
// //                                  height: 90,
// //                                  width: 80,
// //                                  child: ClipRRect(
// //                                    borderRadius: BorderRadius.circular(10),
// //                                    child: Image.asset(
// //                                      'assets/images/ai2.png',
// //                                      fit: BoxFit.cover,
// //                                    ),
// //                                  ),
// //                                ),
// //                                SizedBox(width: 10,),
// //                                Container(
// //                                  height: 90,
// //                                  width: 80,
// //                                  child: ClipRRect(
// //                                    borderRadius: BorderRadius.circular(10),
// //                                    child: Image.asset(
// //                                      'assets/images/ai3.png',
// //                                      fit: BoxFit.cover,
// //                                    ),
// //                                  ),
// //                                ),
// //                                SizedBox(width: 10,),
// //                                Stack(
// //                                  children:
// //                                  [
// //                                    Container(
// //                                      height: 90,
// //                                      width: 80,
// //                                    child: ClipRRect(
// //                                      borderRadius: BorderRadius.circular(10),
// //                                      child: Image.asset(
// //                                        'assets/images/ai4.png',
// //                                        fit: BoxFit.cover,
// //                                      ),
// //                                    ),
// //                                  ),]
// //                                ),
// //                              ],
// //                            ),
// //                          ),
// //                        ),
// //                        //April
// //                        Row(
// //                          children: [
// //                            SizedBox(width: 20,),
// //                            Text("April , 2019",style: TextStyle(
// //                              fontWeight: FontWeight.bold,
// //                              fontSize: 17,
// //                            ),),
// //                          ],
// //                        ),
// //                        SizedBox(
// //                          height: 10,
// //                        ),
// //                        SingleChildScrollView(
// //                          scrollDirection: Axis.horizontal,
// //                          child: Padding(
// //                            padding: const EdgeInsets.only(left: 20,right: 20),
// //                            child: Row(
// //                              children: [
// //                                Container(
// //                                  height: 90,
// //                                  width: 80,
// //                                  child: ClipRRect(
// //                                    borderRadius: BorderRadius.circular(10),
// //                                    child: Image.asset(
// //                                      'assets/images/ai1.png',
// //                                      fit: BoxFit.cover,
// //                                    ),
// //                                  ),
// //                                ),
// //                                SizedBox(width: 10,),
// //                                Container(
// //                                  height: 90,
// //                                  width: 80,
// //                                  child: ClipRRect(
// //                                    borderRadius: BorderRadius.circular(10),
// //                                    child: Image.asset(
// //                                      'assets/images/ai2.png',
// //                                      fit: BoxFit.cover,
// //                                    ),
// //                                  ),
// //                                ),
// //                                SizedBox(width: 10,),
// //                                Container(
// //                                  height: 90,
// //                                  width: 80,
// //                                  child: ClipRRect(
// //                                    borderRadius: BorderRadius.circular(10),
// //                                    child: Image.asset(
// //                                      'assets/images/ai3.png',
// //                                      fit: BoxFit.cover,
// //                                    ),
// //                                  ),
// //                                ),
// //                                SizedBox(width: 10,),
// //                                Stack(
// //                                    children:
// //                                    [
// //                                      Container(
// //                                        height: 90,
// //                                        width: 80,
// //                                        child: ClipRRect(
// //                                          borderRadius: BorderRadius.circular(10),
// //                                          child: Image.asset(
// //                                            'assets/images/ai4.png',
// //                                            fit: BoxFit.cover,
// //                                          ),
// //                                        ),
// //                                      ),]
// //                                ),
// //                              ],
// //                            ),
// //                          ),
// //                        ),
// //                      ],
// //                                    ),
// //                   ),
// //                 ),
// //                 // Continue with the rest of your content...
// //               ],
// //             ),
// //           ),
// //         ),
// //       );
// //     // Container(
// //     //   child: Column(
// //     //     children: [
// //     //       SizedBox(height: 10,),
// //     //       Row(
// //     //         children: [
// //     //           SizedBox(
// //     //             width: 20,
// //     //           ),
// //     //           CircleAvatar(
// //     //             backgroundImage: NetworkImage('https://www.flaticon.com/free-icon/profile_3135715'),
// //     //           ),
// //     //           SizedBox(
// //     //             width: 18,
// //     //           ),
// //     //           Column(
// //     //             children: [
// //     //               Text(
// //     //                 "Welcome back",
// //     //                 style:
// //     //                 TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
// //     //               ),
// //     //
// //     //               Row(
// //     //                 children: [
// //     //                   SizedBox(width: 7,),
// //     //                   Text("Khushali Sarvaiya"),
// //     //                 ],
// //     //               ),
// //     //             ],
// //     //           ),
// //     //           // SizedBox(width: 30,),
// //     //           Spacer(),
// //     //           Row(
// //     //             children: [
// //     //               //this is for notification
// //     //               // Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3239/3239952.png',),
// //     //               //   height: 20,width: 20,),
// //     //               SizedBox(width: 10,),
// //     //               Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/2040/2040504.png',),
// //     //                 height: 20,width: 20,),
// //     //               SizedBox(width: 10,),
// //     //               Stack(
// //     //                   children:
// //     //                   [
// //     //                     Material(
// //     //                       borderRadius: BorderRadius.circular(20),
// //     //                       child: Container(
// //     //                         height: 30,
// //     //                         width: 50,
// //     //                         decoration: BoxDecoration(
// //     //                           borderRadius: BorderRadius.circular(20),
// //     //                           color: Colors.deepPurple[200],
// //     //                         ),
// //     //                       ),
// //     //                     ),
// //     //                     Positioned(
// //     //                       top: 7,
// //     //                       left: 4,
// //     //                       child: Image(
// //     //                         image: NetworkImage('https://cdn-icons-png.flaticon.com/128/6423/6423882.png',),
// //     //                         height: 15,width: 15,),
// //     //                     ),
// //     //                     Positioned(
// //     //                         top: 7,
// //     //                         right: 9,
// //     //                         child: Text("Pro",style: TextStyle(fontSize: 10),)),
// //     //                   ]
// //     //               ),
// //     //               SizedBox(
// //     //                 width: 22,
// //     //               ),
// //     //             ],
// //     //           ),
// //     //         ],
// //     //       ),
// //     //       SizedBox(height: 10,),
// //     //       Expanded(
// //     //         child:
// //     //         SingleChildScrollView(
// //     //           scrollDirection: Axis.vertical,
// //     //           child: Column(
// //     //             children: [
// //     //               SizedBox(
// //     //                 height: 10,
// //     //               ),
// //     //               // Container(
// //     //               //   height: 150,
// //     //               //   width: MediaQuery.of(context).size.width * .9,
// //     //               //   decoration: BoxDecoration(
// //     //               //     gradient: LinearGradient(
// //     //               //       begin: Alignment.topLeft,
// //     //               //       end: Alignment.topRight,
// //     //               //       colors: [
// //     //               //         Color.fromRGBO(124, 87, 187, .5),
// //     //               //         Color.fromRGBO(128, 200, 226, 1)
// //     //               //       ],
// //     //               //     ),
// //     //               //     borderRadius: BorderRadius.all(Radius.circular(18)),
// //     //               //   ),
// //     //               //   child:
// //     //               //   Column(
// //     //               //     children: [
// //     //               //     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
// //     //               //       SizedBox(height: 17,),
// //     //               //       Row(
// //     //               //         children: [
// //     //               //           SizedBox(width: 20,),
// //     //               //           Container(
// //     //               //             height: 120,
// //     //               //             width: 100,
// //     //               //             decoration: BoxDecoration(
// //     //               //               color: Colors.white.withOpacity(0.3),
// //     //               //               borderRadius: BorderRadius.all(Radius.circular(18)),
// //     //               //             ),
// //     //               //             child: Column(
// //     //               //               children: [
// //     //               //                 SizedBox(height: 10,),
// //     //               //                 Text("Get the special discount",style: TextStyle(fontSize: 7,color: Colors.white,fontWeight: FontWeight.w800),),
// //     //               //                 Text("50%\nOFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white),),
// //     //               //                 //Text("OFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
// //     //               //               ],
// //     //               //             ),
// //     //               //           ),
// //     //               //           SizedBox(width: 20,),
// //     //               //           //SizedBox(width: MediaQuery.of(context).size.width * .2,),
// //     //               //         ],
// //     //               //       ),
// //     //               //     ],
// //     //               //   ),
// //     //               // ),
// //     //               //
// //     //               // SizedBox(height: 5,),
// //     //               //
// //     //               //    Expanded(
// //     //               //        child: Padding(
// //     //               //      padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
// //     //               //      child: Grid(),
// //     //               //    )
// //     //               //    ),
// //     //               // SingleChildScrollView(
// //     //               //   child: Padding(
// //     //               //     padding:  EdgeInsets.only(left: 20,right: 20),
// //     //               //     child: SizedBox(
// //     //               //          height: 330,
// //     //               //         child: Expanded(
// //     //               //         //  flex: 20,
// //     //               //             child: Grid())),
// //     //               //   ),
// //     //               // ),
// //     //               //recently
// //     //               //recently
// //     //               Row(
// //     //                 children: [
// //     //                   SizedBox(width: 22,),
// //     //                   Text("Rcently",style: TextStyle(
// //     //                     fontWeight: FontWeight.bold,
// //     //                     fontSize: 17,
// //     //                   ),),
// //     //                 ],
// //     //               ),
// //     //
// //     //               Padding(
// //     //                 padding: const EdgeInsets.only(left: 13,right: 13),
// //     //                 child: SizedBox(
// //     //                   height: 100,
// //     //                   child: ListView.builder(
// //     //                       scrollDirection: Axis.horizontal,
// //     //                       itemCount: storageImages.length,
// //     //                       itemBuilder: (context,index){
// //     //                         return  FutureBuilder(
// //     //                             future: getImageUrl(storageImages[index]['images']),
// //     //                             builder: (context,snapshot){
// //     //                               if(snapshot.connectionState==ConnectionState.waiting){
// //     //                                 return CircularProgressIndicator();
// //     //                               }else if (snapshot.hasError){
// //     //                                 return Text('Error:${snapshot.error}');
// //     //                               }
// //     //                               else{
// //     //                                 return Padding(
// //     //                                   padding: const EdgeInsets.all(8.0),
// //     //                                   child: Container(
// //     //                                     height: 50,
// //     //                                     width: 80,
// //     //                                     child: ClipRRect(
// //     //                                       borderRadius: BorderRadius.circular(10),
// //     //                                       child: Image.asset(
// //     //                                         '${storageImages[index]['images']}',
// //     //                                         fit: BoxFit.cover,
// //     //                                       ),
// //     //                                     ),
// //     //                                   ),
// //     //                                 );}
// //     //                             });  /*Padding(
// //     //                             padding: const EdgeInsets.all(8.0),
// //     //                             child: Container(
// //     //                               height: 50,
// //     //                               width: 80,
// //     //                               child: ClipRRect(
// //     //                                 borderRadius: BorderRadius.circular(10),
// //     //                                 child: Image.asset(
// //     //                                   '${products[index]['image_path']}',
// //     //                                   fit: BoxFit.cover,
// //     //                                 ),
// //     //                               ),
// //     //                             ),
// //     //                           );*/
// //     //                       }
// //     //                   ),
// //     //                 ),
// //     //               ),
// //     //               SizedBox(
// //     //                 height: 10,
// //     //               ),
// //     //
// //     //               // albums
// //     //
// //     //               Row(
// //     //                 children: [
// //     //                   SizedBox(width: 20,),
// //     //                   Text("Albums",style: TextStyle(
// //     //                     fontWeight: FontWeight.bold,
// //     //                     fontSize: 17,
// //     //                   ),
// //     //                   ),
// //     //                   Spacer(),
// //     //                   Text("See all",style: TextStyle(fontWeight: FontWeight.bold),),
// //     //                   SizedBox(width: 20,),
// //     //                 ],
// //     //               ),
// //     //               SizedBox(
// //     //                 height: 7,
// //     //               ),
// //     //               Container(
// //     //                 height: 100,
// //     //                 width: MediaQuery.of(context).size.width * .91,
// //     //                 decoration: BoxDecoration(
// //     //                   gradient: LinearGradient(
// //     //                     begin: Alignment.topLeft,
// //     //                     end: Alignment.topRight,
// //     //                     colors: [
// //     //                       Color.fromRGBO(124, 87, 187, .5),
// //     //                       Color.fromRGBO(128, 200, 226, 1)
// //     //                     ],
// //     //                   ),
// //     //                   borderRadius: BorderRadius.all(Radius.circular(18)),
// //     //                 ),
// //     //                 child:
// //     //                 Column(
// //     //                   children: [
// //     //                     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
// //     //                     SizedBox(height: 23,),
// //     //                     Row(
// //     //                       children: [
// //     //                         SizedBox(width: 10,),
// //     //                         Text("Animals",style: TextStyle(fontWeight: FontWeight.bold),),
// //     //
// //     //                       ],
// //     //                     ),
// //     //                     SizedBox(height: 10,),
// //     //                     Row(
// //     //                       children: [
// //     //                         SizedBox(width: 10,),
// //     //                         Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold),),
// //     //
// //     //                       ],
// //     //                     ),
// //     //                   ],
// //     //                 ),
// //     //               ),
// //     //               // SizedBox(
// //     //               //   height: 10,
// //     //               // ),
// //     //               // Row(
// //     //               //   children: [
// //     //               //     SizedBox(width: 20,),
// //     //               //     Text("Rcently",style: TextStyle(
// //     //               //       fontWeight: FontWeight.bold,
// //     //               //       fontSize: 17,
// //     //               //     ),),
// //     //               //   ],
// //     //               // ),
// //     //               // SizedBox(
// //     //               //   height: 10,
// //     //               // ),
// //     //               // SizedBox(
// //     //               //   height: 100,
// //     //               //   child: ListView.builder(
// //     //               //       scrollDirection: Axis.horizontal,
// //     //               //       itemCount: products.length,
// //     //               //       itemBuilder: (context,index){
// //     //               //         return    Padding(
// //     //               //           padding: const EdgeInsets.all(8.0),
// //     //               //           child: Container(
// //     //               //             height: 50,
// //     //               //             width: 80,
// //     //               //             child: ClipRRect(
// //     //               //               borderRadius: BorderRadius.circular(10),
// //     //               //               child: Image.asset(
// //     //               //                 '${products[index]['image_path']}',
// //     //               //                 fit: BoxFit.cover,
// //     //               //               ),
// //     //               //             ),
// //     //               //           ),
// //     //               //         );
// //     //               //       }
// //     //               //   ),
// //     //               // ),
// //     //               SizedBox(height: 20,),
// //     //               //all photos
// //     //               SingleChildScrollView(
// //     //                 scrollDirection: Axis.horizontal,
// //     //                 child: Row(
// //     //                   children: [
// //     //                     Column(
// //     //                       children: [
// //     //                         GestureDetector(
// //     //                           onTap: () async {
// //     //                             final pickedImage=await ImagePicker().pickImage(source: ImageSource.gallery);
// //     //                             if(pickedImage != null){
// //     //                               //File imageFile=File(pickedImage.path);
// //     //                               // Navigator.push(context,
// //     //                               //     MaterialPageRoute(builder: (context)=>Filters(imageFile: imageFile,)));
// //     //                             }
// //     //                           },// onTap: (){
// //     //                           //   all = true;
// //     //                           //   jackets = false;
// //     //                           //   shoes = false;
// //     //                           //   setState(() {
// //     //                           //
// //     //                           //   });
// //     //                           // },
// //     //                           child:
// //     //                           Material(
// //     //                             // elevation: 3.0,
// //     //                             borderRadius: BorderRadius.circular(10),
// //     //                             // color: all? Colors.deepPurple[200] : Colors.white,
// //     //                             //  color: selectedCategoryProvider.selectedCategory == index
// //     //                             //      ? Colors.white
// //     //                             //      : Colors.white.withOpacity(0.4),
// //     //                             child: Container(
// //     //                               height: 55,
// //     //                               width: 55,
// //     //                               decoration: BoxDecoration(
// //     //                                 borderRadius: BorderRadius.circular(10),
// //     //                                 color: Colors.deepPurple[100],
// //     //                               ),
// //     //                               child: Padding(
// //     //                                 padding: const EdgeInsets.all(8.0),
// //     //                                 child:
// //     //                                 Icon(Icons.border_all_outlined),
// //     //                               ),
// //     //                             ),
// //     //                           ),
// //     //                         ),
// //     //                         SizedBox(height: 5,),
// //     //                         Text("All photos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
// //     //                       ],
// //     //                     ),
// //     //                     SizedBox(width: 33,),
// //     //                     Column(
// //     //                       children: [
// //     //                         GestureDetector(
// //     //                           onTap: () async {
// //     //                             final pickedImage=await ImagePicker().pickImage(source: ImageSource.camera);
// //     //                             if(pickedImage != null){
// //     //                             //  File imageFile=File(pickedImage.path);
// //     //                               // Navigator.push(context,
// //     //                               //     MaterialPageRoute(builder: (context)=>Filters(imageFile: imageFile,)));
// //     //                             }
// //     //                           },
// //     //                           // onTap: (){
// //     //                           //   all = true;
// //     //                           //   jackets = false;
// //     //                           //   shoes = false;
// //     //                           //   setState(() {
// //     //                           //
// //     //                           //   });
// //     //                           // },
// //     //                           child:
// //     //                           Material(
// //     //                             // elevation: 3.0,
// //     //                             borderRadius: BorderRadius.circular(10),
// //     //                             // color: all? Colors.deepPurple[200] : Colors.white,
// //     //                             //  color: selectedCategoryProvider.selectedCategory == index
// //     //                             //      ? Colors.white
// //     //                             //      : Colors.white.withOpacity(0.4),
// //     //                             child: Container(
// //     //                               height: 55,
// //     //                               width: 55,
// //     //                               decoration: BoxDecoration(
// //     //                                 borderRadius: BorderRadius.circular(10),
// //     //                                 color: Colors.deepPurple[100],
// //     //                               ),
// //     //                               child: Padding(
// //     //                                 padding: const EdgeInsets.all(8.0),
// //     //                                 child:
// //     //                                 Icon(Icons.camera_alt),
// //     //                               ),
// //     //                             ),
// //     //                           ),
// //     //                         ),
// //     //                         SizedBox(height: 5,),
// //     //                         Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
// //     //                       ],
// //     //                     ),
// //     //                     SizedBox(width: 32,),
// //     //                     Column(
// //     //                       children: [
// //     //                         GestureDetector(
// //     //                           // onTap: (){
// //     //                           //   all = true;
// //     //                           //   jackets = false;
// //     //                           //   shoes = false;
// //     //                           //   setState(() {
// //     //                           //
// //     //                           //   });
// //     //                           // },
// //     //                           child:
// //     //                           Material(
// //     //                             // elevation: 3.0,
// //     //                             borderRadius: BorderRadius.circular(10),
// //     //                             // color: all? Colors.deepPurple[200] : Colors.white,
// //     //                             //  color: selectedCategoryProvider.selectedCategory == index
// //     //                             //      ? Colors.white
// //     //                             //      : Colors.white.withOpacity(0.4),
// //     //                             child: Container(
// //     //                               height: 55,
// //     //                               width: 55,
// //     //                               decoration: BoxDecoration(
// //     //                                 borderRadius: BorderRadius.circular(10),
// //     //                                 color: Colors.deepPurple[100],
// //     //                               ),
// //     //                               child: Padding(
// //     //                                 padding: const EdgeInsets.all(8.0),
// //     //                                 child:
// //     //                                 Icon(Icons.download_for_offline),
// //     //                               ),
// //     //                             ),
// //     //                           ),
// //     //                         ),
// //     //                         SizedBox(height: 5,),
// //     //                         Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
// //     //                       ],
// //     //                     ),
// //     //                     SizedBox(width: 30,),
// //     //                     Column(
// //     //                       children: [
// //     //                         GestureDetector(
// //     //                           // onTap: (){
// //     //                           //   all = true;
// //     //                           //   jackets = false;
// //     //                           //   shoes = false;
// //     //                           //   setState(() {
// //     //                           //
// //     //                           //   });
// //     //                           // },
// //     //                           child:
// //     //                           Material(
// //     //                             // elevation: 3.0,
// //     //                             borderRadius: BorderRadius.circular(10),
// //     //                             // color: all? Colors.deepPurple[200] : Colors.white,
// //     //                             //  color: selectedCategoryProvider.selectedCategory == index
// //     //                             //      ? Colors.white
// //     //                             //      : Colors.white.withOpacity(0.4),
// //     //                             child: Container(
// //     //                               height: 55,
// //     //                               width: 55,
// //     //                               decoration: BoxDecoration(
// //     //                                 borderRadius: BorderRadius.circular(10),
// //     //                                 color: Colors.deepPurple[100],
// //     //                               ),
// //     //                               child: Padding(
// //     //                                 padding: const EdgeInsets.all(8.0),
// //     //                                 child:
// //     //                                 Icon(Icons.file_copy_rounded),
// //     //                               ),
// //     //                             ),
// //     //                           ),
// //     //                         ),
// //     //                         SizedBox(height: 5,),
// //     //                         Text("Others",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
// //     //                       ],
// //     //                     ),
// //     //                   ],
// //     //                 ),
// //     //               ),
// //     //               SizedBox(
// //     //                 height: 15,
// //     //               ), //november
// //     //               Row(
// //     //                 children: [
// //     //                   SizedBox(width: 20,),
// //     //                   Text("November , 2019",style: TextStyle(
// //     //                     fontWeight: FontWeight.bold,
// //     //                     fontSize: 17,
// //     //                   ),),
// //     //                 ],
// //     //               ),
// //     //               SizedBox(
// //     //                 height: 10,
// //     //               ),
// //     //               SingleChildScrollView(
// //     //                 scrollDirection: Axis.horizontal,
// //     //                 child: Padding(
// //     //                   padding: const EdgeInsets.only(left: 20,right: 20),
// //     //                   child: Row(
// //     //                     children: [
// //     //                       Container(
// //     //                         height: 90,
// //     //                         width: 80,
// //     //                         child: ClipRRect(
// //     //                           borderRadius: BorderRadius.circular(10),
// //     //                           child: Image.asset(
// //     //                             'assets/images/ai1.png',
// //     //                             fit: BoxFit.cover,
// //     //                           ),
// //     //                         ),
// //     //                       ),
// //     //                       SizedBox(width: 10,),
// //     //                       Container(
// //     //                         height: 90,
// //     //                         width: 80,
// //     //                         child: ClipRRect(
// //     //                           borderRadius: BorderRadius.circular(10),
// //     //                           child: Image.asset(
// //     //                             'assets/images/ai2.png',
// //     //                             fit: BoxFit.cover,
// //     //                           ),
// //     //                         ),
// //     //                       ),
// //     //                       SizedBox(width: 10,),
// //     //                       Container(
// //     //                         height: 90,
// //     //                         width: 80,
// //     //                         child: ClipRRect(
// //     //                           borderRadius: BorderRadius.circular(10),
// //     //                           child: Image.asset(
// //     //                             'assets/images/ai3.png',
// //     //                             fit: BoxFit.cover,
// //     //                           ),
// //     //                         ),
// //     //                       ),
// //     //                       SizedBox(width: 10,),
// //     //                       Stack(
// //     //                           children:
// //     //                           [
// //     //                             Container(
// //     //                               height: 90,
// //     //                               width: 80,
// //     //                               child: ClipRRect(
// //     //                                 borderRadius: BorderRadius.circular(10),
// //     //                                 child: Image.asset(
// //     //                                   'assets/images/ai4.png',
// //     //                                   fit: BoxFit.cover,
// //     //                                 ),
// //     //                               ),
// //     //                             ),]
// //     //                       ),
// //     //                     ],
// //     //                   ),
// //     //                 ),
// //     //               ),
// //     //               //April
// //     //               Row(
// //     //                 children: [
// //     //                   SizedBox(width: 20,),
// //     //                   Text("April , 2019",style: TextStyle(
// //     //                     fontWeight: FontWeight.bold,
// //     //                     fontSize: 17,
// //     //                   ),),
// //     //                 ],
// //     //               ),
// //     //               SizedBox(
// //     //                 height: 10,
// //     //               ),
// //     //               SingleChildScrollView(
// //     //                 scrollDirection: Axis.horizontal,
// //     //                 child: Padding(
// //     //                   padding: const EdgeInsets.only(left: 20,right: 20),
// //     //                   child: Row(
// //     //                     children: [
// //     //                       Container(
// //     //                         height: 90,
// //     //                         width: 80,
// //     //                         child: ClipRRect(
// //     //                           borderRadius: BorderRadius.circular(10),
// //     //                           child: Image.asset(
// //     //                             'assets/images/ai1.png',
// //     //                             fit: BoxFit.cover,
// //     //                           ),
// //     //                         ),
// //     //                       ),
// //     //                       SizedBox(width: 10,),
// //     //                       Container(
// //     //                         height: 90,
// //     //                         width: 80,
// //     //                         child: ClipRRect(
// //     //                           borderRadius: BorderRadius.circular(10),
// //     //                           child: Image.asset(
// //     //                             'assets/images/ai2.png',
// //     //                             fit: BoxFit.cover,
// //     //                           ),
// //     //                         ),
// //     //                       ),
// //     //                       SizedBox(width: 10,),
// //     //                       Container(
// //     //                         height: 90,
// //     //                         width: 80,
// //     //                         child: ClipRRect(
// //     //                           borderRadius: BorderRadius.circular(10),
// //     //                           child: Image.asset(
// //     //                             'assets/images/ai3.png',
// //     //                             fit: BoxFit.cover,
// //     //                           ),
// //     //                         ),
// //     //                       ),
// //     //                       SizedBox(width: 10,),
// //     //                       Stack(
// //     //                           children:
// //     //                           [
// //     //                             Container(
// //     //                               height: 90,
// //     //                               width: 80,
// //     //                               child: ClipRRect(
// //     //                                 borderRadius: BorderRadius.circular(10),
// //     //                                 child: Image.asset(
// //     //                                   'assets/images/ai4.png',
// //     //                                   fit: BoxFit.cover,
// //     //                                 ),
// //     //                               ),
// //     //                             ),]
// //     //                       ),
// //     //                     ],
// //     //                   ),
// //     //                 ),
// //     //               ),
// //     //             ],
// //     //           ),
// //     //         ),
// //     //       ),
// //     //       // Continue with the rest of your content...
// //     //     ],
// //     //   ),
// //     // );
// //   }
// // }
//
//
// import 'dart:io';
// import 'Filters.dart';
// void main(){
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Enhance()));
// }
//
// class Enhance extends StatefulWidget {
//   const Enhance({super.key});
//
//   @override
//   State<Enhance> createState() => _EnhanceState();
// }
//
// class _EnhanceState extends State<Enhance> {
//   List<dynamic> storageImages = [];
//
//
//   /* Widget _buildUserImage(String imageURL) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 50,
//         width: 80,
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(10),
//           child: Image.network(
//             imageURL,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
//   Widget _buildDefaultImageList() {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         return Padding(
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
//       },
//     );
//   }*/
//
//   Future<void> fetchImages() async {
//     // Fetch products from Firestore
//     QuerySnapshot querySnapshot =
//     await FirebaseFirestore.instance.collection('images').get();
//     print(querySnapshot);
//     setState(() {
//       storageImages = querySnapshot.docs.map((doc) => doc.data()).toList();
//     });
//   }
//
//   Future<String> getImageUrl(String imagePath) async {
//     // Get download URL from Firebase Storage
//     String downloadURL = await FirebaseStorage.instance
//         .ref()
//         .child(imagePath)
//         .getDownloadURL();
//     debugPrint(downloadURL.toString());
//     return downloadURL;
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     fetchImages();
//   }
//   int _selectedIndex = 0;
//   List products = [
//     {"Product_name":"AI Avatar Generator","price":"\$200" ,"image_path":'assets/images/ai1.png'},
//     {"Product_name":"AI Scene Generator","price":"\$200" ,"image_path":'assets/images/ai2.png'},
//     {"Product_name":"AI Anime Generator","price":"\$200" ,"image_path":'assets/images/ai3.png'},
//     {"Product_name":"AI Cartoonizer","price":"\$200" ,"image_path":'assets/images/ai4.png'},
//     {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/images/ai5.png'},
//     {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/images/ai6.png'},
//     // {"Product_name":"AI  Generator","price":"\$200" ,"image_path":'assets/images/1.png'},
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return
//       SafeArea(
//         child:
//         Scaffold(
//           // appBar: AppBar(
//           //   backgroundColor: Colors.grey[100],
//           //   centerTitle: true,
//           //   leading:
//           //   CircleAvatar(
//           //     radius: 10,
//           //    backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/128/847/847969.png',),
//           //   ),
//           //   title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
//           //   actions: [
//           //     // IconButton(
//           //     //   onPressed: () {
//           //     //     // Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),
//           //     //     // ),);
//           //     //   },
//           //     //   icon: Padding(
//           //     //     padding: const EdgeInsets.all(4.0),
//           //     //     child: CircleAvatar(child: Image(image: AssetImage('assets/cart.png'),height: 20,width: 20,)),
//           //     //   ),
//           //     // ),
//           //     // IconButton(
//           //     //   onPressed: ()
//           //     //   {
//           //     //
//           //     //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
//           //     //
//           //     //     //  Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),),);
//           //     //   },
//           //     //   icon: CircleAvatar(child: Image(image: AssetImage('assets/profile.png',),),radius: 15,),
//           //     //
//           //     // ),
//           //     // Stack(
//           //     //     children: [
//           //     //       _image != null
//           //     //           ? CircleAvatar(
//           //     //         radius: 30,
//           //     //         backgroundImage: MemoryImage(_image!),
//           //     //       )
//           //     //           : CircleAvatar(
//           //     //         backgroundImage: NetworkImage(
//           //     //             'https://t4.ftcdn.net/jpg/05/86/91/55/240_F_586915596_gPqgxPdgdJ4OXjv6GCcDWNxTjKDWZ3JD.jpg'),
//           //     //         radius: 20,
//           //     //       ),
//           //     //     ]),
//           //     IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.black,),),
//           //     IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.black,),),
//           //     SizedBox(width: 15,),
//           //   ],
//           // ),
//           body:
//           Container(
//             child: Column(
//               children: [
//                 SizedBox(height: 10,),
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: 20,
//                     ),
//                     CircleAvatar(
//                         radius:25,
//                    // backgroundImage:,
//                       backgroundImage: AssetImage('assets/images/ai1.png'),
//                     ),
//                     SizedBox(
//                       width: 18,
//                     ),
//                     Column(
//                       children: [
//                         Text(
//                           "Welcome back",
//                           style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                         ),
//
//                         Row(
//                           children: [
//                             SizedBox(width: 7,),
//                             Text("Khushali Sarvaiya"),
//                           ],
//                         ),
//                       ],
//                     ),
//                     // SizedBox(width: 30,),
//                     Spacer(),
//
//                     Row(
//                       children: [
//                         //this is for notification
//                         // Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3239/3239952.png',),
//                         //   height: 20,width: 20,),
//                         SizedBox(width: 10,),
//                         GestureDetector(
//                           onTap: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
//                           },
//                           child: Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/2040/2040504.png',),
//                             height: 20,width: 20,),
//                         ),
//                         SizedBox(width: 10,),
//                         Stack(
//                             children:
//                             [
//                               Material(
//                                 borderRadius: BorderRadius.circular(20),
//                                 child: Container(
//                                   height: 30,
//                                   width: 50,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Colors.deepPurple[200],
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 top: 7,
//                                 left: 4,
//                                 child: Image(
//                                   image: NetworkImage('https://cdn-icons-png.flaticon.com/128/6423/6423882.png',),
//                                   height: 15,width: 15,),
//                               ),
//                               Positioned(
//                                   top: 7,
//                                   right: 9,
//                                   child: Text("Pro",style: TextStyle(fontSize: 10),)),
//                             ]
//                         ),
//                         SizedBox(
//                           width: 22,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10,),
//                 Expanded(
//                   child:
//                   SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 10,
//                         ),
//                         // Container(
//                         //   height: 150,
//                         //   width: MediaQuery.of(context).size.width * .9,
//                         //   decoration: BoxDecoration(
//                         //     gradient: LinearGradient(
//                         //       begin: Alignment.topLeft,
//                         //       end: Alignment.topRight,
//                         //       colors: [
//                         //         Color.fromRGBO(124, 87, 187, .5),
//                         //         Color.fromRGBO(128, 200, 226, 1)
//                         //       ],
//                         //     ),
//                         //     borderRadius: BorderRadius.all(Radius.circular(18)),
//                         //   ),
//                         //   child:
//                         //   Column(
//                         //     children: [
//                         //     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
//                         //       SizedBox(height: 17,),
//                         //       Row(
//                         //         children: [
//                         //           SizedBox(width: 20,),
//                         //           Container(
//                         //             height: 120,
//                         //             width: 100,
//                         //             decoration: BoxDecoration(
//                         //               color: Colors.white.withOpacity(0.3),
//                         //               borderRadius: BorderRadius.all(Radius.circular(18)),
//                         //             ),
//                         //             child: Column(
//                         //               children: [
//                         //                 SizedBox(height: 10,),
//                         //                 Text("Get the special discount",style: TextStyle(fontSize: 7,color: Colors.white,fontWeight: FontWeight.w800),),
//                         //                 Text("50%\nOFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white),),
//                         //                 //Text("OFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
//                         //               ],
//                         //             ),
//                         //           ),
//                         //           SizedBox(width: 20,),
//                         //           //SizedBox(width: MediaQuery.of(context).size.width * .2,),
//                         //         ],
//                         //       ),
//                         //     ],
//                         //   ),
//                         // ),
//                         //
//                         // SizedBox(height: 5,),
//                         //
//                         //    Expanded(
//                         //        child: Padding(
//                         //      padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
//                         //      child: Grid(),
//                         //    )
//                         //    ),
//                         // SingleChildScrollView(
//                         //   child: Padding(
//                         //     padding:  EdgeInsets.only(left: 20,right: 20),
//                         //     child: SizedBox(
//                         //          height: 330,
//                         //         child: Expanded(
//                         //         //  flex: 20,
//                         //             child: Grid())),
//                         //   ),
//                         // ),
//                         //recently
//                         //recently
//                         Row(
//                           children: [
//                             SizedBox(width: 22,),
//                             Text("Rcently",style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17,
//                             ),),
//                           ],
//                         ),
//
//
//                         // Padding(
//                         //     padding: const EdgeInsets.only(left: 13, right: 13),
//                         //     child: SizedBox(
//                         //       height: 100,
//                         //       child:
//                         //           FutureBuilder<DocumentSnapshot>(
//                         //             future: FirebaseFirestore.instance.collection('users').doc('${FirebaseAuth.instance.currentUser!.uid}').get(), // Replace 'user_id' with the actual user ID
//                         //             builder: (context, snapshot) {
//                         //               if (snapshot.connectionState == ConnectionState.waiting) {
//                         //                 return CircularProgressIndicator();
//                         //               } else if (snapshot.hasError) {
//                         //                 return Text('Error: ${snapshot.error}');
//                         //               } else {
//                         //                 final data = snapshot.data!.data() as Map<String, dynamic>;
//                         //                 print(data);
//                         //                 final imageURL = data['imageURL'] as String;
//                         //                 print(imageURL);// Assuming 'images' is the field in your document containing the image URL
//                         //                 return Padding(
//                         //                   padding: const EdgeInsets.all(8.0),
//                         //                   child: Container(
//                         //                     height: 50,
//                         //                     width: 80,
//                         //                     child: ClipRRect(
//                         //                       borderRadius: BorderRadius.circular(10),
//                         //                       child: Image.network(
//                         //                         imageURL,
//                         //                         fit: BoxFit.cover,
//                         //                       ),
//                         //                     ),
//                         //                   ),
//                         //                 );
//                         //               }
//                         //             },
//                         //
//                         //
//                         //       ),
//                         //     ),
//                         //   ),
//
//                         // Padding(
//                         //   padding: const EdgeInsets.only(left: 13,right: 13),
//                         //   child: SizedBox(
//                         //     height: 100,
//                         //     child: ListView.builder(
//                         //         scrollDirection: Axis.horizontal,
//                         //         itemCount: products.length,
//                         //         itemBuilder: (context,index){
//                         //           return    Padding(
//                         //             padding: const EdgeInsets.all(8.0),
//                         //             child: Container(
//                         //               height: 50,
//                         //               width: 80,
//                         //               child: ClipRRect(
//                         //                 borderRadius: BorderRadius.circular(10),
//                         //                 child: Image.asset(
//                         //                   '${products[index]['image_path']}',
//                         //                   fit: BoxFit.cover,
//                         //                 ),
//                         //               ),
//                         //             ),
//                         //           );
//                         //         }
//                         //     ),
//                         //   ),
//                         // ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 13, right: 13),
//                           child: SizedBox(
//                             height: 100,
//                             child: StreamBuilder<QuerySnapshot>(
//                               stream: FirebaseFirestore.instance
//                                   .collection('users')
//                                   .doc('${FirebaseAuth.instance.currentUser!.uid}')
//                                   .collection('images')
//                                   .orderBy('uploadTime', descending: true)
//                                   .snapshots(),
//                               builder: (context, snapshot) {
//                                 if (snapshot.connectionState == ConnectionState.waiting) {
//                                   return Center(child: CircularProgressIndicator());
//                                 } else if (snapshot.hasError) {
//                                   return Text('Error: ${snapshot.error}');
//                                 } else if (snapshot.data!.docs.isEmpty) {
//                                   // If there are no images uploaded by the user, display default local images
//                                   return ListView.builder(
//                                     scrollDirection: Axis.horizontal,
//                                     itemCount: products.length,
//                                     itemBuilder: (context, index) {
//                                       return Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
//                                           height: 50,
//                                           width: 80,
//                                           child: ClipRRect(
//                                             borderRadius: BorderRadius.circular(10),
//                                             child: Image.asset(
//                                               '${products[index]['image_path']}',
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                   );
//                                 } else {
//                                   // If there are images uploaded by the user, display them
//                                   final List<Widget> imageWidgets = [];
//                                   final docs = snapshot.data!.docs;
//                                   for (var doc in docs) {
//                                     final data = doc.data() as Map<String, dynamic>;
//                                     final imageURL = data['imageURL'] as String;
//                                     final uploadTime = DateTime.parse(data['uploadTime']);
//                                     print(imageURL);
//                                     print(uploadTime);
//                                     imageWidgets.add(
//                                       Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Container(
//                                           width: 80,
//                                           height: 100,
//                                           child: ClipRRect(
//                                             borderRadius: BorderRadius.circular(10),
//                                             child: Image.network(
//                                               imageURL,
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     );
//                                   }
//                                   return ListView(
//                                     scrollDirection: Axis.horizontal,
//                                     children: imageWidgets,
//                                   );
//                                 }
//                               },
//                             ),
//                           ),
//                         ),
//
//                         SizedBox(
//                           height: 10,
//                         ),
//
//                         // albums
//                         Row(
//                           children: [
//                             SizedBox(width: 20,),
//                             Text("Albums",style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17,
//                             ),
//                             ),
//                             Spacer(),
//                             Text("See all",style: TextStyle(fontWeight: FontWeight.bold),),
//                             SizedBox(width: 20,),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 7,
//                         ),
//                         // Material(
//                         //   elevation: 3,
//                         //   borderRadius: BorderRadius.all(Radius.circular(18)),
//                         //   child: Container(
//                         //     height: 100,
//                         //     width: MediaQuery.of(context).size.width * .91,
//                         //     decoration: BoxDecoration(
//                         //       // gradient: LinearGradient(
//                         //       //   begin: Alignment.topLeft,
//                         //       //   end: Alignment.topRight,
//                         //       //   colors: [
//                         //       //     Color.fromRGBO(124, 87, 187, .5),
//                         //       //     Color.fromRGBO(128, 200, 226, 1)
//                         //       //   ],
//                         //       // ),
//                         //       borderRadius: BorderRadius.all(Radius.circular(18)),
//                         //     ),
//                         //     child:
//                         //     Column(
//                         //       children: [
//                         //       //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
//                         //         SizedBox(height: 23,),
//                         //         Row(
//                         //           children: [
//                         //             SizedBox(width: 10,),
//                         //           Text("Animals",style: TextStyle(fontWeight: FontWeight.bold),),
//                         //
//                         //           ],
//                         //         ),
//                         //         SizedBox(height: 10,),
//                         //         Row(
//                         //           children: [
//                         //             SizedBox(width: 10,),
//                         //             Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold),),
//                         //
//                         //           ],
//                         //         ),
//                         //       ],
//                         //     ),
//                         //   ),
//                         // ),
//                         // SizedBox(
//                         //   height: 10,
//                         // ),
//                         // Row(
//                         //   children: [
//                         //     SizedBox(width: 20,),
//                         //     Text("Rcently",style: TextStyle(
//                         //       fontWeight: FontWeight.bold,
//                         //       fontSize: 17,
//                         //     ),),
//                         //   ],
//                         // ),
//                         // SizedBox(
//                         //   height: 10,
//                         // ),
//                         // SizedBox(
//                         //   height: 100,
//                         //   child: ListView.builder(
//                         //       scrollDirection: Axis.horizontal,
//                         //       itemCount: products.length,
//                         //       itemBuilder: (context,index){
//                         //         return    Padding(
//                         //           padding: const EdgeInsets.all(8.0),
//                         //           child: Container(
//                         //             height: 50,
//                         //             width: 80,
//                         //             child: ClipRRect(
//                         //               borderRadius: BorderRadius.circular(10),
//                         //               child: Image.asset(
//                         //                 '${products[index]['image_path']}',
//                         //                 fit: BoxFit.cover,
//                         //               ),
//                         //             ),
//                         //           ),
//                         //         );
//                         //       }
//                         //   ),
//                         // ),
//                         Material(
//                           elevation: 3,
//                           borderRadius: BorderRadius.all(Radius.circular(18)),
//                           child: Container(
//                             height: 100,
//                             width: MediaQuery.of(context).size.width * .91,
//                             decoration: BoxDecoration(
//                               // Replace the gradient with Image.network
//                               image: DecorationImage(
//                                 image: AssetImage(
//                                   'assets/images/img_7.png',
//                                 ),
//                                 fit: BoxFit.cover, // Adjust this based on your needs
//                               ),
//                               borderRadius: BorderRadius.all(Radius.circular(18)),
//                             ),
//                             child: Column(
//                               children: [
//                                 SizedBox(height: 23,),
//                                 Row(
//                                   children: [
//                                     SizedBox(width: 10,),
//                                     Text("Animals",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//                                   ],
//                                 ),
//                                 SizedBox(height: 10,),
//                                 Row(
//                                   children: [
//                                     SizedBox(width: 10,),
//                                     Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//
//                         SizedBox(height: 20,),
//                         //all photos
//                         SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child: Row(
//                             children: [
//                               Column(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () async {
//                                       final pickedImage=await ImagePicker().pickImage(source: ImageSource.gallery);
//                                       if(pickedImage != null){
//                                         File imageFile=File(pickedImage.path);
//                                         Navigator.push(context,
//                                             MaterialPageRoute(builder: (context)=>Filters(imageFile: imageFile,)));
//                                       }
//                                     },// onTap: (){
//                                     //   all = true;
//                                     //   jackets = false;
//                                     //   shoes = false;
//                                     //   setState(() {
//                                     //
//                                     //   });
//                                     // },
//                                     child:
//                                     // Material(
//                                     //    elevation: 3.0,
//                                     //   borderRadius: BorderRadius.circular(10),
//                                     //  // color: all? Colors.deepPurple[200] : Colors.white,
//                                     //   //  color: selectedCategoryProvider.selectedCategory == index
//                                     //   //      ? Colors.white
//                                     //   //      : Colors.white.withOpacity(0.4),
//                                     //   child: Container(
//                                     //     height: 55,
//                                     //     width: 55,
//                                     //     decoration: BoxDecoration(
//                                     //       borderRadius: BorderRadius.circular(10),
//                                     //       color: Colors.deepPurple[100],
//                                     //     ),
//                                     //     child:
//                                     //     // Padding(
//                                     //     //   padding: const EdgeInsets.all(8.0),
//                                     //     //   child:
//                                     //     //   Icon(Icons.border_all_outlined),
//                                     //     // ),
//                                     //     Image.asset('assets/images/img_8.png',height: 5,width: 5,),
//                                     //   ),
//                                     // ),
//                                     Material(
//                                       elevation: 3.0,
//                                       borderRadius: BorderRadius.circular(10),
//                                       child: Container(
//                                         height: 55,
//                                         width: 55,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(10),
//                                           color: Colors.deepPurple[100],
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(12.0),
//                                           child: Image.asset(
//                                             'assets/images/img_9.png',
//                                             height: 5, // Adjust the height as needed
//                                             width: 5,  // Adjust the width as needed
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 5,),
//                                   Text("All photos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
//                                 ],
//                               ),
//                               SizedBox(width: 33,),
//                               Column(
//                                 children: [
//                                   GestureDetector(
//                                     onTap: () async {
//                                       final pickedImage=await ImagePicker().pickImage(source: ImageSource.camera);
//                                       if(pickedImage != null){
//                                         File imageFile=File(pickedImage.path);
//                                         Navigator.push(context,
//                                             MaterialPageRoute(builder: (context)=>Filters(imageFile: imageFile,)));
//                                       }
//                                     },
//                                     // onTap: (){
//                                     //   all = true;
//                                     //   jackets = false;
//                                     //   shoes = false;
//                                     //   setState(() {
//                                     //
//                                     //   });
//                                     // },
//                                     child:
//                                     Material(
//                                       elevation: 3.0,
//                                       borderRadius: BorderRadius.circular(10),
//                                       // color: all? Colors.deepPurple[200] : Colors.white,
//                                       //  color: selectedCategoryProvider.selectedCategory == index
//                                       //      ? Colors.white
//                                       //      : Colors.white.withOpacity(0.4),
//                                       child: Container(
//                                         height: 55,
//                                         width: 55,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(10),
//                                           color: Colors.deepPurple[100],
//                                         ),
//                                         child:
//                                         Material(
//                                           elevation: 3.0,
//                                           borderRadius: BorderRadius.circular(10),
//                                           child: Container(
//                                             height: 55,
//                                             width: 55,
//                                             decoration: BoxDecoration(
//                                               borderRadius: BorderRadius.circular(10),
//                                               color: Colors.deepPurple[100],
//                                             ),
//                                             child:
//                                             Padding(
//                                               padding: const EdgeInsets.all(8.0),
//                                               child: Image.asset(
//                                                 'assets/images/img_8.png',
//                                                 height: 5, // Adjust the height as needed
//                                                 width: 5,  // Adjust the width as needed
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         // Padding(
//                                         //   padding: const EdgeInsets.all(8.0),
//                                         //   child:
//                                         //   Icon(Icons.camera_alt),
//                                         // ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 5,),
//                                   Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
//                                 ],
//                               ),
//                               SizedBox(width: 32,),
//                               Column(
//                                 children: [
//                                   GestureDetector(
//                                     // onTap: (){
//                                     //   all = true;
//                                     //   jackets = false;
//                                     //   shoes = false;
//                                     //   setState(() {
//                                     //
//                                     //   });
//                                     // },
//                                     child:
//                                     Material(
//                                       elevation: 3.0,
//                                       borderRadius: BorderRadius.circular(10),
//                                       // color: all? Colors.deepPurple[200] : Colors.white,
//                                       //  color: selectedCategoryProvider.selectedCategory == index
//                                       //      ? Colors.white
//                                       //      : Colors.white.withOpacity(0.4),
//                                       child: Container(
//                                         height: 55,
//                                         width: 55,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(10),
//                                           color: Colors.deepPurple[100],
//                                         ),
//                                         child:
//                                         Padding(
//                                           padding: const EdgeInsets.all(15.0),
//                                           child: Image.asset(
//                                             'assets/images/img_10.png',
//                                             height: 5, // Adjust the height as needed
//                                             width: 5,  // Adjust the width as needed
//                                           ),
//                                         ),
//                                         // Padding(
//                                         //   padding: const EdgeInsets.all(8.0),
//                                         //   child:
//                                         //   Icon(Icons.download_for_offline),
//                                         // ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 5,),
//                                   Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
//                                 ],
//                               ),
//                               SizedBox(width: 30,),
//                               Column(
//                                 children: [
//                                   GestureDetector(
//                                     onTap:(){
//                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondHome()));                                   },
//                                     // onTap: (){
//                                     //   all = true;
//                                     //   jackets = false;
//                                     //   shoes = false;
//                                     //   setState(() {
//                                     //
//                                     //   });
//                                     // },
//                                     child:
//                                     Material(
//                                       elevation: 3.0,
//                                       borderRadius: BorderRadius.circular(10),
//                                       // color: all? Colors.deepPurple[200] : Colors.white,
//                                       //  color: selectedCategoryProvider.selectedCategory == index
//                                       //      ? Colors.white
//                                       //      : Colors.white.withOpacity(0.4),
//                                       child: Container(
//                                         height: 55,
//                                         width: 55,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(10),
//                                           color: Colors.deepPurple[100],
//                                         ),
//                                         child:
//                                         Padding(
//                                           padding: const EdgeInsets.all(14.0),
//                                           child: Image.asset(
//                                             'assets/images/img_11.png',
//                                             height: 5, // Adjust the height as needed
//                                             width: 5,  // Adjust the width as needed
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 5,),
//                                   Text("Others",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//
//                         //november
//                         Row(
//                           children: [
//                             SizedBox(width: 20,),
//                             Text("November , 2019",style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17,
//                             ),),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 20,right: 20),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   height: 90,
//                                   width: 80,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                       'assets/images/ai1.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Container(
//                                   height: 90,
//                                   width: 80,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                       'assets/images/ai2.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Container(
//                                   height: 90,
//                                   width: 80,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                       'assets/images/ai3.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Stack(
//                                     children:
//                                     [
//                                       Container(
//                                         height: 90,
//                                         width: 80,
//                                         child: ClipRRect(
//                                           borderRadius: BorderRadius.circular(10),
//                                           child: Image.asset(
//                                             'assets/images/ai4.png',
//                                             fit: BoxFit.cover,
//                                           ),
//                                         ),
//                                       ),]
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         //April
//                         Row(
//                           children: [
//                             SizedBox(width: 20,),
//                             Text("April , 2019",style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 17,
//                             ),),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         SingleChildScrollView(
//                           scrollDirection: Axis.horizontal,
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 20,right: 20),
//                             child: Row(
//                               children: [
//                                 Container(
//                                   height: 90,
//                                   width: 80,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                       'assets/images/ai1.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Container(
//                                   height: 90,
//                                   width: 80,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                       'assets/images/ai2.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Container(
//                                   height: 90,
//                                   width: 80,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10),
//                                     child: Image.asset(
//                                       'assets/images/ai3.png',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: 10,),
//                                 Stack(
//                                     children:
//                                     [
//                                       Container(
//                                         height: 90,
//                                         width: 80,
//                                         child: ClipRRect(
//                                           borderRadius: BorderRadius.circular(10),
//                                           child: Image.asset(
//                                             'assets/images/ai4.png',
//                                             fit: BoxFit.cover,
//                                           ),
//                                         ),
//                                       ),]
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // Continue with the rest of your content...
//               ],
//             ),
//           ),
//         ),
//       );
//     // Container(
//     //   child: Column(
//     //     children: [
//     //       SizedBox(height: 10,),
//     //       Row(
//     //         children: [
//     //           SizedBox(
//     //             width: 20,
//     //           ),
//     //           CircleAvatar(
//     //             backgroundImage: NetworkImage('https://www.flaticon.com/free-icon/profile_3135715'),
//     //           ),
//     //           SizedBox(
//     //             width: 18,
//     //           ),
//     //           Column(
//     //             children: [
//     //               Text(
//     //                 "Welcome back",
//     //                 style:
//     //                 TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//     //               ),
//     //
//     //               Row(
//     //                 children: [
//     //                   SizedBox(width: 7,),
//     //                   Text("Khushali Sarvaiya"),
//     //                 ],
//     //               ),
//     //             ],
//     //           ),
//     //           // SizedBox(width: 30,),
//     //           Spacer(),
//     //           Row(
//     //             children: [
//     //               //this is for notification
//     //               // Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3239/3239952.png',),
//     //               //   height: 20,width: 20,),
//     //               SizedBox(width: 10,),
//     //               Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/2040/2040504.png',),
//     //                 height: 20,width: 20,),
//     //               SizedBox(width: 10,),
//     //               Stack(
//     //                   children:
//     //                   [
//     //                     Material(
//     //                       borderRadius: BorderRadius.circular(20),
//     //                       child: Container(
//     //                         height: 30,
//     //                         width: 50,
//     //                         decoration: BoxDecoration(
//     //                           borderRadius: BorderRadius.circular(20),
//     //                           color: Colors.deepPurple[200],
//     //                         ),
//     //                       ),
//     //                     ),
//     //                     Positioned(
//     //                       top: 7,
//     //                       left: 4,
//     //                       child: Image(
//     //                         image: NetworkImage('https://cdn-icons-png.flaticon.com/128/6423/6423882.png',),
//     //                         height: 15,width: 15,),
//     //                     ),
//     //                     Positioned(
//     //                         top: 7,
//     //                         right: 9,
//     //                         child: Text("Pro",style: TextStyle(fontSize: 10),)),
//     //                   ]
//     //               ),
//     //               SizedBox(
//     //                 width: 22,
//     //               ),
//     //             ],
//     //           ),
//     //         ],
//     //       ),
//     //       SizedBox(height: 10,),
//     //       Expanded(
//     //         child:
//     //         SingleChildScrollView(
//     //           scrollDirection: Axis.vertical,
//     //           child: Column(
//     //             children: [
//     //               SizedBox(
//     //                 height: 10,
//     //               ),
//     //               // Container(
//     //               //   height: 150,
//     //               //   width: MediaQuery.of(context).size.width * .9,
//     //               //   decoration: BoxDecoration(
//     //               //     gradient: LinearGradient(
//     //               //       begin: Alignment.topLeft,
//     //               //       end: Alignment.topRight,
//     //               //       colors: [
//     //               //         Color.fromRGBO(124, 87, 187, .5),
//     //               //         Color.fromRGBO(128, 200, 226, 1)
//     //               //       ],
//     //               //     ),
//     //               //     borderRadius: BorderRadius.all(Radius.circular(18)),
//     //               //   ),
//     //               //   child:
//     //               //   Column(
//     //               //     children: [
//     //               //     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
//     //               //       SizedBox(height: 17,),
//     //               //       Row(
//     //               //         children: [
//     //               //           SizedBox(width: 20,),
//     //               //           Container(
//     //               //             height: 120,
//     //               //             width: 100,
//     //               //             decoration: BoxDecoration(
//     //               //               color: Colors.white.withOpacity(0.3),
//     //               //               borderRadius: BorderRadius.all(Radius.circular(18)),
//     //               //             ),
//     //               //             child: Column(
//     //               //               children: [
//     //               //                 SizedBox(height: 10,),
//     //               //                 Text("Get the special discount",style: TextStyle(fontSize: 7,color: Colors.white,fontWeight: FontWeight.w800),),
//     //               //                 Text("50%\nOFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white),),
//     //               //                 //Text("OFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
//     //               //               ],
//     //               //             ),
//     //               //           ),
//     //               //           SizedBox(width: 20,),
//     //               //           //SizedBox(width: MediaQuery.of(context).size.width * .2,),
//     //               //         ],
//     //               //       ),
//     //               //     ],
//     //               //   ),
//     //               // ),
//     //               //
//     //               // SizedBox(height: 5,),
//     //               //
//     //               //    Expanded(
//     //               //        child: Padding(
//     //               //      padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
//     //               //      child: Grid(),
//     //               //    )
//     //               //    ),
//     //               // SingleChildScrollView(
//     //               //   child: Padding(
//     //               //     padding:  EdgeInsets.only(left: 20,right: 20),
//     //               //     child: SizedBox(
//     //               //          height: 330,
//     //               //         child: Expanded(
//     //               //         //  flex: 20,
//     //               //             child: Grid())),
//     //               //   ),
//     //               // ),
//     //               //recently
//     //               //recently
//     //               Row(
//     //                 children: [
//     //                   SizedBox(width: 22,),
//     //                   Text("Rcently",style: TextStyle(
//     //                     fontWeight: FontWeight.bold,
//     //                     fontSize: 17,
//     //                   ),),
//     //                 ],
//     //               ),
//     //
//     //               Padding(
//     //                 padding: const EdgeInsets.only(left: 13,right: 13),
//     //                 child: SizedBox(
//     //                   height: 100,
//     //                   child: ListView.builder(
//     //                       scrollDirection: Axis.horizontal,
//     //                       itemCount: storageImages.length,
//     //                       itemBuilder: (context,index){
//     //                         return  FutureBuilder(
//     //                             future: getImageUrl(storageImages[index]['images']),
//     //                             builder: (context,snapshot){
//     //                               if(snapshot.connectionState==ConnectionState.waiting){
//     //                                 return CircularProgressIndicator();
//     //                               }else if (snapshot.hasError){
//     //                                 return Text('Error:${snapshot.error}');
//     //                               }
//     //                               else{
//     //                                 return Padding(
//     //                                   padding: const EdgeInsets.all(8.0),
//     //                                   child: Container(
//     //                                     height: 50,
//     //                                     width: 80,
//     //                                     child: ClipRRect(
//     //                                       borderRadius: BorderRadius.circular(10),
//     //                                       child: Image.asset(
//     //                                         '${storageImages[index]['images']}',
//     //                                         fit: BoxFit.cover,
//     //                                       ),
//     //                                     ),
//     //                                   ),
//     //                                 );}
//     //                             });  /*Padding(
//     //                             padding: const EdgeInsets.all(8.0),
//     //                             child: Container(
//     //                               height: 50,
//     //                               width: 80,
//     //                               child: ClipRRect(
//     //                                 borderRadius: BorderRadius.circular(10),
//     //                                 child: Image.asset(
//     //                                   '${products[index]['image_path']}',
//     //                                   fit: BoxFit.cover,
//     //                                 ),
//     //                               ),
//     //                             ),
//     //                           );*/
//     //                       }
//     //                   ),
//     //                 ),
//     //               ),
//     //               SizedBox(
//     //                 height: 10,
//     //               ),
//     //
//     //               // albums
//     //
//     //               Row(
//     //                 children: [
//     //                   SizedBox(width: 20,),
//     //                   Text("Albums",style: TextStyle(
//     //                     fontWeight: FontWeight.bold,
//     //                     fontSize: 17,
//     //                   ),
//     //                   ),
//     //                   Spacer(),
//     //                   Text("See all",style: TextStyle(fontWeight: FontWeight.bold),),
//     //                   SizedBox(width: 20,),
//     //                 ],
//     //               ),
//     //               SizedBox(
//     //                 height: 7,
//     //               ),
//     //               Container(
//     //                 height: 100,
//     //                 width: MediaQuery.of(context).size.width * .91,
//     //                 decoration: BoxDecoration(
//     //                   gradient: LinearGradient(
//     //                     begin: Alignment.topLeft,
//     //                     end: Alignment.topRight,
//     //                     colors: [
//     //                       Color.fromRGBO(124, 87, 187, .5),
//     //                       Color.fromRGBO(128, 200, 226, 1)
//     //                     ],
//     //                   ),
//     //                   borderRadius: BorderRadius.all(Radius.circular(18)),
//     //                 ),
//     //                 child:
//     //                 Column(
//     //                   children: [
//     //                     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
//     //                     SizedBox(height: 23,),
//     //                     Row(
//     //                       children: [
//     //                         SizedBox(width: 10,),
//     //                         Text("Animals",style: TextStyle(fontWeight: FontWeight.bold),),
//     //
//     //                       ],
//     //                     ),
//     //                     SizedBox(height: 10,),
//     //                     Row(
//     //                       children: [
//     //                         SizedBox(width: 10,),
//     //                         Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold),),
//     //
//     //                       ],
//     //                     ),
//     //                   ],
//     //                 ),
//     //               ),
//     //               // SizedBox(
//     //               //   height: 10,
//     //               // ),
//     //               // Row(
//     //               //   children: [
//     //               //     SizedBox(width: 20,),
//     //               //     Text("Rcently",style: TextStyle(
//     //               //       fontWeight: FontWeight.bold,
//     //               //       fontSize: 17,
//     //               //     ),),
//     //               //   ],
//     //               // ),
//     //               // SizedBox(
//     //               //   height: 10,
//     //               // ),
//     //               // SizedBox(
//     //               //   height: 100,
//     //               //   child: ListView.builder(
//     //               //       scrollDirection: Axis.horizontal,
//     //               //       itemCount: products.length,
//     //               //       itemBuilder: (context,index){
//     //               //         return    Padding(
//     //               //           padding: const EdgeInsets.all(8.0),
//     //               //           child: Container(
//     //               //             height: 50,
//     //               //             width: 80,
//     //               //             child: ClipRRect(
//     //               //               borderRadius: BorderRadius.circular(10),
//     //               //               child: Image.asset(
//     //               //                 '${products[index]['image_path']}',
//     //               //                 fit: BoxFit.cover,
//     //               //               ),
//     //               //             ),
//     //               //           ),
//     //               //         );
//     //               //       }
//     //               //   ),
//     //               // ),
//     //               SizedBox(height: 20,),
//     //               //all photos
//     //               SingleChildScrollView(
//     //                 scrollDirection: Axis.horizontal,
//     //                 child: Row(
//     //                   children: [
//     //                     Column(
//     //                       children: [
//     //                         GestureDetector(
//     //                           onTap: () async {
//     //                             final pickedImage=await ImagePicker().pickImage(source: ImageSource.gallery);
//     //                             if(pickedImage != null){
//     //                               //File imageFile=File(pickedImage.path);
//     //                               // Navigator.push(context,
//     //                               //     MaterialPageRoute(builder: (context)=>Filters(imageFile: imageFile,)));
//     //                             }
//     //                           },// onTap: (){
//     //                           //   all = true;
//     //                           //   jackets = false;
//     //                           //   shoes = false;
//     //                           //   setState(() {
//     //                           //
//     //                           //   });
//     //                           // },
//     //                           child:
//     //                           Material(
//     //                             // elevation: 3.0,
//     //                             borderRadius: BorderRadius.circular(10),
//     //                             // color: all? Colors.deepPurple[200] : Colors.white,
//     //                             //  color: selectedCategoryProvider.selectedCategory == index
//     //                             //      ? Colors.white
//     //                             //      : Colors.white.withOpacity(0.4),
//     //                             child: Container(
//     //                               height: 55,
//     //                               width: 55,
//     //                               decoration: BoxDecoration(
//     //                                 borderRadius: BorderRadius.circular(10),
//     //                                 color: Colors.deepPurple[100],
//     //                               ),
//     //                               child: Padding(
//     //                                 padding: const EdgeInsets.all(8.0),
//     //                                 child:
//     //                                 Icon(Icons.border_all_outlined),
//     //                               ),
//     //                             ),
//     //                           ),
//     //                         ),
//     //                         SizedBox(height: 5,),
//     //                         Text("All photos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
//     //                       ],
//     //                     ),
//     //                     SizedBox(width: 33,),
//     //                     Column(
//     //                       children: [
//     //                         GestureDetector(
//     //                           onTap: () async {
//     //                             final pickedImage=await ImagePicker().pickImage(source: ImageSource.camera);
//     //                             if(pickedImage != null){
//     //                             //  File imageFile=File(pickedImage.path);
//     //                               // Navigator.push(context,
//     //                               //     MaterialPageRoute(builder: (context)=>Filters(imageFile: imageFile,)));
//     //                             }
//     //                           },
//     //                           // onTap: (){
//     //                           //   all = true;
//     //                           //   jackets = false;
//     //                           //   shoes = false;
//     //                           //   setState(() {
//     //                           //
//     //                           //   });
//     //                           // },
//     //                           child:
//     //                           Material(
//     //                             // elevation: 3.0,
//     //                             borderRadius: BorderRadius.circular(10),
//     //                             // color: all? Colors.deepPurple[200] : Colors.white,
//     //                             //  color: selectedCategoryProvider.selectedCategory == index
//     //                             //      ? Colors.white
//     //                             //      : Colors.white.withOpacity(0.4),
//     //                             child: Container(
//     //                               height: 55,
//     //                               width: 55,
//     //                               decoration: BoxDecoration(
//     //                                 borderRadius: BorderRadius.circular(10),
//     //                                 color: Colors.deepPurple[100],
//     //                               ),
//     //                               child: Padding(
//     //                                 padding: const EdgeInsets.all(8.0),
//     //                                 child:
//     //                                 Icon(Icons.camera_alt),
//     //                               ),
//     //                             ),
//     //                           ),
//     //                         ),
//     //                         SizedBox(height: 5,),
//     //                         Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
//     //                       ],
//     //                     ),
//     //                     SizedBox(width: 32,),
//     //                     Column(
//     //                       children: [
//     //                         GestureDetector(
//     //                           // onTap: (){
//     //                           //   all = true;
//     //                           //   jackets = false;
//     //                           //   shoes = false;
//     //                           //   setState(() {
//     //                           //
//     //                           //   });
//     //                           // },
//     //                           child:
//     //                           Material(
//     //                             // elevation: 3.0,
//     //                             borderRadius: BorderRadius.circular(10),
//     //                             // color: all? Colors.deepPurple[200] : Colors.white,
//     //                             //  color: selectedCategoryProvider.selectedCategory == index
//     //                             //      ? Colors.white
//     //                             //      : Colors.white.withOpacity(0.4),
//     //                             child: Container(
//     //                               height: 55,
//     //                               width: 55,
//     //                               decoration: BoxDecoration(
//     //                                 borderRadius: BorderRadius.circular(10),
//     //                                 color: Colors.deepPurple[100],
//     //                               ),
//     //                               child: Padding(
//     //                                 padding: const EdgeInsets.all(8.0),
//     //                                 child:
//     //                                 Icon(Icons.download_for_offline),
//     //                               ),
//     //                             ),
//     //                           ),
//     //                         ),
//     //                         SizedBox(height: 5,),
//     //                         Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
//     //                       ],
//     //                     ),
//     //                     SizedBox(width: 30,),
//     //                     Column(
//     //                       children: [
//     //                         GestureDetector(
//     //                           // onTap: (){
//     //                           //   all = true;
//     //                           //   jackets = false;
//     //                           //   shoes = false;
//     //                           //   setState(() {
//     //                           //
//     //                           //   });
//     //                           // },
//     //                           child:
//     //                           Material(
//     //                             // elevation: 3.0,
//     //                             borderRadius: BorderRadius.circular(10),
//     //                             // color: all? Colors.deepPurple[200] : Colors.white,
//     //                             //  color: selectedCategoryProvider.selectedCategory == index
//     //                             //      ? Colors.white
//     //                             //      : Colors.white.withOpacity(0.4),
//     //                             child: Container(
//     //                               height: 55,
//     //                               width: 55,
//     //                               decoration: BoxDecoration(
//     //                                 borderRadius: BorderRadius.circular(10),
//     //                                 color: Colors.deepPurple[100],
//     //                               ),
//     //                               child: Padding(
//     //                                 padding: const EdgeInsets.all(8.0),
//     //                                 child:
//     //                                 Icon(Icons.file_copy_rounded),
//     //                               ),
//     //                             ),
//     //                           ),
//     //                         ),
//     //                         SizedBox(height: 5,),
//     //                         Text("Others",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
//     //                       ],
//     //                     ),
//     //                   ],
//     //                 ),
//     //               ),
//     //               SizedBox(
//     //                 height: 15,
//     //               ), //november
//     //               Row(
//     //                 children: [
//     //                   SizedBox(width: 20,),
//     //                   Text("November , 2019",style: TextStyle(
//     //                     fontWeight: FontWeight.bold,
//     //                     fontSize: 17,
//     //                   ),),
//     //                 ],
//     //               ),
//     //               SizedBox(
//     //                 height: 10,
//     //               ),
//     //               SingleChildScrollView(
//     //                 scrollDirection: Axis.horizontal,
//     //                 child: Padding(
//     //                   padding: const EdgeInsets.only(left: 20,right: 20),
//     //                   child: Row(
//     //                     children: [
//     //                       Container(
//     //                         height: 90,
//     //                         width: 80,
//     //                         child: ClipRRect(
//     //                           borderRadius: BorderRadius.circular(10),
//     //                           child: Image.asset(
//     //                             'assets/images/ai1.png',
//     //                             fit: BoxFit.cover,
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       SizedBox(width: 10,),
//     //                       Container(
//     //                         height: 90,
//     //                         width: 80,
//     //                         child: ClipRRect(
//     //                           borderRadius: BorderRadius.circular(10),
//     //                           child: Image.asset(
//     //                             'assets/images/ai2.png',
//     //                             fit: BoxFit.cover,
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       SizedBox(width: 10,),
//     //                       Container(
//     //                         height: 90,
//     //                         width: 80,
//     //                         child: ClipRRect(
//     //                           borderRadius: BorderRadius.circular(10),
//     //                           child: Image.asset(
//     //                             'assets/images/ai3.png',
//     //                             fit: BoxFit.cover,
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       SizedBox(width: 10,),
//     //                       Stack(
//     //                           children:
//     //                           [
//     //                             Container(
//     //                               height: 90,
//     //                               width: 80,
//     //                               child: ClipRRect(
//     //                                 borderRadius: BorderRadius.circular(10),
//     //                                 child: Image.asset(
//     //                                   'assets/images/ai4.png',
//     //                                   fit: BoxFit.cover,
//     //                                 ),
//     //                               ),
//     //                             ),]
//     //                       ),
//     //                     ],
//     //                   ),
//     //                 ),
//     //               ),
//     //               //April
//     //               Row(
//     //                 children: [
//     //                   SizedBox(width: 20,),
//     //                   Text("April , 2019",style: TextStyle(
//     //                     fontWeight: FontWeight.bold,
//     //                     fontSize: 17,
//     //                   ),),
//     //                 ],
//     //               ),
//     //               SizedBox(
//     //                 height: 10,
//     //               ),
//     //               SingleChildScrollView(
//     //                 scrollDirection: Axis.horizontal,
//     //                 child: Padding(
//     //                   padding: const EdgeInsets.only(left: 20,right: 20),
//     //                   child: Row(
//     //                     children: [
//     //                       Container(
//     //                         height: 90,
//     //                         width: 80,
//     //                         child: ClipRRect(
//     //                           borderRadius: BorderRadius.circular(10),
//     //                           child: Image.asset(
//     //                             'assets/images/ai1.png',
//     //                             fit: BoxFit.cover,
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       SizedBox(width: 10,),
//     //                       Container(
//     //                         height: 90,
//     //                         width: 80,
//     //                         child: ClipRRect(
//     //                           borderRadius: BorderRadius.circular(10),
//     //                           child: Image.asset(
//     //                             'assets/images/ai2.png',
//     //                             fit: BoxFit.cover,
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       SizedBox(width: 10,),
//     //                       Container(
//     //                         height: 90,
//     //                         width: 80,
//     //                         child: ClipRRect(
//     //                           borderRadius: BorderRadius.circular(10),
//     //                           child: Image.asset(
//     //                             'assets/images/ai3.png',
//     //                             fit: BoxFit.cover,
//     //                           ),
//     //                         ),
//     //                       ),
//     //                       SizedBox(width: 10,),
//     //                       Stack(
//     //                           children:
//     //                           [
//     //                             Container(
//     //                               height: 90,
//     //                               width: 80,
//     //                               child: ClipRRect(
//     //                                 borderRadius: BorderRadius.circular(10),
//     //                                 child: Image.asset(
//     //                                   'assets/images/ai4.png',
//     //                                   fit: BoxFit.cover,
//     //                                 ),
//     //                               ),
//     //                             ),]
//     //                       ),
//     //                     ],
//     //                   ),
//     //                 ),
//     //               ),
//     //             ],
//     //           ),
//     //         ),
//     //       ),
//     //       // Continue with the rest of your content...
//     //     ],
//     //   ),
//     // );
//   }
// }
import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:http/http.dart'as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../background_remove.dart';
import '../filtter.dart';

import '../profile_page.dart';
import '../second_home.dart';
import '../setting.dart';
import 'download.dart';
// void main(){
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Enhance()));
// }

class Enhance extends StatefulWidget {
  const Enhance({super.key});

  @override
  State<Enhance> createState() => _EnhanceState();
}

class _EnhanceState extends State<Enhance> {
  List<dynamic> storageImages = [];

  /* Future<List<String>> fetchUserImages() async {
    final userId = FirebaseAuth.instance.currentUser!.uid;

    try {
      final oldImageSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();

      final oldImageURL = oldImageSnapshot.get('oldImageURL') as String;

      final newImageSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();

      final newImageURL = newImageSnapshot.get('newImageURL') as String;

      return [oldImageURL, newImageURL];
    } catch (e) {
      print('Error fetching user images: $e');
      return [];
    }
  }*/

  /* Widget _buildUserImage(String imageURL) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 80,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageURL,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
  Widget _buildDefaultImageList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return Padding(
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
      },
    );
  }*/

  String? userName;


  Future<void> fetchUserName() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user
          .reload(); // Reload the user to get the latest data including the display name
      setState(() {
        userName = user.displayName;
      });
    }
  }

  File? _image;
  Future getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future<void> fetchImages() async {
    // Fetch products from Firestore
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('images').get();
    print(querySnapshot);
    setState(() {
      storageImages = querySnapshot.docs.map((doc) => doc.data()).toList();
    });
  }

  Future<String> getImageUrl(String imagePath) async {
    // Get download URL from Firebase Storage
    String downloadURL =
        await FirebaseStorage.instance.ref().child(imagePath).getDownloadURL();
    debugPrint(downloadURL.toString());
    return downloadURL;
  }

  @override
  void initState() {
    super.initState();
    fetchImages();
    fetchUserName();
  }

  int _selectedIndex = 0;
  List products = [
    {
      "Product_name": "AI Avatar Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai1.png'
    },
    {
      "Product_name": "AI Scene Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai2.png'
    },
    {
      "Product_name": "AI Anime Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai3.png'
    },
    {
      "Product_name": "AI Cartoonizer",
      "price": "\$200",
      "image_path": 'assets/images/ai4.png'
    },
    {
      "Product_name": "AI Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai5.png'
    },
    {
      "Product_name": "AI Generator",
      "price": "\$200",
      "image_path": 'assets/images/ai6.png'
    },
    // {"Product_name":"AI  Generator","price":"\$200" ,"image_path":'assets/images/1.png'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  Future<void> _downloadImage(String imageURL) async {
    try {
      // Fetch the image bytes from the network
      final http.Response response = await http.get(Uri.parse(imageURL));
      final Uint8List bytes = response.bodyBytes;

      // Save the image to the gallery
      final result = await ImageGallerySaver.saveImage(bytes);

      if (result != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Image saved to gallery')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to save image')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving image: $e')),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    Uint8List? _image = context.watch<ImageProviderPicker>().image;
    return SafeArea(
      child: Scaffold(
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
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  // CircleAvatar(
                  //     radius:25,
                  //     backgroundImage:AssetImage("assets/images/ai1.png")
                  // ),
                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: Stack(children: [
                      _image != null
                          ? CircleAvatar(
                              radius: 25,
                              backgroundImage: MemoryImage(_image!),
                            )
                          : CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2024/03/06/18/46/ai-generated-8616945_640.jpg'),
                              radius: 24,
                            ),
                    ]),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    children: [
                      Text(
                        "Welcome back",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 7,
                          ),
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
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Setting()));
                        },
                        child: Image(
                          image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/128/2040/2040504.png',
                          ),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(children: [
                        Material(
                          elevation: 4,
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
                            image: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/128/6423/6423882.png',
                            ),
                            height: 15,
                            width: 15,
                          ),
                        ),
                        Positioned(
                            top: 7,
                            right: 9,
                            child: Text(
                              "Pro",
                              style: TextStyle(fontSize: 10),
                            )),
                      ]),
                      SizedBox(
                        width: 22,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
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
                          SizedBox(
                            width: 22,
                          ),
                          Text(
                            "Rcently",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),


                      //Adjustment Screen
                      /*Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: SizedBox(
                          height: 100,
                          child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('users')
                                .doc('${FirebaseAuth.instance.currentUser?.uid ?? 'default_uid'}')
                                .collection('images')
                                .orderBy('uploadTime', descending: true) // Order by uploadTime in descending order
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: CircularProgressIndicator());
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              } else if (snapshot.data!.docs.isEmpty) {
                                // If the user has no data, show the second padding with default images
                                return Padding(
                                  padding: const EdgeInsets.only(left: 13, right: 13),
                                  child: SizedBox(
                                    height: 100,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: products.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
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
                                      },
                                    ),
                                  ),
                                );
                              } else {
                                // If the user has data, show the first padding with images from Firestore
                                final List<Widget> imageWidgets = [];
                                final docs = snapshot.data!.docs;
                                for (var doc in docs) {
                                  final data = doc.data() as Map<String, dynamic>;
                                  final imageURL = data['imageUrl'] as String?;
                                  if (imageURL != null) {
                                    imageWidgets.add(
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Dialog(
                                                child: Container(
                                                  width: MediaQuery.of(context).size.width * 0.7,
                                                  height: MediaQuery.of(context).size.width * 0.7,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage(imageURL),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: 80,
                                            height: 100,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.network(
                                                imageURL,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                }
                                return Padding(
                                  padding: const EdgeInsets.only(left: 13, right: 13),
                                  child: SizedBox(
                                    height: 100,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: imageWidgets,
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),*/


                      // CropScreen

                      Padding(
                         padding: const EdgeInsets.only(left: 13, right: 13),
                         child: SizedBox(
                           height: 100,
                           child: StreamBuilder<QuerySnapshot>(
                             stream: FirebaseFirestore.instance
                                 .collection('users')
                                 .doc('${FirebaseAuth.instance.currentUser?.uid ?? 'default_uid'}')
                                 .collection('images')
                                 .orderBy('uploadTime', descending: true)
                                 .snapshots(),
                             builder: (context, snapshot) {
                               if (snapshot.connectionState == ConnectionState.waiting) {
                                 return Center(child: CircularProgressIndicator());
                               } else if (snapshot.hasError) {
                                 return Text('Error: ${snapshot.error}');
                               } else if (snapshot.data!.docs.isEmpty) {
                                 // If there are no images uploaded by the user, display default local images
                                 return ListView.builder(
                                   scrollDirection: Axis.horizontal,
                                   itemCount: products.length,
                                   itemBuilder: (context, index) {
                                     return Padding(
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
                                   },
                                 );
                               } else {
                                 // If there are images uploaded by the user, display them
                                 final List<Widget> imageWidgets = [];
                                 final docs = snapshot.data!.docs;
                                 for (var doc in docs) {
                                   final data = doc.data() as Map<String, dynamic>;
                                   final imageURL = data['imageURL'] as String?;
                                   final uploadTime = DateTime.parse(data['uploadTime']);
                                   print(imageURL);
                                   print(uploadTime);
                                   if (imageURL != null) { // Check if imageURL is not null
                                     imageWidgets.add(
                                       GestureDetector(
                                         onTap: () {
                                           showDialog(
                                             context: context,
                                             builder: (BuildContext context) {
                                               return
                                                 Dialog(
                                                   child: Stack(
                                                     children: [
                                                       Padding(
                                                         padding: const EdgeInsets.only(
                                                           left: 30,
                                                           right: 30,
                                                           top: 60,
                                                           bottom: 40,
                                                         ),
                                                         child: Container(
                                                           width: MediaQuery.of(context).size.width * 0.7,
                                                           height: MediaQuery.of(context).size.width * 0.7,
                                                           decoration: BoxDecoration(
                                                             image: DecorationImage(
                                                               image: NetworkImage(imageURL),
                                                               fit: BoxFit.cover,
                                                             ),
                                                           ),
                                                         ),
                                                       ),
                                                       Positioned(
                                                         top: 10,
                                                         right: 10,
                                                         child: Row(
                                                           children: [
                                                             SizedBox(width: 10),
                                                             GestureDetector(
                                                               onTap: () {
                                                                 showDialog(
                                                                   context: context,
                                                                   builder: (BuildContext context) {
                                                                     return
                                                                       AlertDialog(
                                                                         title: Text("Confirm Delete"),
                                                                         content: Text("Are you sure you want to delete this photo?"),
                                                                         actions: [
                                                                           TextButton(
                                                                             onPressed: () {
                                                                               Navigator.of(context).pop();
                                                                             },
                                                                             child: Text("Cancel"),
                                                                           ),
                                                                           TextButton(
                                                                             onPressed: () async {
                                                                               // Perform delete operation
                                                                               try {
                                                                                 await FirebaseFirestore.instance
                                                                                     .collection('users')
                                                                                     .doc('${FirebaseAuth.instance.currentUser?.uid ?? 'default_uid'}')
                                                                                     .collection('images')
                                                                                     .doc(doc.id) // Use doc.id to get the document ID
                                                                                     .delete();

                                                                                 Navigator.of(context).pop();
                                                                                 Navigator.of(context, rootNavigator: true).pop();
                                                                               } catch (e) {

                                                                                 print("Error deleting photo: $e");

                                                                               }
                                                                             },
                                                                             child: Text("Delete"),
                                                                           ),
                                                                         ],
                                                                       );

                                                                   },
                                                                 );
                                                               },
                                                               child: Container(
                                                                 child: Image.asset(
                                                                   'assets/images/img_17.png',
                                                                   height: 27,
                                                                   width: 27,
                                                                 ),
                                                               ),
                                                             ),


                                                           ],
                                                         ),
                                                       ),
                                                       Positioned(
                                                         top: 12,
                                                         right: 50,
                                                         child: Row(
                                                           children: [
                                                             SizedBox(width: 10),
                                                             GestureDetector(
                                                               onTap: () {
                                                                 _downloadImage(imageURL);
                                                               },
                                                               child: Container(
                                                                 child: Image.asset(
                                                                   'assets/images/img_10.png',
                                                                   height: 27,
                                                                   width: 27,
                                                                 ),
                                                               ),
                                                             ),
                                                           ],
                                                         ),
                                                       ),
                                                     ],
                                                   ),
                                                 );
                                             },
                                           );
                                         },
                                         child: Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Container(
                                             width: 80,
                                             height: 100,
                                             child: ClipRRect(
                                               borderRadius: BorderRadius.circular(10),
                                               child: Image.network(
                                                 imageURL,
                                                 fit: BoxFit.cover,
                                               ),
                                             ),
                                           ),
                                         ),
                                       ),
                                     );
                                   }
                                 }
                                 return ListView(
                                   scrollDirection: Axis.horizontal,
                                   children: imageWidgets,
                                 );
                               }
                             },
                           ),
                         ),
                       ),


                      // Padding(
                      //   padding: const EdgeInsets.only(left: 13, right: 13),
                      //   child: SizedBox(
                      //     height: 100,
                      //     child: StreamBuilder<QuerySnapshot>(
                      //       stream: FirebaseFirestore.instance
                      //           .collection('users')
                      //           .doc('${FirebaseAuth.instance.currentUser!.uid}')
                      //           .collection('images')
                      //           .orderBy('uploadTime', descending: true)
                      //           .snapshots(),
                      //       builder: (context, snapshot) {
                      //         if (snapshot.connectionState == ConnectionState.waiting) {
                      //           return Center(child: CircularProgressIndicator());
                      //         } else if (snapshot.hasError) {
                      //           return Text('Error: ${snapshot.error}');
                      //         } else if (snapshot.data!.docs.isEmpty) {
                      //           // If there are no images uploaded by the user, display default local images
                      //           return ListView.builder(
                      //             scrollDirection: Axis.horizontal,
                      //             itemCount: products.length,
                      //             itemBuilder: (context, index) {
                      //               return Padding(
                      //                 padding: const EdgeInsets.all(8.0),
                      //                 child: Container(
                      //                   height: 50,
                      //                   width: 80,
                      //                   child: ClipRRect(
                      //                     borderRadius: BorderRadius.circular(10),
                      //                     child: Image.asset(
                      //                       '${products[index]['image_path']}',
                      //                       fit: BoxFit.cover,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               );
                      //             },
                      //           );
                      //         } else {
                      //           // If there are images uploaded by the user, display them
                      //           final List<Widget> imageWidgets = [];
                      //           final docs = snapshot.data!.docs;
                      //           for (var doc in docs) {
                      //             final data = doc.data() as Map<String, dynamic>;
                      //             final imageURL = data['imageURL'] as String;
                      //             final uploadTime = DateTime.parse(data['uploadTime']);
                      //             print(imageURL);
                      //             print(uploadTime);
                      //             imageWidgets.add(
                      //               Padding(
                      //                 padding: const EdgeInsets.all(8.0),
                      //                 child: Container(
                      //                   width: 80,
                      //                   height: 100,
                      //                   child: ClipRRect(
                      //                     borderRadius: BorderRadius.circular(10),
                      //                     child: Image.network(
                      //                       imageURL,
                      //                       fit: BoxFit.cover,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //             );
                      //           }
                      //           return ListView(
                      //             scrollDirection: Axis.horizontal,
                      //             children: imageWidgets,
                      //           );
                      //         }
                      //       },
                      //     ),
                      //   ),
                      // ),
                      //new added
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 13, right: 13),
                      //   child: SizedBox(
                      //     height: 100,
                      //     child: StreamBuilder<QuerySnapshot>(
                      //       stream: FirebaseFirestore.instance
                      //           .collection('users')
                      //           .doc('${FirebaseAuth.instance.currentUser!.uid}')
                      //           .collection('images')
                      //           .orderBy('uploadTime', descending: true)
                      //           .snapshots(),
                      //       builder: (context, snapshot) {
                      //         if (snapshot.connectionState == ConnectionState.waiting) {
                      //           return Center(child: CircularProgressIndicator());
                      //         } else if (snapshot.hasError) {
                      //           return Text('Error: ${snapshot.error}');
                      //         } else if (snapshot.data!.docs.isEmpty) {
                      //           // If there are no images uploaded by the user, display default local images
                      //           return ListView.builder(
                      //             scrollDirection: Axis.horizontal,
                      //             itemCount: products.length,
                      //             itemBuilder: (context, index) {
                      //               return Padding(
                      //                 padding: const EdgeInsets.all(8.0),
                      //                 child: Container(
                      //                   height: 50,
                      //                   width: 80,
                      //                   child: ClipRRect(
                      //                     borderRadius: BorderRadius.circular(10),
                      //                     child: Image.asset(
                      //                       '${products[index]['image_path']}',
                      //                       fit: BoxFit.cover,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               );
                      //             },
                      //           );
                      //         } else {
                      //           // If there are images uploaded by the user, display them
                      //           final List<Widget> imageWidgets = [];
                      //           final docs = snapshot.data!.docs;
                      //           for (var doc in docs) {
                      //             final data = doc.data() as Map<String, dynamic>;
                      //             final imageURL = data['imageURL'] as String;
                      //             final uploadTime = DateTime.parse(data['uploadTime']);
                      //             print(imageURL);
                      //             print(uploadTime);
                      //             imageWidgets.add(
                      //               GestureDetector(
                      //                 onTap: () {
                      //                   showDialog(
                      //                     context: context,
                      //                     builder: (BuildContext context) {
                      //                       return Dialog(
                      //                         child: Container(
                      //                           width: MediaQuery.of(context).size.width * 0.7,
                      //                           height: MediaQuery.of(context).size.width * 0.7,
                      //                           decoration: BoxDecoration(
                      //                             image: DecorationImage(
                      //                               image: NetworkImage(imageURL),
                      //                               fit: BoxFit.cover,
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       );
                      //                     },
                      //                   );
                      //                 },
                      //
                      //                 child: Padding(
                      //                   padding: const EdgeInsets.all(8.0),
                      //                   child: Container(
                      //                     width: 80,
                      //                     height: 100,
                      //                     child: ClipRRect(
                      //                       borderRadius: BorderRadius.circular(10),
                      //                       child: Image.network(
                      //                         imageURL,
                      //                         fit: BoxFit.cover,
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //             );
                      //           }
                      //           return ListView(
                      //             scrollDirection: Axis.horizontal,
                      //             children: imageWidgets,
                      //           );
                      //         }
                      //       },
                      //     ),
                      //   ),
                      // ),
                     /* Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: SizedBox(
                          height: 100,
                          child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('users')
                                .doc(
                                    '${FirebaseAuth.instance.currentUser?.uid ?? 'default_uid'}')
                                .collection('images')
                                .orderBy('uploadTime', descending: true)
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                    child: CircularProgressIndicator());
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              } else if (snapshot.data!.docs.isEmpty) {
                                // If there are no images uploaded by the user, display default local images
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 50,
                                        width: 80,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            '${products[index]['image_path']}',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              } else {
                                // If there are images uploaded by the user, display them
                                final List<Widget> imageWidgets = [];
                                final docs = snapshot.data!.docs;
                                for (var doc in docs) {
                                  final data =
                                      doc.data() as Map<String, dynamic>;
                                  final imageURL = data['imageURL'] as String;
                                  final uploadTime =
                                      DateTime.parse(data['uploadTime']);
                                  print(imageURL);
                                  print(uploadTime);
                                  imageWidgets.add(
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Dialog(
                                              child: Stack(children: [
                                                Positioned(
                                                  top: 6,
                                                  right: 50,
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 15,
                                                      ),
                                                      Container(
                                                        width: 38,
                                                        height: 38,
                                                        decoration:
                                                            ShapeDecoration(
                                                         // color: Colors.black,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                        ),
                                                        child: InkWell(
                                                            onTap: () {
                                                              _downloadImage(imageURL);
                                                              //_checkAuthState();
                                                              // _saveImageToGallery();
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .download_for_offline,
                                                              size: 33,
                                                              color:
                                                                  Colors.black,
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 10,
                                                  right: 10,
                                                  child: Row(
                                                    children: [
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Container(
                                                          //  height: 45,
                                                          // width: 45,
                                                          // decoration: BoxDecoration(
                                                          //   color: Colors.deepPurple[200],
                                                          //   borderRadius: BorderRadius.circular(10),
                                                          // ),
                                                          child: Image.asset(
                                                            'assets/images/img_17.png',
                                                            height: 30,
                                                            width: 30,
                                                          ),
                                                        ),
                                                      ),
                                                      //  Icon(Icons.cancel,size: 30,),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30,
                                                          right: 30,
                                                          top: 60,
                                                          bottom: 40),
                                                  child: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.7,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.7,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: NetworkImage(
                                                            imageURL),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                            );
                                          },
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 80,
                                          height: 100,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.network(
                                              imageURL,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                return ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: imageWidgets,
                                );
                              }
                            },
                          ),
                        ),
                      ),*/

                      /*Padding(
                         padding: const EdgeInsets.only(left: 13, right: 13),
                         child: SizedBox(
                           height: 100,
                           child: Container(
                             width: MediaQuery.of(context).size.width, // Set container width to match screen width
                             child: StreamBuilder<QuerySnapshot>(
                               stream: FirebaseFirestore.instance
                                   .collection('users')
                                   .doc('${FirebaseAuth.instance.currentUser!.uid}')
                                   .collection('images')
                                   .orderBy('uploadTime', descending: true)
                                   .snapshots(),
                               builder: (context, snapshot) {
                                 if (snapshot.connectionState == ConnectionState.waiting) {
                                   return Center(child: CircularProgressIndicator());
                                 } else if (snapshot.hasError) {
                                   return Text('Error: ${snapshot.error}');
                                 } else {
                                   final List<Widget> imageWidgets = [];
                                   final docs = snapshot.data!.docs;
                                   for (var doc in docs) {
                                     final data = doc.data() as Map<String, dynamic>;
                                     final imageURL = data['imageURL'] as String;
                                     final uploadTime = DateTime.parse(data['uploadTime']);
                                     print(imageURL);
                                     print(uploadTime);
                                     imageWidgets.add(
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Container(
                                           width: 80, // Set fixed width for each image container
                                           height: 100, // Set fixed height for each image container
                                           child: ClipRRect(
                                             borderRadius: BorderRadius.circular(10),
                                             child: Image.network(
                                               imageURL,
                                               fit: BoxFit.cover,
                                             ),
                                           ),
                                         ),
                                       ),
                                     );
                                   }
                                   return ListView(
                                     scrollDirection: Axis.horizontal,
                                     children: imageWidgets,
                                   );
                                 }
                               },
                             ),
                           ),
                         ),
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
                       ),*/
                      SizedBox(
                        height: 10,
                      ),

                      // albums

                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Albums",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      // Material(
                      //   elevation: 3,
                      //   borderRadius: BorderRadius.all(Radius.circular(18)),
                      //   child: Container(
                      //     height: 100,
                      //     width: MediaQuery.of(context).size.width * .91,
                      //     decoration: BoxDecoration(
                      //       // gradient: LinearGradient(
                      //       //   begin: Alignment.topLeft,
                      //       //   end: Alignment.topRight,
                      //       //   colors: [
                      //       //     Color.fromRGBO(124, 87, 187, .5),
                      //       //     Color.fromRGBO(128, 200, 226, 1)
                      //       //   ],
                      //       // ),
                      //       borderRadius: BorderRadius.all(Radius.circular(18)),
                      //     ),
                      //     child:
                      //     Column(
                      //       children: [
                      //       //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
                      //         SizedBox(height: 23,),
                      //         Row(
                      //           children: [
                      //             SizedBox(width: 10,),
                      //           Text("Animals",style: TextStyle(fontWeight: FontWeight.bold),),
                      //
                      //           ],
                      //         ),
                      //         SizedBox(height: 10,),
                      //         Row(
                      //           children: [
                      //             SizedBox(width: 10,),
                      //             Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold),),
                      //
                      //           ],
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
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

                      Material(
                        elevation: 3,
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * .91,
                          decoration: BoxDecoration(
                            // Replace the gradient with Image.network
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/img_7.png',
                              ),
                              fit: BoxFit
                                  .cover, // Adjust this based on your needs
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 23,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Animals",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "50+ photos",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      //all photos
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final pickedImage = await ImagePicker()
                                        .pickImage(source: ImageSource.gallery);
                                    if (pickedImage != null) {
                                      File imageFile = File(pickedImage.path);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FilterScreen(
                                                    imageFile: imageFile,
                                                  )));
                                    }
                                  },
                                  // onTap: (){
                                  //   all = true;
                                  //   jackets = false;
                                  //   shoes = false;
                                  //   setState(() {
                                  //
                                  //   });
                                  // },
                                  child:
                                      // Material(
                                      //    elevation: 3.0,
                                      //   borderRadius: BorderRadius.circular(10),
                                      //  // color: all? Colors.deepPurple[200] : Colors.white,
                                      //   //  color: selectedCategoryProvider.selectedCategory == index
                                      //   //      ? Colors.white
                                      //   //      : Colors.white.withOpacity(0.4),
                                      //   child: Container(
                                      //     height: 55,
                                      //     width: 55,
                                      //     decoration: BoxDecoration(
                                      //       borderRadius: BorderRadius.circular(10),
                                      //       color: Colors.deepPurple[100],
                                      //     ),
                                      //     child:
                                      //     // Padding(
                                      //     //   padding: const EdgeInsets.all(8.0),
                                      //     //   child:
                                      //     //   Icon(Icons.border_all_outlined),
                                      //     // ),
                                      //     Image.asset('assets/images/img_8.png',height: 5,width: 5,),
                                      //   ),
                                      // ),
                                      Material(
                                    elevation: 3.0,
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.deepPurple[100],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Image.asset(
                                          'assets/images/img_9.png',
                                          height:
                                              5, // Adjust the height as needed
                                          width:
                                              5, // Adjust the width as needed
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "All photos",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 33,
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final pickedImage = await ImagePicker()
                                        .pickImage(source: ImageSource.camera);
                                    if (pickedImage != null) {
                                      File imageFile = File(pickedImage.path);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FilterScreen(
                                                    imageFile: imageFile,
                                                  )));
                                    }
                                  },
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
                                    elevation: 3.0,
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
                                      child: Material(
                                        elevation: 3.0,
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.deepPurple[100],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              'assets/images/img_8.png',
                                              height:
                                                  5, // Adjust the height as needed
                                              width:
                                                  5, // Adjust the width as needed
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(8.0),
                                      //   child:
                                      //   Icon(Icons.camera_alt),
                                      // ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Camera",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 32,
                            ),
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Download()));
                                  },
                                  child: Material(
                                    elevation: 3.0,
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
                                        padding: const EdgeInsets.all(15.0),
                                        child: Image.asset(
                                          'assets/images/img_10.png',
                                          height:
                                              5, // Adjust the height as needed
                                          width:
                                              5, // Adjust the width as needed
                                        ),
                                      ),
                                      // Padding(
                                      //   padding: const EdgeInsets.all(8.0),
                                      //   child:
                                      //   Icon(Icons.download_for_offline),
                                      // ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Downloads",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondHome()));
                                  },
                                  // onTap: (){
                                  //   all = true;
                                  //   jackets = false;
                                  //   shoes = false;
                                  //   setState(() {
                                  //
                                  //   });
                                  // },
                                  child: Material(
                                    elevation: 3.0,
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
                                        padding: const EdgeInsets.all(14.0),
                                        child: Image.asset(
                                          'assets/images/img_11.png',
                                          height:
                                              5, // Adjust the height as needed
                                          width:
                                              5, // Adjust the width as needed
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Others",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 11),
                                ),
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
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "March , 2024",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left: 20, right: 20),
                      //     child: Row(
                      //       children: [
                      //         Container(
                      //           height: 90,
                      //           width: 80,
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/ai1.png',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 10,
                      //         ),
                      //         Container(
                      //           height: 90,
                      //           width: 80,
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/ai2.png',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 10,
                      //         ),
                      //         Container(
                      //           height: 90,
                      //           width: 80,
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/ai3.png',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 10,
                      //         ),
                      //         Stack(children: [
                      //           Container(
                      //             height: 90,
                      //             width: 80,
                      //             child: ClipRRect(
                      //               borderRadius: BorderRadius.circular(10),
                      //               child: Image.asset(
                      //                 'assets/images/ai4.png',
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ),
                      //           ),
                      //         ]),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      //April
                      Padding(
                        padding: const EdgeInsets.only(left: 13, right: 13),
                        child: SizedBox(
                          height: 100,
                          child: StreamBuilder<QuerySnapshot>(
                            stream: FirebaseFirestore.instance
                                .collection('users')
                                .doc('${FirebaseAuth.instance.currentUser?.uid ?? 'default_uid'}')
                                .collection('images')
                                .orderBy('uploadTime', descending: true)
                                .snapshots(),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting) {
                                return Center(child: CircularProgressIndicator());
                              } else if (snapshot.hasError) {
                                return Text('Error: ${snapshot.error}');
                              } else if (snapshot.data!.docs.isEmpty) {
                                // If there are no images uploaded by the user, display default local images
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: products.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
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
                                  },
                                );
                              } else {
                                // If there are images uploaded by the user, display them
                                final List<Widget> imageWidgets = [];
                                final docs = snapshot.data!.docs;
                                final currentMonth = DateTime.now().month;
                                for (var doc in docs) {
                                  final data = doc.data() as Map<String, dynamic>;
                                  final uploadTime = DateTime.parse(data['uploadTime']);
                                  if (uploadTime.month == currentMonth) { // Check if upload month is current month
                                    final imageURL = data['imageURL'] as String?;
                                    print(imageURL);
                                    print(uploadTime);
                                    if (imageURL != null) {
                                      imageWidgets.add(
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Dialog(
                                                  child: Stack(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(
                                                          left: 30,
                                                          right: 30,
                                                          top: 60,
                                                          bottom: 40,
                                                        ),
                                                        child: Container(
                                                          width: MediaQuery.of(context).size.width * 0.7,
                                                          height: MediaQuery.of(context).size.width * 0.7,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: NetworkImage(imageURL,),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 10,
                                                        right: 10,
                                                        child: Row(
                                                          children: [
                                                            SizedBox(width: 10),
                                                            GestureDetector(
                                                              onTap: () {
                                                                showDialog(
                                                                  context: context,
                                                                  builder: (BuildContext context) {
                                                                    return
                                                                      AlertDialog(
                                                                      title: Text("Confirm Delete"),
                                                                      content: Text("Are you sure you want to delete this photo?"),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () {
                                                                            Navigator.of(context).pop();
                                                                          },
                                                                          child: Text("Cancel"),
                                                                        ),
                                                                        TextButton(
                                                                          onPressed: () async {
                                                                            // Perform delete operation
                                                                            try {
                                                                              await FirebaseFirestore.instance
                                                                                  .collection('users')
                                                                                  .doc('${FirebaseAuth.instance.currentUser?.uid ?? 'default_uid'}')
                                                                                  .collection('images')
                                                                                  .doc(doc.id) // Use doc.id to get the document ID
                                                                                  .delete();

                                                                              Navigator.of(context).pop();
                                                                              Navigator.of(context, rootNavigator: true).pop();
                                                                            } catch (e) {

                                                                              print("Error deleting photo: $e");

                                                                            }
                                                                          },
                                                                          child: Text("Delete"),
                                                                        ),
                                                                      ],
                                                                    );

                                                                  },
                                                                );
                                                              },
                                                              child: Container(
                                                                child: Image.asset(
                                                                  'assets/images/img_17.png',
                                                                  height: 27,
                                                                  width: 27,
                                                                ),
                                                              ),
                                                            ),


                                                          ],
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 12,
                                                        right: 50,
                                                        child: Row(
                                                          children: [
                                                            SizedBox(width: 10),
                                                            GestureDetector(
                                                              onTap: () {
                                                                _downloadImage(imageURL);
                                                              },
                                                              child: Container(
                                                                child: Image.asset(
                                                                  'assets/images/img_10.png',
                                                                  height: 26,
                                                                  width: 26,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              width: 80,
                                              height: 100,
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.network(
                                                  imageURL,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  }
                                }
                                return ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: imageWidgets,
                                );
                              }
                            },
                          ),
                        ),
                      ),


                      // Row(
                      //   children: [
                      //     SizedBox(
                      //       width: 20,
                      //     ),
                      //     Text(
                      //       "April , 2019",
                      //       style: TextStyle(
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 17,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left: 20, right: 20),
                      //     child: Row(
                      //       children: [
                      //         Container(
                      //           height: 90,
                      //           width: 80,
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/ai1.png',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 10,
                      //         ),
                      //         Container(
                      //           height: 90,
                      //           width: 80,
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/ai2.png',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 10,
                      //         ),
                      //         Container(
                      //           height: 90,
                      //           width: 80,
                      //           child: ClipRRect(
                      //             borderRadius: BorderRadius.circular(10),
                      //             child: Image.asset(
                      //               'assets/images/ai3.png',
                      //               fit: BoxFit.cover,
                      //             ),
                      //           ),
                      //         ),
                      //         SizedBox(
                      //           width: 10,
                      //         ),
                      //         Stack(children: [
                      //           Container(
                      //             height: 90,
                      //             width: 80,
                      //             child: ClipRRect(
                      //               borderRadius: BorderRadius.circular(10),
                      //               child: Image.asset(
                      //                 'assets/images/ai4.png',
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ),
                      //           ),
                      //         ]),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
    // Container(
    //   child: Column(
    //     children: [
    //       SizedBox(height: 10,),
    //       Row(
    //         children: [
    //           SizedBox(
    //             width: 20,
    //           ),
    //           CircleAvatar(
    //             backgroundImage: NetworkImage('https://www.flaticon.com/free-icon/profile_3135715'),
    //           ),
    //           SizedBox(
    //             width: 18,
    //           ),
    //           Column(
    //             children: [
    //               Text(
    //                 "Welcome back",
    //                 style:
    //                 TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    //               ),
    //
    //               Row(
    //                 children: [
    //                   SizedBox(width: 7,),
    //                   Text("Khushali Sarvaiya"),
    //                 ],
    //               ),
    //             ],
    //           ),
    //           // SizedBox(width: 30,),
    //           Spacer(),
    //           Row(
    //             children: [
    //               //this is for notification
    //               // Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3239/3239952.png',),
    //               //   height: 20,width: 20,),
    //               SizedBox(width: 10,),
    //               Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/2040/2040504.png',),
    //                 height: 20,width: 20,),
    //               SizedBox(width: 10,),
    //               Stack(
    //                   children:
    //                   [
    //                     Material(
    //                       borderRadius: BorderRadius.circular(20),
    //                       child: Container(
    //                         height: 30,
    //                         width: 50,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(20),
    //                           color: Colors.deepPurple[200],
    //                         ),
    //                       ),
    //                     ),
    //                     Positioned(
    //                       top: 7,
    //                       left: 4,
    //                       child: Image(
    //                         image: NetworkImage('https://cdn-icons-png.flaticon.com/128/6423/6423882.png',),
    //                         height: 15,width: 15,),
    //                     ),
    //                     Positioned(
    //                         top: 7,
    //                         right: 9,
    //                         child: Text("Pro",style: TextStyle(fontSize: 10),)),
    //                   ]
    //               ),
    //               SizedBox(
    //                 width: 22,
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //       SizedBox(height: 10,),
    //       Expanded(
    //         child:
    //         SingleChildScrollView(
    //           scrollDirection: Axis.vertical,
    //           child: Column(
    //             children: [
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               // Container(
    //               //   height: 150,
    //               //   width: MediaQuery.of(context).size.width * .9,
    //               //   decoration: BoxDecoration(
    //               //     gradient: LinearGradient(
    //               //       begin: Alignment.topLeft,
    //               //       end: Alignment.topRight,
    //               //       colors: [
    //               //         Color.fromRGBO(124, 87, 187, .5),
    //               //         Color.fromRGBO(128, 200, 226, 1)
    //               //       ],
    //               //     ),
    //               //     borderRadius: BorderRadius.all(Radius.circular(18)),
    //               //   ),
    //               //   child:
    //               //   Column(
    //               //     children: [
    //               //     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
    //               //       SizedBox(height: 17,),
    //               //       Row(
    //               //         children: [
    //               //           SizedBox(width: 20,),
    //               //           Container(
    //               //             height: 120,
    //               //             width: 100,
    //               //             decoration: BoxDecoration(
    //               //               color: Colors.white.withOpacity(0.3),
    //               //               borderRadius: BorderRadius.all(Radius.circular(18)),
    //               //             ),
    //               //             child: Column(
    //               //               children: [
    //               //                 SizedBox(height: 10,),
    //               //                 Text("Get the special discount",style: TextStyle(fontSize: 7,color: Colors.white,fontWeight: FontWeight.w800),),
    //               //                 Text("50%\nOFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white),),
    //               //                 //Text("OFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
    //               //               ],
    //               //             ),
    //               //           ),
    //               //           SizedBox(width: 20,),
    //               //           //SizedBox(width: MediaQuery.of(context).size.width * .2,),
    //               //         ],
    //               //       ),
    //               //     ],
    //               //   ),
    //               // ),
    //               //
    //               // SizedBox(height: 5,),
    //               //
    //               //    Expanded(
    //               //        child: Padding(
    //               //      padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
    //               //      child: Grid(),
    //               //    )
    //               //    ),
    //               // SingleChildScrollView(
    //               //   child: Padding(
    //               //     padding:  EdgeInsets.only(left: 20,right: 20),
    //               //     child: SizedBox(
    //               //          height: 330,
    //               //         child: Expanded(
    //               //         //  flex: 20,
    //               //             child: Grid())),
    //               //   ),
    //               // ),
    //               //recently
    //               //recently
    //               Row(
    //                 children: [
    //                   SizedBox(width: 22,),
    //                   Text("Rcently",style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 17,
    //                   ),),
    //                 ],
    //               ),
    //
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 13,right: 13),
    //                 child: SizedBox(
    //                   height: 100,
    //                   child: ListView.builder(
    //                       scrollDirection: Axis.horizontal,
    //                       itemCount: storageImages.length,
    //                       itemBuilder: (context,index){
    //                         return  FutureBuilder(
    //                             future: getImageUrl(storageImages[index]['images']),
    //                             builder: (context,snapshot){
    //                               if(snapshot.connectionState==ConnectionState.waiting){
    //                                 return CircularProgressIndicator();
    //                               }else if (snapshot.hasError){
    //                                 return Text('Error:${snapshot.error}');
    //                               }
    //                               else{
    //                                 return Padding(
    //                                   padding: const EdgeInsets.all(8.0),
    //                                   child: Container(
    //                                     height: 50,
    //                                     width: 80,
    //                                     child: ClipRRect(
    //                                       borderRadius: BorderRadius.circular(10),
    //                                       child: Image.asset(
    //                                         '${storageImages[index]['images']}',
    //                                         fit: BoxFit.cover,
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 );}
    //                             });  /*Padding(
    //                             padding: const EdgeInsets.all(8.0),
    //                             child: Container(
    //                               height: 50,
    //                               width: 80,
    //                               child: ClipRRect(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 child: Image.asset(
    //                                   '${products[index]['image_path']}',
    //                                   fit: BoxFit.cover,
    //                                 ),
    //                               ),
    //                             ),
    //                           );*/
    //                       }
    //                   ),
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //
    //               // albums
    //
    //               Row(
    //                 children: [
    //                   SizedBox(width: 20,),
    //                   Text("Albums",style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 17,
    //                   ),
    //                   ),
    //                   Spacer(),
    //                   Text("See all",style: TextStyle(fontWeight: FontWeight.bold),),
    //                   SizedBox(width: 20,),
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 7,
    //               ),
    //               Container(
    //                 height: 100,
    //                 width: MediaQuery.of(context).size.width * .91,
    //                 decoration: BoxDecoration(
    //                   gradient: LinearGradient(
    //                     begin: Alignment.topLeft,
    //                     end: Alignment.topRight,
    //                     colors: [
    //                       Color.fromRGBO(124, 87, 187, .5),
    //                       Color.fromRGBO(128, 200, 226, 1)
    //                     ],
    //                   ),
    //                   borderRadius: BorderRadius.all(Radius.circular(18)),
    //                 ),
    //                 child:
    //                 Column(
    //                   children: [
    //                     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
    //                     SizedBox(height: 23,),
    //                     Row(
    //                       children: [
    //                         SizedBox(width: 10,),
    //                         Text("Animals",style: TextStyle(fontWeight: FontWeight.bold),),
    //
    //                       ],
    //                     ),
    //                     SizedBox(height: 10,),
    //                     Row(
    //                       children: [
    //                         SizedBox(width: 10,),
    //                         Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold),),
    //
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               // SizedBox(
    //               //   height: 10,
    //               // ),
    //               // Row(
    //               //   children: [
    //               //     SizedBox(width: 20,),
    //               //     Text("Rcently",style: TextStyle(
    //               //       fontWeight: FontWeight.bold,
    //               //       fontSize: 17,
    //               //     ),),
    //               //   ],
    //               // ),
    //               // SizedBox(
    //               //   height: 10,
    //               // ),
    //               // SizedBox(
    //               //   height: 100,
    //               //   child: ListView.builder(
    //               //       scrollDirection: Axis.horizontal,
    //               //       itemCount: products.length,
    //               //       itemBuilder: (context,index){
    //               //         return    Padding(
    //               //           padding: const EdgeInsets.all(8.0),
    //               //           child: Container(
    //               //             height: 50,
    //               //             width: 80,
    //               //             child: ClipRRect(
    //               //               borderRadius: BorderRadius.circular(10),
    //               //               child: Image.asset(
    //               //                 '${products[index]['image_path']}',
    //               //                 fit: BoxFit.cover,
    //               //               ),
    //               //             ),
    //               //           ),
    //               //         );
    //               //       }
    //               //   ),
    //               // ),
    //               SizedBox(height: 20,),
    //               //all photos
    //               SingleChildScrollView(
    //                 scrollDirection: Axis.horizontal,
    //                 child: Row(
    //                   children: [
    //                     Column(
    //                       children: [
    //                         GestureDetector(
    //                           onTap: () async {
    //                             final pickedImage=await ImagePicker().pickImage(source: ImageSource.gallery);
    //                             if(pickedImage != null){
    //                               //File imageFile=File(pickedImage.path);
    //                               // Navigator.push(context,
    //                               //     MaterialPageRoute(builder: (context)=>Filters(imageFile: imageFile,)));
    //                             }
    //                           },// onTap: (){
    //                           //   all = true;
    //                           //   jackets = false;
    //                           //   shoes = false;
    //                           //   setState(() {
    //                           //
    //                           //   });
    //                           // },
    //                           child:
    //                           Material(
    //                             // elevation: 3.0,
    //                             borderRadius: BorderRadius.circular(10),
    //                             // color: all? Colors.deepPurple[200] : Colors.white,
    //                             //  color: selectedCategoryProvider.selectedCategory == index
    //                             //      ? Colors.white
    //                             //      : Colors.white.withOpacity(0.4),
    //                             child: Container(
    //                               height: 55,
    //                               width: 55,
    //                               decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 color: Colors.deepPurple[100],
    //                               ),
    //                               child: Padding(
    //                                 padding: const EdgeInsets.all(8.0),
    //                                 child:
    //                                 Icon(Icons.border_all_outlined),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(height: 5,),
    //                         Text("All photos",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
    //                       ],
    //                     ),
    //                     SizedBox(width: 33,),
    //                     Column(
    //                       children: [
    //                         GestureDetector(
    //                           onTap: () async {
    //                             final pickedImage=await ImagePicker().pickImage(source: ImageSource.camera);
    //                             if(pickedImage != null){
    //                             //  File imageFile=File(pickedImage.path);
    //                               // Navigator.push(context,
    //                               //     MaterialPageRoute(builder: (context)=>Filters(imageFile: imageFile,)));
    //                             }
    //                           },
    //                           // onTap: (){
    //                           //   all = true;
    //                           //   jackets = false;
    //                           //   shoes = false;
    //                           //   setState(() {
    //                           //
    //                           //   });
    //                           // },
    //                           child:
    //                           Material(
    //                             // elevation: 3.0,
    //                             borderRadius: BorderRadius.circular(10),
    //                             // color: all? Colors.deepPurple[200] : Colors.white,
    //                             //  color: selectedCategoryProvider.selectedCategory == index
    //                             //      ? Colors.white
    //                             //      : Colors.white.withOpacity(0.4),
    //                             child: Container(
    //                               height: 55,
    //                               width: 55,
    //                               decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 color: Colors.deepPurple[100],
    //                               ),
    //                               child: Padding(
    //                                 padding: const EdgeInsets.all(8.0),
    //                                 child:
    //                                 Icon(Icons.camera_alt),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(height: 5,),
    //                         Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
    //                       ],
    //                     ),
    //                     SizedBox(width: 32,),
    //                     Column(
    //                       children: [
    //                         GestureDetector(
    //                           // onTap: (){
    //                           //   all = true;
    //                           //   jackets = false;
    //                           //   shoes = false;
    //                           //   setState(() {
    //                           //
    //                           //   });
    //                           // },
    //                           child:
    //                           Material(
    //                             // elevation: 3.0,
    //                             borderRadius: BorderRadius.circular(10),
    //                             // color: all? Colors.deepPurple[200] : Colors.white,
    //                             //  color: selectedCategoryProvider.selectedCategory == index
    //                             //      ? Colors.white
    //                             //      : Colors.white.withOpacity(0.4),
    //                             child: Container(
    //                               height: 55,
    //                               width: 55,
    //                               decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 color: Colors.deepPurple[100],
    //                               ),
    //                               child: Padding(
    //                                 padding: const EdgeInsets.all(8.0),
    //                                 child:
    //                                 Icon(Icons.download_for_offline),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(height: 5,),
    //                         Text("Downloads",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
    //                       ],
    //                     ),
    //                     SizedBox(width: 30,),
    //                     Column(
    //                       children: [
    //                         GestureDetector(
    //                           // onTap: (){
    //                           //   all = true;
    //                           //   jackets = false;
    //                           //   shoes = false;
    //                           //   setState(() {
    //                           //
    //                           //   });
    //                           // },
    //                           child:
    //                           Material(
    //                             // elevation: 3.0,
    //                             borderRadius: BorderRadius.circular(10),
    //                             // color: all? Colors.deepPurple[200] : Colors.white,
    //                             //  color: selectedCategoryProvider.selectedCategory == index
    //                             //      ? Colors.white
    //                             //      : Colors.white.withOpacity(0.4),
    //                             child: Container(
    //                               height: 55,
    //                               width: 55,
    //                               decoration: BoxDecoration(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 color: Colors.deepPurple[100],
    //                               ),
    //                               child: Padding(
    //                                 padding: const EdgeInsets.all(8.0),
    //                                 child:
    //                                 Icon(Icons.file_copy_rounded),
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                         SizedBox(height: 5,),
    //                         Text("Others",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               SizedBox(
    //                 height: 15,
    //               ), //november
    //               Row(
    //                 children: [
    //                   SizedBox(width: 20,),
    //                   Text("November , 2019",style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 17,
    //                   ),),
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               SingleChildScrollView(
    //                 scrollDirection: Axis.horizontal,
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(left: 20,right: 20),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         height: 90,
    //                         width: 80,
    //                         child: ClipRRect(
    //                           borderRadius: BorderRadius.circular(10),
    //                           child: Image.asset(
    //                             'assets/images/ai1.png',
    //                             fit: BoxFit.cover,
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(width: 10,),
    //                       Container(
    //                         height: 90,
    //                         width: 80,
    //                         child: ClipRRect(
    //                           borderRadius: BorderRadius.circular(10),
    //                           child: Image.asset(
    //                             'assets/images/ai2.png',
    //                             fit: BoxFit.cover,
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(width: 10,),
    //                       Container(
    //                         height: 90,
    //                         width: 80,
    //                         child: ClipRRect(
    //                           borderRadius: BorderRadius.circular(10),
    //                           child: Image.asset(
    //                             'assets/images/ai3.png',
    //                             fit: BoxFit.cover,
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(width: 10,),
    //                       Stack(
    //                           children:
    //                           [
    //                             Container(
    //                               height: 90,
    //                               width: 80,
    //                               child: ClipRRect(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 child: Image.asset(
    //                                   'assets/images/ai4.png',
    //                                   fit: BoxFit.cover,
    //                                 ),
    //                               ),
    //                             ),]
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               //April
    //               Row(
    //                 children: [
    //                   SizedBox(width: 20,),
    //                   Text("April , 2019",style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 17,
    //                   ),),
    //                 ],
    //               ),
    //               SizedBox(
    //                 height: 10,
    //               ),
    //               SingleChildScrollView(
    //                 scrollDirection: Axis.horizontal,
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(left: 20,right: 20),
    //                   child: Row(
    //                     children: [
    //                       Container(
    //                         height: 90,
    //                         width: 80,
    //                         child: ClipRRect(
    //                           borderRadius: BorderRadius.circular(10),
    //                           child: Image.asset(
    //                             'assets/images/ai1.png',
    //                             fit: BoxFit.cover,
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(width: 10,),
    //                       Container(
    //                         height: 90,
    //                         width: 80,
    //                         child: ClipRRect(
    //                           borderRadius: BorderRadius.circular(10),
    //                           child: Image.asset(
    //                             'assets/images/ai2.png',
    //                             fit: BoxFit.cover,
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(width: 10,),
    //                       Container(
    //                         height: 90,
    //                         width: 80,
    //                         child: ClipRRect(
    //                           borderRadius: BorderRadius.circular(10),
    //                           child: Image.asset(
    //                             'assets/images/ai3.png',
    //                             fit: BoxFit.cover,
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(width: 10,),
    //                       Stack(
    //                           children:
    //                           [
    //                             Container(
    //                               height: 90,
    //                               width: 80,
    //                               child: ClipRRect(
    //                                 borderRadius: BorderRadius.circular(10),
    //                                 child: Image.asset(
    //                                   'assets/images/ai4.png',
    //                                   fit: BoxFit.cover,
    //                                 ),
    //                               ),
    //                             ),]
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       // Continue with the rest of your content...
    //     ],
    //   ),
    // );
  }
}
