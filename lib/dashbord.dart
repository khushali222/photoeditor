import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projects/screen/Filters.dart';
import 'package:projects/screen/ai.dart';
import 'package:projects/screen/enhance.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       tools: [
//         ...DevicePreview.defaultTools,
//       ],
//       builder: (context) => MyHomePage(),
//     ),
//   );
//   // runApp(MaterialApp(
//   //   debugShowCheckedModeBanner: false,
//   //     home: OnBorading()));
// }

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _screens = [
    Enhance(),
    Ai(),
    Filters(),
    // CartPage(
    //   product: Product(
    //       id: 1,
    //       name: 'Nike air max',
    //       category: "Out of stock",
    //       price: 180.0,
    //       description: 'clean lines and timeless clean lines and timelessclean lines and timelessclean lines and timelessclean lines and timelessclean lines and timeless',
    //       image: 'assets/images/1.png',
    //       quantitiy: 1
    //   ),
    // ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //
        //   centerTitle: true,
        //   leading:
        //   Padding(
        //     padding: const EdgeInsets.all(12.0),
        //     child: CircleAvatar(child: Image(image: AssetImage('assets/drawer1.png'),height: 20,width: 20,)),
        //   ),
        //   // Container(
        //   //   padding: EdgeInsets.all(13),
        //   //   // height: 10,
        //   //   //   width: 10,
        //   //     child: CircleAvatar(
        //   //       backgroundImage: AssetImage('assets/drawer1.png',),
        //   //       radius: 3,
        //   //     ),
        //   //
        //   // ),
        //   title: Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
        //   actions: [
        //     IconButton(
        //       onPressed: () {
        //         Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),
        //         ),);
        //       },
        //       icon: Padding(
        //         padding: const EdgeInsets.all(4.0),
        //         child: CircleAvatar(child: Image(image: AssetImage('assets/cart.png'),height: 20,width: 20,)),
        //       ),
        //     ),
        //     IconButton(
        //       onPressed: () {
        //         Navigator.push(context, MaterialPageRoute(builder: (context)=> CartPage(),
        //         ),);
        //       },
        //       icon: CircleAvatar(child: Image(image: AssetImage('assets/profile.png',),),radius: 15,),
        //     ),
        //   ],
        // ),
        body:
        Center(
          child: _screens.elementAt(_selectedIndex),
        ),
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
      ),
    );
  }
}
