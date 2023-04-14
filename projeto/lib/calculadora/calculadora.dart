import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String tela = '0';
  double valor = 0.0;
  String escolha = '';

  void receberNumero(String numero) {}

  void calc(String tecla) {
    switch (tecla) {
      case '1':
        setState(() {
          tela += tecla;

          tela = tela.replaceAll(',', '.');

          if (tela.contains('.')) {
            double numeroDouble = double.parse(tela);
            tela = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(tela);
            tela = numeroInt.toString();
          }
          tela = tela.replaceAll('.', ',');
        });
        break;
      case '2':
        setState(() {
          tela += tecla;

          tela = tela.replaceAll(',', '.');

          if (tela.contains('.')) {
            double numeroDouble = double.parse(tela);
            tela = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(tela);
            tela = numeroInt.toString();
          }
          tela = tela.replaceAll('.', ',');
        });
        break;
      case '3':
        setState(() {
          tela += tecla;

          tela = tela.replaceAll(',', '.');

          if (tela.contains('.')) {
            double numeroDouble = double.parse(tela);
            tela = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(tela);
            tela = numeroInt.toString();
          }
          tela = tela.replaceAll('.', ',');
        });
        break;
      case '4':
        setState(() {
          tela += tecla;

          tela = tela.replaceAll(',', '.');

          if (tela.contains('.')) {
            double numeroDouble = double.parse(tela);
            tela = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(tela);
            tela = numeroInt.toString();
          }
          tela = tela.replaceAll('.', ',');
        });
        break;
      case '5':
        setState(() {
          tela += tecla;

          tela = tela.replaceAll(',', '.');

          if (tela.contains('.')) {
            double numeroDouble = double.parse(tela);
            tela = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(tela);
            tela = numeroInt.toString();
          }
          tela = tela.replaceAll('.', ',');
        });
        break;
      case '6':
        setState(() {
          tela += tecla;

          tela = tela.replaceAll(',', '.');

          if (tela.contains('.')) {
            double numeroDouble = double.parse(tela);
            tela = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(tela);
            tela = numeroInt.toString();
          }
          tela = tela.replaceAll('.', ',');
        });
        break;
      case '7':
        setState(() {
          tela += tecla;

          tela = tela.replaceAll(',', '.');

          if (tela.contains('.')) {
            double numeroDouble = double.parse(tela);
            tela = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(tela);
            tela = numeroInt.toString();
          }
          tela = tela.replaceAll('.', ',');
        });
        break;
      case '8':
        setState(() {
          tela += tecla;

          tela = tela.replaceAll(',', '.');

          if (tela.contains('.')) {
            double numeroDouble = double.parse(tela);
            tela = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(tela);
            tela = numeroInt.toString();
          }
          tela = tela.replaceAll('.', ',');
        });
        break;
      case '9':
        setState(() {
          tela += tecla;

          tela = tela.replaceAll(',', '.');

          if (tela.contains('.')) {
            double numeroDouble = double.parse(tela);
            tela = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(tela);
            tela = numeroInt.toString();
          }
          tela = tela.replaceAll('.', ',');
        });
        break;
      case '/':
        escolha = tecla;
        tela = tela.replaceAll(',', '.');
        valor = double.parse(tela);
        tela = tela.replaceAll('.', ',');
        tela = '0';
        break;
      case 'X':
        escolha = tecla;
        tela = tela.replaceAll(',', '.');
        valor = double.parse(tela);
        tela = tela.replaceAll('.', ',');
        tela = '0';
        break;
      case '-':
        escolha = tecla;
        tela = tela.replaceAll(',', '.');
        valor = double.parse(tela);
        tela = tela.replaceAll('.', ',');
        tela = '0';
        break;
      case '+':
        escolha = tecla;
        tela = tela.replaceAll(',', '.');
        valor = double.parse(tela);
        tela = tela.replaceAll('.', ',');
        tela = '0';
        break;
      case '=':
        double receber = 0.0;

        if (escolha == '/') {
          if (double.parse(tela) * 1 == 0) {
            return;
          } 
        }
        if (escolha == '+') {
            receber = valor + double.parse(tela);
          } if (escolha == '-') {
            receber = valor - double.parse(tela);
          } if (escolha == 'X') {
            receber = valor * double.parse(tela);
          } if (escolha == '/') {
            receber = valor / double.parse(tela);
          }
          if(receber.toString().contains('.')){
            
          }
          String pegarStr = receber.toString();

          List<String> pontoFloat = pegarStr.split('.');

          if (int.parse(pontoFloat[1]) * 1 == 0) {
          setState(() {
            tela = int.parse(pontoFloat[0]).toString();
          });
        } else {
          setState(() {
            tela = receber.toString();
          });
        }
        break;
      case 'C':
        setState(() {
          tela = '0';
        });
        break;
      case '<':
        setState(() {
          if (tela.length > 0) {
            tela = tela.substring(0, tela.length - 1);
          }
        });

        break;
      default:
        tela += tecla;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Calculadora'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  tela,
                  style: TextStyle(fontSize: 80),
                ),
              ],
            ),
            // -----------------C <--------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calc('C'),
                  child: Text(
                    'C',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                Text(' '),
                Text(' '),
                GestureDetector(
                  onTap: () => calc('<'),
                  child: Text(
                    '<',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            // -----------------789/--------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calc('7'),
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('8'),
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('9'),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('/'),
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            // ----------------456X---------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calc('4'),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('5'),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('6'),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('X'),
                  child: Text(
                    'X',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            // ------------------123--------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calc('1'),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('2'),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('3'),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('-'),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            // ----------------0,=+---------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => calc('0'),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc(','),
                  child: Text(
                    ',',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('='),
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                GestureDetector(
                  onTap: () => calc('+'),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
