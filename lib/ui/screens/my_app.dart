import 'package:flutter/material.dart';

import 'package:f_template_conversor_decimal_binario_2022/ui/widgets/converter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Converter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Converter'),
        ),
        body: Center(
          child: ConverterScreen(),
        ),
      ),
    );
  }
}
