import 'package:flutter/material.dart';
import 'package:sum_app/button.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '0';
  String _input = '0';
  String _operator = '';
  double _num1 = 0;
  double _num2 = 0;

  void buttonPress(String value) {
    setState(() {
      if (value == 'c') {
        _output = '0';
        _input = '0';
        _operator = '';
        _num1 = 0;
        _num2 = 0;
      } else if (value == '=') {
        _num2 = double.parse(_input);
        switch (_operator) {
          case '+':
            _output = (_num1 + _num2).toString();
            break;
          case '-':
            _output = (_num1 - _num2).toString();
            break;
          case '×':
            _output = (_num1 * _num2).toString();
            break;
          case '÷':
            _output = _num2 != 0 ? (_num1 / _num2).toString() : 'Error';
            break;
          case '/':
            _output = (_num1 % _num2).toString();
            break;
          case '%':
            _output = (_num1 * _num2 / 100).toString();
            break;
        }
      } else if ({'+', '-', '×', '÷', '/', '%'}.contains(value)) {
        _num1 = double.parse(_input);
        _operator = value;
        _input = '';
      } else {
        if (_input == '0') {
          _input = value;
        } else {
          _input += value;
        }
        _output = _input;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomRight,
                child: Text(
                  _output,
                  style: const TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildButton(
                  onClick: () => buttonPress('c'),
                  text: 'c',
                  color: Colors.blueGrey,
                ),
                BuildButton(
                  onClick: () => buttonPress('/'),
                  text: '/',
                  color: Colors.blueGrey,
                ),
                BuildButton(
                  onClick: () => buttonPress('%'),
                  text: '%',
                  color: Colors.blueGrey,
                ),
                BuildButton(
                  onClick: () => buttonPress('÷'),
                  text: '÷',
                  color: Colors.orangeAccent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildButton(onClick: () => buttonPress('7'), text: '7'),
                BuildButton(onClick: () => buttonPress('8'), text: '8'),
                BuildButton(onClick: () => buttonPress('9'), text: '9'),
                BuildButton(
                  onClick: () => buttonPress('×'),
                  text: '×',
                  color: Colors.orangeAccent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildButton(onClick: () => buttonPress('4'), text: '4'),
                BuildButton(onClick: () => buttonPress('5'), text: '5'),
                BuildButton(onClick: () => buttonPress('6'), text: '6'),
                BuildButton(
                  onClick: () => buttonPress('-'),
                  text: '-',
                  color: Colors.orangeAccent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildButton(onClick: () => buttonPress('1'), text: '1'),
                BuildButton(onClick: () => buttonPress('2'), text: '2'),
                BuildButton(onClick: () => buttonPress('3'), text: '3'),
                BuildButton(
                  onClick: () => buttonPress('+'),
                  text: '+',
                  color: Colors.orangeAccent,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildButton(onClick: () => buttonPress('00'), text: '00'),
                BuildButton(onClick: () => buttonPress('0'), text: '0'),
                BuildButton(onClick: () => buttonPress('.'), text: '.'),
                BuildButton(
                  onClick: () => buttonPress('='),
                  text: '=',
                  color: Colors.orangeAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
