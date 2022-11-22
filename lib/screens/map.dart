import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maps',
            style: TextStyle(
              color: Color.fromRGBO(98, 156, 68, 1),
            )),
        iconTheme: IconThemeData(color: Color.fromRGBO(98, 156, 68, 1)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
    );
  }
}
