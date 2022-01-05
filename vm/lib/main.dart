import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding.dart';
import 'home.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Velocidade Média',
      initialBinding: Binding(),
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/home', page: ()=> const HomePage(), binding: Binding()),
      ],
    );
  }
}