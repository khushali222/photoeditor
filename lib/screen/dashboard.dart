
import 'package:flutter/material.dart';
import 'Filters.dart';
import 'ai.dart';
import 'enhance.dart';

// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//       home: DashboardScreen()
//   ),
//   );
// }

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  // List<dynamic> storageImages = [];
  //
  // Future<void> fetchImages() async {
  //   // Fetch products from Firestore
  //   QuerySnapshot querySnapshot =
  //   await FirebaseFirestore.instance.collection('images').get();
  //   print(querySnapshot);
  //   setState(() {
  //     storageImages = querySnapshot.docs.map((doc) => doc.data()).toList();
  //   });
  // }
  //
  // Future<String> getImageUrl(String imagePath) async {
  //   // Get download URL from Firebase Storage
  //   String downloadURL = await FirebaseStorage.instance
  //       .ref()
  //       .child(imagePath)
  //       .getDownloadURL();
  //   debugPrint(downloadURL.toString());
  //   return downloadURL;
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   fetchImages();
  // }
  int _selectedIndex = 0;
  List products = [
    {"Product_name":"AI Avatar Generator","price":"\$200" ,"image_path":'assets/image/ai1.png'},
    {"Product_name":"AI Scene Generator","price":"\$200" ,"image_path":'assets/image/ai2.png'},
    {"Product_name":"AI Anime Generator","price":"\$200" ,"image_path":'assets/image/ai3.png'},
    {"Product_name":"AI Cartoonizer","price":"\$200" ,"image_path":'assets/image/ai4.png'},
    {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/image/ai5.png'},
    {"Product_name":"AI Generator","price":"\$200" ,"image_path":'assets/image/ai6.png'},
    // {"Product_name":"AI  Generator","price":"\$200" ,"image_path":'assets/images/1.png'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _screens = [
    Enhance(),
    Ai(),
    Filters(),

  ];
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(child:
      Scaffold(
          // bottomNavigationBar: BottomNavigationBar(
          //     backgroundColor: Colors.white,
          //     items: const <BottomNavigationBarItem>[
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.home),
          //         label: "Home",
          //         backgroundColor: Colors.white,
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.heart_broken_sharp),
          //         label: "Enhenace",
          //         backgroundColor: Colors.white,
          //       ),
          //       BottomNavigationBarItem(
          //         icon: Icon(Icons.filter),
          //         label: "Filter",
          //         backgroundColor: Colors.white,
          //       ),
          //     ],
          //     type: BottomNavigationBarType.shifting,
          //     currentIndex: _selectedIndex,
          //     selectedItemColor: Colors.black,
          //     unselectedItemColor: Colors.grey,
          //     iconSize: 20,
          //     onTap: _onItemTapped,
          //     elevation: 5
          // ),
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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.deepPurple[200],
          onTap: _onItemTapped,
          elevation: 5,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.grey[200],
              icon: Icon(Icons.home),
              label: 'Enhance',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.grey[200],
              icon: Icon(Icons.favorite),
              label: 'AI Photos',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.grey[200],
              icon: Icon(Icons.settings_overscan_sharp),
              label: 'AI Filters',
            ),
          ],
        ),
          body:
          Center(
            child: _screens.elementAt(_selectedIndex),
          ),
      ),
      );
  }
}
