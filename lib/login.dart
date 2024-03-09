import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      tools: [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => LoginPage(),
    ),
  );
  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //     home: OnBorading()));
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _image(context),
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }
  _image(context){
    return Row(
      children: [
        Image.asset('assets/images/img_2.png'),
      ],
    );
  }
  _header(context) {
    return const Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        Text("Enter your credential to login"),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none
              ),
              fillColor: Colors.purple.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.password),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.purple,
          ),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Forgot password?",
        style: TextStyle(color: Colors.purple),
      ),
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        TextButton(
            onPressed: () {
            },
            child: const Text("Sign Up", style: TextStyle(color: Colors.purple),)
        )
      ],
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final List<Widget> _screens = [
//     Enhance(),
//     Ai(),
//     Filters(),
//     // CartPage(
//     //   product: Product(
//     //       id: 1,
//     //       name: 'Nike air max',
//     //       category: "Out of stock",
//     //       price: 180.0,
//     //       description: 'clean lines and timeless clean lines and timelessclean lines and timelessclean lines and timelessclean lines and timelessclean lines and timeless',
//     //       image: 'assets/images/1.png',
//     //       quantitiy: 1
//     //   ),
//     // ),
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   int _selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // appBar: AppBar(
//         //
//         //   centerTitle: true,
//         //   leading:
//         //   Padding(
//         //     padding: const EdgeInsets.all(12.0),
//         //     child: CircleAvatar(child: Image(image: AssetImage('assets/drawer1.png'),height: 20,width: 20,)),
//         //   ),
//         //   // Container(
//         //   //   padding: EdgeInsets.all(13),
//         //   //   // height: 10,
//         //   //   //   width: 10,
//         //   //     child: CircleAvatar(
//         //   //       backgroundImage: AssetImage('assets/drawer1.png',),
//         //   //       radius: 3,
//         //   //     ),
//         //   //
//         //   // ),
//         //   title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
//         //   actions: [
//         //     IconButton(
//         //       onPressed: () {
//         //         Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),
//         //         ),);
//         //       },
//         //       icon: Padding(
//         //         padding: const EdgeInsets.all(4.0),
//         //         child: CircleAvatar(child: Image(image: AssetImage('assets/cart.png'),height: 20,width: 20,)),
//         //       ),
//         //     ),
//         //     IconButton(
//         //       onPressed: () {
//         //         Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),
//         //         ),);
//         //       },
//         //       icon: CircleAvatar(child: Image(image: AssetImage('assets/profile.png',),),radius: 15,),
//         //     ),
//         //   ],
//         // ),
//         body:
//         Center(
//           child: _screens.elementAt(_selectedIndex),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.black,
//           type: BottomNavigationBarType.shifting,
//           currentIndex: _selectedIndex,
//           unselectedItemColor: Colors.grey,
//           selectedItemColor: Colors.deepPurple[200],
//           onTap: _onItemTapped,
//           elevation: 5,
//           items: [
//             BottomNavigationBarItem(
//               backgroundColor: Colors.grey[200],
//               icon: Icon(Icons.home),
//               label: 'Enhance',
//             ),
//             BottomNavigationBarItem(
//               backgroundColor: Colors.grey[200],
//               icon: Icon(Icons.favorite),
//               label: 'AI Photos',
//             ),
//             BottomNavigationBarItem(
//               backgroundColor: Colors.grey[200],
//               icon: Icon(Icons.settings_overscan_sharp),
//               label: 'AI Filters',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class _EnhanceState extends State<Enhance> {
//   List products = [
//     {"Product_name":"AI Avatar Generator","price":"\$200" ,"image_path":'assets/images/ai1.png'},
//     {"Product_name":"AI Scene Generator","price":"\$200" ,"image_path":'assets/images/ai2.png'},
//     {"Product_name":"AI Anime Generator","price":"\$200" ,"image_path":'assets/images/ai3.png'},
//     {"Product_name":"AI Cartoonizer","price":"\$200" ,"image_path":'assets/images/ai4.png'},
//     {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/images/ai5.png'},
//     {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/images/ai6.png'},
//     // {"Product_name":"AI  Generator","price":"\$200" ,"image_path":'assets/images/1.png'},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return
//       SafeArea(
//         child: Scaffold(
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
//           SingleChildScrollView(
//             child: Column(
//                 children:
//                 [
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: 20,
//                       ),
//                       CircleAvatar(
//                         backgroundImage: NetworkImage('https://www.flaticon.com/free-icon/profile_3135715'),
//                       ),
//                       SizedBox(
//                         width: 18,
//                       ),
//                       Column(
//                         children: [
//                           Text(
//                             "Welcome back",
//                             style:
//                             TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//                           ),
//
//                           Row(
//                             children: [
//                               SizedBox(width: 7,),
//                               Text("Khushali Sarvaiya"),
//                             ],
//                           ),
//                         ],
//                       ),
//                       // SizedBox(width: 30,),
//                       Spacer(),
//
//                       Row(
//                         children: [
//                           //this is for notification
//                           // Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3239/3239952.png',),
//                           //   height: 20,width: 20,),
//                           SizedBox(width: 10,),
//                           Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/2040/2040504.png',),
//                             height: 20,width: 20,),
//                           SizedBox(width: 10,),
//                           Stack(
//                               children:
//                               [
//                                 Material(
//                                   borderRadius: BorderRadius.circular(20),
//                                   child: Container(
//                                     height: 30,
//                                     width: 50,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: Colors.deepPurple[200],
//                                     ),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   top: 7,
//                                   left: 4,
//                                   child: Image(
//                                     image: NetworkImage('https://cdn-icons-png.flaticon.com/128/6423/6423882.png',),
//                                     height: 15,width: 15,),
//                                 ),
//                                 Positioned(
//                                     top: 7,
//                                     right: 9,
//                                     child: Text("Pro",style: TextStyle(fontSize: 10),)),
//                               ]
//                           ),
//                           SizedBox(
//                             width: 22,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       SizedBox(
//                         height: 5,
//                       ),
//
//                       SizedBox(
//                         height: 10,
//                       ),
//                       // Container(
//                       //   height: 150,
//                       //   width: MediaQuery.of(context).size.width * .9,
//                       //   decoration: BoxDecoration(
//                       //     gradient: LinearGradient(
//                       //       begin: Alignment.topLeft,
//                       //       end: Alignment.topRight,
//                       //       colors: [
//                       //         Color.fromRGBO(124, 87, 187, .5),
//                       //         Color.fromRGBO(128, 200, 226, 1)
//                       //       ],
//                       //     ),
//                       //     borderRadius: BorderRadius.all(Radius.circular(18)),
//                       //   ),
//                       //   child:
//                       //   Column(
//                       //     children: [
//                       //     //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
//                       //       SizedBox(height: 17,),
//                       //       Row(
//                       //         children: [
//                       //           SizedBox(width: 20,),
//                       //           Container(
//                       //             height: 120,
//                       //             width: 100,
//                       //             decoration: BoxDecoration(
//                       //               color: Colors.white.withOpacity(0.3),
//                       //               borderRadius: BorderRadius.all(Radius.circular(18)),
//                       //             ),
//                       //             child: Column(
//                       //               children: [
//                       //                 SizedBox(height: 10,),
//                       //                 Text("Get the special discount",style: TextStyle(fontSize: 7,color: Colors.white,fontWeight: FontWeight.w800),),
//                       //                 Text("50%\nOFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 35,color: Colors.white),),
//                       //                 //Text("OFF",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
//                       //               ],
//                       //             ),
//                       //           ),
//                       //           SizedBox(width: 20,),
//                       //           //SizedBox(width: MediaQuery.of(context).size.width * .2,),
//                       //         ],
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                       //
//                       // SizedBox(height: 5,),
//                       //
//                       //    Expanded(
//                       //        child: Padding(
//                       //      padding: const EdgeInsets.only(left: 20,right: 20,top: 5),
//                       //      child: Grid(),
//                       //    )
//                       //    ),
//                       // SingleChildScrollView(
//                       //   child: Padding(
//                       //     padding:  EdgeInsets.only(left: 20,right: 20),
//                       //     child: SizedBox(
//                       //          height: 330,
//                       //         child: Expanded(
//                       //         //  flex: 20,
//                       //             child: Grid())),
//                       //   ),
//                       // ),
//                       //recently
//                       //recently
//                       Row(
//                         children: [
//                           SizedBox(width: 20,),
//                           Text("Rcently",style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 15,
//                           ),),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 8,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 13,right: 13),
//                         child: SizedBox(
//                           height: 100,
//                           child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: products.length,
//                               itemBuilder: (context,index){
//                                 return    Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: 50,
//                                     width: 80,
//                                     child: ClipRRect(
//                                       borderRadius: BorderRadius.circular(10),
//                                       child: Image.asset(
//                                         '${products[index]['image_path']}',
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               }
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//
//                       // albums
//
//                       Row(
//                         children: [
//                           SizedBox(width: 20,),
//                           Text("Albums",style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),
//                           ),
//                           Spacer(),
//                           Text("See all",style: TextStyle(fontWeight: FontWeight.bold),),
//                           SizedBox(width: 20,),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         height: 100,
//                         width: MediaQuery.of(context).size.width * .9,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topLeft,
//                             end: Alignment.topRight,
//                             colors: [
//                               Color.fromRGBO(124, 87, 187, .5),
//                               Color.fromRGBO(128, 200, 226, 1)
//                             ],
//                           ),
//                           borderRadius: BorderRadius.all(Radius.circular(18)),
//                         ),
//                         child:
//                         Column(
//                           children: [
//                             //  Image.network('https://i.pinimg.com/564x/b4/02/e3/b402e36ca4d14f0a0f42cf26e74aec19.jpg'),
//                             SizedBox(height: 23,),
//                             Row(
//                               children: [
//                                 SizedBox(width: 10,),
//                                 Text("Animals",style: TextStyle(fontWeight: FontWeight.bold),),
//
//                               ],
//                             ),
//                             SizedBox(height: 10,),
//                             Row(
//                               children: [
//                                 SizedBox(width: 10,),
//                                 Text("50+ photos",style: TextStyle(fontWeight: FontWeight.bold),),
//
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       // SizedBox(
//                       //   height: 10,
//                       // ),
//                       // Row(
//                       //   children: [
//                       //     SizedBox(width: 20,),
//                       //     Text("Rcently",style: TextStyle(
//                       //       fontWeight: FontWeight.bold,
//                       //       fontSize: 17,
//                       //     ),),
//                       //   ],
//                       // ),
//                       // SizedBox(
//                       //   height: 10,
//                       // ),
//                       // SizedBox(
//                       //   height: 100,
//                       //   child: ListView.builder(
//                       //       scrollDirection: Axis.horizontal,
//                       //       itemCount: products.length,
//                       //       itemBuilder: (context,index){
//                       //         return    Padding(
//                       //           padding: const EdgeInsets.all(8.0),
//                       //           child: Container(
//                       //             height: 50,
//                       //             width: 80,
//                       //             child: ClipRRect(
//                       //               borderRadius: BorderRadius.circular(10),
//                       //               child: Image.asset(
//                       //                 '${products[index]['image_path']}',
//                       //                 fit: BoxFit.cover,
//                       //               ),
//                       //             ),
//                       //           ),
//                       //         );
//                       //       }
//                       //   ),
//                       // ),
//                       SizedBox(height: 20,),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child:
//                         Row(
//                             children:
//                             [
//                               SizedBox(width: 20,),
//                               Material(
//                                 // elevation: 3.0,
//                                 borderRadius: BorderRadius.circular(10),
//                                 //  color: all? Colors.deepPurple[200] : Colors.white,
//                                 //  color: selectedCategoryProvider.selectedCategory == index
//                                 //      ? Colors.white
//                                 //      : Colors.white.withOpacity(0.4),
//                                 child: Container(
//                                   height: 65,
//                                   width: 65,
//                                   decoration: BoxDecoration(
//                                     color: Colors.deepPurple[100],
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Image.asset('assets/images/all_pro.png',height: 1,width: 1,
//                                       // color:all? Colors.white : Colors.black ,
//                                       //  color: selectedCategoryProvider.selectedCategory == index
//                                       //     ? Colors.red
//                                       //   : Colors.grey
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 25,),
//                               Material(
//                                 // elevation: 3.0,
//                                 borderRadius: BorderRadius.circular(10),
//                                 //  color: all? Colors.deepPurple[200] : Colors.white,
//                                 //  color: selectedCategoryProvider.selectedCategory == index
//                                 //      ? Colors.white
//                                 //      : Colors.white.withOpacity(0.4),
//                                 child: Container(
//                                   height: 65,
//                                   width: 65,
//                                   decoration: BoxDecoration(
//                                     color: Colors.deepPurple[100],
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Image.asset('assets/images/camera.png',height: 1,width: 1,
//                                       // color:all? Colors.white : Colors.black ,
//                                       //  color: selectedCategoryProvider.selectedCategory == index
//                                       //     ? Colors.red
//                                       //   : Colors.grey
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 25,),
//                               Material(
//                                 // elevation: 3.0,
//                                 borderRadius: BorderRadius.circular(10),
//                                 //  color: all? Colors.deepPurple[200] : Colors.white,
//                                 //  color: selectedCategoryProvider.selectedCategory == index
//                                 //      ? Colors.white
//                                 //      : Colors.white.withOpacity(0.4),
//                                 child: Container(
//                                   height: 65,
//                                   width: 65,
//                                   decoration: BoxDecoration(
//                                     color: Colors.deepPurple[100],
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Image.asset('assets/images/download.png',height: 1,width: 1,
//                                       // color:all? Colors.white : Colors.black ,
//                                       //  color: selectedCategoryProvider.selectedCategory == index
//                                       //     ? Colors.red
//                                       //   : Colors.grey
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 25,),
//                               Material(
//                                 // elevation: 3.0,
//                                 borderRadius: BorderRadius.circular(10),
//                                 //  color: all? Colors.deepPurple[200] : Colors.white,
//                                 //  color: selectedCategoryProvider.selectedCategory == index
//                                 //      ? Colors.white
//                                 //      : Colors.white.withOpacity(0.4),
//                                 child: Container(
//                                   height: 65,
//                                   width: 65,
//                                   decoration: BoxDecoration(
//                                     color: Colors.deepPurple[100],
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Image.asset('assets/images/files.png',height: 1,width: 1,
//                                       // color:all? Colors.white : Colors.black ,
//                                       //  color: selectedCategoryProvider.selectedCategory == index
//                                       //     ? Colors.red
//                                       //   : Colors.grey
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 20,),
//                             ]
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       //november
//                       Row(
//                         children: [
//                           SizedBox(width: 20,),
//                           Text("November , 2019",style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 20,right: 20),
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 90,
//                                 width: 80,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset(
//                                     'assets/images/ai1.png',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 10,),
//                               Container(
//                                 height: 90,
//                                 width: 80,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset(
//                                     'assets/images/ai2.png',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 10,),
//                               Container(
//                                 height: 90,
//                                 width: 80,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset(
//                                     'assets/images/ai3.png',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 10,),
//                               Stack(
//                                   children:
//                                   [
//                                     Container(
//                                       height: 90,
//                                       width: 80,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(10),
//                                         child: Image.asset(
//                                           'assets/images/ai4.png',
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ),
//                                     ),]
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       //April
//                       Row(
//                         children: [
//                           SizedBox(width: 20,),
//                           Text("April , 2019",style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 17,
//                           ),),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 20,right: 20),
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: 90,
//                                 width: 80,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset(
//                                     'assets/images/ai1.png',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 10,),
//                               Container(
//                                 height: 90,
//                                 width: 80,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset(
//                                     'assets/images/ai2.png',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 10,),
//                               Container(
//                                 height: 90,
//                                 width: 80,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Image.asset(
//                                     'assets/images/ai3.png',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: 10,),
//                               Stack(
//                                   children:
//                                   [
//                                     Container(
//                                       height: 90,
//                                       width: 80,
//                                       child: ClipRRect(
//                                         borderRadius: BorderRadius.circular(10),
//                                         child: Image.asset(
//                                           'assets/images/ai4.png',
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ),
//                                     ),]
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ]
//             ),
//           ),
//         ),
//       );
//   }
// }