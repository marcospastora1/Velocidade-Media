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
        actions: [
          IconButton(onPressed: controller.reboot, icon: Icon(Icons.refresh),),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10, right: 10, top: 50),
          child: Form(
            key: controller.keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(Icons.directions_car, size: 120),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Distancia (Km)', labelStyle: TextStyle(
                      fontSize: 20, color: Colors.blue)),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20, color: Colors.blue),
                  controller: controller.distController,
                  validator: controller.valDist,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Tempo (Hrs)',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20, color: Colors.blue),
                  controller: controller.tempController,
                  validator: controller.valTemp,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: controller.calcVelocidade,
                      child: const Text(
                        'Calcular',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    controller.texto.value,
                    style: const TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
