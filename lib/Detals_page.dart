import 'package:daryo_uz2/Moduls/Modul.dart';
import 'package:flutter/material.dart';

class DetalsPage extends StatefulWidget {
  final Moduls moduls;

  DetalsPage({
    Key? key,
    required this.moduls,
  }) : super(key: key);

  @override
  State<DetalsPage> createState() => _DetalsPageState();
}

class _DetalsPageState extends State<DetalsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(widget.moduls.imgUrl), //Image Asset
          Row(
            children: [
              Text(
                widget.moduls.widgetTuype,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(
                width: 110,
              ),
              Text(
                widget.moduls.cloc + " | 10 dekabr 2022 | ",
                style: const TextStyle(color: Colors.grey),
              ),
              const Icon(Icons.visibility, color: Colors.blue),
              Text(widget.moduls.viewNumbers),
              
            ],
          ),
          SizedBox(height: 24,),
          Text(widget.moduls.anonsTitle,style: TextStyle(fontSize: 24,color: Colors.black),),

        ], //Column
      ),
    );
  }
}
