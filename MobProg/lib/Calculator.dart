import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  var result="0";
  var operations = "0";

  insertNumber(value){
    setState(() {
      if(result == 0){
        result = value.toString();
      }else{
        result += value.toString();
      }
    });
  }
  operatorSet(value){
    setState(() {
      operations = value;
      result +=value;
    });
  }
  clearFunction(){
    setState(() {
      result = "";
    });
  }

  calculate() {
    var data = result.split(operations);

    var number1 = data[0];
    var number2 = data[1];

    setState(() {
      switch(operations) {
        case '*':
          result = (double.parse(number1) * double.parse(number2)).toStringAsFixed(1);
          break;
        case '/':
          result = (double.parse(number1) / double.parse(number2)).toStringAsFixed(1);
          break;
        case '-':
          result = (double.parse(number1) - double.parse(number2)).toStringAsFixed(1);
          break;
        case '+':
          result = (double.parse(number1) + double.parse(number2)).toStringAsFixed(1);
          break;
      }
    });
  }
  backspaceOperation(){
    setState(() {
      if (result.isNotEmpty) {
        result = result.substring(0, result.length-1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  color: Colors.black,
                  height: 400,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(result,
                        style: const TextStyle(
                            fontSize: 100,
                            color: Colors.white
                        ),
                      ),
                    ],
                  )
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          color: Colors.blue,
                          height:100,
                          width: 120,
                          child: MaterialButton(
                            child: Text("7",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              insertNumber(7);
                            },
                          ),
                        ),
                        Container(
                          color: Colors.blue,
                          height: 100,
                          width: 120,
                          child: MaterialButton(
                              child: Text("8",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white
                                ),
                              ),
                              onPressed: (){
                                insertNumber(8);
                              }
                          ),
                        ),
                        Container(
                          color: Colors.blue,
                          height: 100,
                          width: 120,
                          child: MaterialButton(
                              child: Text("9",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white
                                ),),
                              onPressed: (){
                                insertNumber(9);
                              }
                          ),
                        ),
                        Container(
                          color: Colors.redAccent,
                          height: 100,
                          width: 130,
                          child: MaterialButton(
                              child: Text("/",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white
                                ),),
                              onPressed: (){
                                operatorSet("/");
                              }
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.blue,
                          child: MaterialButton(
                            child: Text("4",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              insertNumber(4);
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.blue,
                          child: MaterialButton(
                            child: Text("5",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              insertNumber(5);
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.blue,
                          child: MaterialButton(
                            child: Text("6",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30
                              ),),
                            onPressed: (){
                              insertNumber(6);
                            },
                          ),
                        ),
                        Container(
                          color: Colors.redAccent,
                          height: 100,
                          width: 130,
                          child: MaterialButton(
                            child: Text("*",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              operatorSet("*");
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          color: Colors.blue,
                          height: 100,
                          width: 120,
                          child: MaterialButton(
                            child: Text("1",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              insertNumber(1);
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.blue,
                          child: MaterialButton(
                            child: Text("2",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              insertNumber(2);
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.blue,
                          child: MaterialButton(
                            child: Text("3",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              insertNumber(3);
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 130,
                          color: Colors.redAccent,
                          child: MaterialButton(
                            child: Text("-",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              operatorSet("-");
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.blue,
                          child: MaterialButton(
                            child: Text("0",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              insertNumber(0);
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.blue,
                          child: MaterialButton(
                            child: Text(".",
                              style: TextStyle(
                                  fontSize: 70,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              setState(() {
                                operations = ".";

                              });
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 120,
                          color: Colors.redAccent,
                          child: MaterialButton(
                            child: Text("C",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              clearFunction();
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 130,
                          color: Colors.redAccent,
                          child: MaterialButton(
                            child: Text("+",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){

                              operatorSet("+");
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 100,
                          width: 240,
                          color: Colors.redAccent,
                          child: MaterialButton(
                            child: Text("=",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white
                              ),),
                            onPressed: (){
                              calculate();
                            },
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 250,
                          color: Colors.redAccent,
                          child: MaterialButton(
                            child: Text("BACKSPACE",
                              style: TextStyle(
                                  fontSize: 30
                              ),),
                            onPressed: (){
                              backspaceOperation();
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )


    );

  }
}