import 'package:flutter/material.dart';
import 'package:untitled46/widgets/fetchdatawidgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Göndərilən məlumat',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('API Sorğusu'),
        ),
        body: const Center(
          child: FetchDataWidget(),
        ),
      ),
    );
  }
}
