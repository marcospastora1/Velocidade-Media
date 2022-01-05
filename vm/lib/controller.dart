import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final texto = 'Informe os dados para calcular a velocidade'.obs;

  final tempController = TextEditingController();
  final distController = TextEditingController();

  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  void reboot(){
    tempController.text = '';
    distController.text= '';
    texto.value = 'Informe os dados para calcular a velocidade';
  }

  void calcVelocidade() {
    if (keyForm.currentState!.validate()) {
      double distancia = double.parse(distController.text);
      double tempo = double.parse(tempController.text);
      double velocidade = distancia / tempo;

      texto.value =
          'A velocidade média do objeto foi de ${velocidade.toStringAsPrecision(4)} km/h';
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
