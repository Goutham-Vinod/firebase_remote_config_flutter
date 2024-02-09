import 'package:flutter/material.dart';
import 'package:flutter_application_1/page_1.dart';

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
  });

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Page1(),
                  ));
            },
            child: Text('Goto Page1')),
      ),
    );
  }
}
