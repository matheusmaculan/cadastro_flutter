import 'package:flutter/material.dart';

void main() => runApp(
      Column(
        children: <Widget>[
          const Text(
            'Deliver features faster',
            textDirection: TextDirection.rtl,
          ),
          const Text(
            'Craft beautiful UIs',
            textDirection: TextDirection.rtl,
          ),
          const Text(
            'Craft beautiful UIs',
            textDirection: TextDirection.rtl,
          ),
          Column(children: const <Widget>[
            Text(
              'Craft beautiful UIs',
              textDirection: TextDirection.rtl,
            ),
          ])
        ],
      ),
    );
