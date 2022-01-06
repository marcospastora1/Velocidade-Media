import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final texto = 'Informe os dados para calcular a velocidade'.obs;

  final tempController = TextEditingController();
  final distController = TextEditingController();

  final keyForm = GlobalKey<FormState>();

  void reboot(){
    tempController.text = '';
    distController.text= '';
    texto.value = 'Informe os dados para calcular a velocidade';
  }

  void calcVelocidade() {
    if (keyForm.currentState!.validate()) {
      final distancia = double.parse(distController.text);
      final tempo = double.parse(tempController.text);
      final velocidade = distancia / tempo;

      texto.value = 'A velocidade média do objeto foi de ${velocidade.toStringAsPrecision(3)} km/h';
    }
  }

  String? valDist(value) {
    if (value.isEmpty) {
      return 'Preencha o campo de Distancia';
    }
  }

  String? valTemp(value) {
    if (value.isEmpty) {
      return 'Preencha o campo de Tempo';
    }
  }
}
