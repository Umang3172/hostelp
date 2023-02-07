import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class BigCard extends StatefulWidget {
  Image img;
  String name;
  BigCard({super.key, required this.img, required this.name});

  @override
  State<BigCard> createState() => _BigCardState();
}

class _BigCardState extends State<BigCard> {
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      slidingBeginOffset: Offset(0, 0.8),
      child: Card(
        child: Container(
          // padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: widget.img,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.name,
                  style: TextStyle(
                    color: Color.fromARGB(255, 48, 48, 48),
                    fontSize: 16,
                    fontFamily: 'EuclidCircular',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
