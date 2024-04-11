import 'package:flutter/material.dart';
import 'package:projects/widgets/provider.dart';
import 'package:provider/provider.dart';

import 'homescreen.dart';

class Remove_Background extends StatefulWidget {
  const Remove_Background({super.key});

  @override
  State<Remove_Background> createState() => _Remove_BackgroundState();
}

class _Remove_BackgroundState extends State<Remove_Background> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Crop Screen",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            },
            icon: Icon(Icons.close,color: Colors.white,)),
        actions: [
          IconButton(
            onPressed: (){},
          //     onPressed: () async {
          //   ui.Image bitmap = await controller.croppedBitmap();
          //   ByteData? data = await bitmap.toByteData(format: ImageByteFormat.png);
          //   Uint8List bytes = data!.buffer.asUint8List();
          //   appImageProvider.changeImage(bytes);
          //   if(!mounted) return;
          //   Navigator.of(context).pop();
          //
          // },
              icon: Icon(Icons.check,color: Colors.white,)),
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
    );
  }
}
