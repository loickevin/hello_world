import 'package:flutter/material.dart';
import 'services/api_service.dart';


class HelloPage extends StatefulWidget {

  const HelloPage({super.key});


  @override
  State<HelloPage> createState() => _HelloPageState();

}


class _HelloPageState extends State<HelloPage> {


  String message = "Chargement...";


  @override
  void initState() {

    super.initState();

    loadMessage();

  }


  void loadMessage() async {

    final result = await ApiService.getHello();

    setState(() {

      message = result;

    });

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Text(

          message,

          style: const TextStyle(fontSize: 30),

        ),

      ),

    );

  }
}


