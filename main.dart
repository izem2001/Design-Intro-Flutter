import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Row-Stack-Column'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(width: 500, height: 500, color: Colors.indigo,),
          Row(
            children: [
              Container(width: 100, height: 100,color: Colors.pink,),
              Container(width: 100, height: 100,color: Colors.blueAccent,),
              Column(
                children: [
                    Container(width: 100, height: 100, color: Colors.cyanAccent,),
                    Container(width: 100, height: 100,color: Colors.greenAccent,),
                ],
              )
            ],
          )
        ]
      )
    );
  }
}

