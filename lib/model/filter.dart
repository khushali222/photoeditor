import 'package:flutter/material.dart';

import '../helper/filters_s.dart';

class Filters{
  List<Filter> list(){
   return <Filter>[
     Filter(
         'No Filter',
      [
        1, 0, 0, 0, 0,
       0, 1, 0, 0, 0,
       0, 0, 1, 0, 0,
       0, 0, 0, 1, 0,
       0, 0, 0, 0, 1,
      ]

     ),
      Filter(
        'purple',
          [
            1 ,-0.2 ,0,0,0,
            0 ,1,0 ,-0.1,0,
            0, 1.2,1,0.1,0,
            0,0, 1.7,1,0
          ]

      ),
     Filter(
         'purple',
         [
           1 ,-0.2 ,0,0,0,
           0 ,1,0 ,-0.1,0,
           0, 1.2,1,0.1,0,
           0,0, 1.7,1,0
         ]

     ),
     Filter(
         'purple',
         [
           1 ,-0.2 ,0,0,0,
           0 ,1,0 ,-0.1,0,
           0, 1.2,1,0.1,0,
           0,0, 1.7,1,0
         ]

     ),
     Filter(
         'purple',
         [
           1 ,-0.2 ,0,0,0,
           0 ,1,0 ,-0.1,0,
           0, 1.2,1,0.1,0,
           0,0, 1.7,1,0
         ]

     ),
   ];
  }
}