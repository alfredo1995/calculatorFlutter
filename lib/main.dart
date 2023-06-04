import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String numero = "número";

  double primeiroNumero = 0.0;

  String operacao = '';

  void Calcular(String tecla) {
    switch (tecla) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
        setState(() {
          numero += tecla;

          numero = numero.replaceAll(',', '.');

          // if(numero.contains('.')){
          //   double numeroDouble = double.parse(numero);
          //   numero = numeroDouble.toString();
          // }else{
          //   int numeroInt = int.parse(numero);
          //   numero = numeroInt.toString();
          // }}
        });
        break;

      case '+':
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0';
        break;
        
      case '-':
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0';
        break;

      case 'x':
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0';
        break;

      case '/':
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0';
        break;


      case '=':
        double resultado = 0;

        if (operacao == '+') {
          resultado = primeiroNumero + double.parse(numero);
        }
        if (operacao == '-') {
          resultado = primeiroNumero - double.parse(numero);
        }
        if (operacao == 'x') {
          resultado = primeiroNumero * double.parse(numero);
        }
        if (operacao == '/') {
          resultado = primeiroNumero / double.parse(numero);
        }


        String resultadoString = resultado.toString();

        List<String> resultadoPartes = resultadoString.split('.');
        print(resultadoPartes);

        setState(() {
          numero = resultado.toString();
          numero = numero.replaceAll(',', '.');
        });

        break;

      case 'AC':
        setState(() {
          numero = '0';
        });
        break;

      default:
        numero += tecla;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Calculadora'),
          ),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          // Text('coluna 1'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                numero,
                style: TextStyle(fontSize: 50),
              ),
            ],
          ),

          // Text('coluna 2'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => Calcular('AC'),
                child: Text(
                  'AC',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              Text(
                '',
                style: TextStyle(fontSize: 36),
              ),
              Text(
                '',
                style: TextStyle(fontSize: 36),
              ),
              GestureDetector(
                onTap: () => Calcular('<x'),
                child: Text(
                  '<x',
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ],
          ),

          // Text('coluna 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                  onTap: () {
                    Calcular('7');
                  },
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 36),
                  )),
              GestureDetector(
                onTap: () => Calcular('8'),
                child: Text(
                  '8',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('9'),
                child: Text(
                  '9',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('/'),
                child: Text(
                  '/',
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ],
          ),

          // Text('coluna 4'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => Calcular('4'),
                child: Text(
                  '4',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('5'),
                child: Text(
                  '5',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('6'),
                child: Text(
                  '6',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('x'),
                child: Text(
                  'x',
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ],
          ),

          // Text('coluna 5'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => Calcular('1'),
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('2'),
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('3'),
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('-'),
                child: Text(
                  '-',
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ],
          ),

          // Text('coluna 6'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => Calcular('0'),
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular(','),
                child: Text(
                  ',',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('='),
                child: Text(
                  '=',
                  style: TextStyle(fontSize: 36),
                ),
              ),
              GestureDetector(
                onTap: () => Calcular('+'),
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
