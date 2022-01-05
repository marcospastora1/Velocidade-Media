import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vm/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Velocidade Média'),
        centerTitle: true,
      ),
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.directions_car,
              size: 120,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Distancia (Km)',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Tempo (Hrs)',
                labelStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
            
            Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Calcular',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
