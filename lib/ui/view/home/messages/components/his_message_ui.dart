import 'package:flutter/material.dart';

class HisMessageUI extends StatelessWidget {
  const HisMessageUI();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        constraints: BoxConstraints(minWidth: 70, maxWidth: 275),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: const Radius.circular(10),
              bottomRight: const Radius.circular(10),
              bottomLeft: const Radius.circular(10)),
          color: Color(0xffc7defa),
        ),
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 7),
        margin: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .copyWith(fontSize: 15, color: Colors.black),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                '14:12',
                style: TextStyle(
                    fontSize: 12, color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
