import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_services.dart';
import 'package:flutter_application_1/page_2.dart';

class Page1 extends StatefulWidget {
  const Page1({
    super.key,
  });

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String appTitle = 'Default value from widget';

  FirebaseRemoteConfigService remoteConfig = FirebaseRemoteConfigService();

  @override
  void initState() {
    appTitle = remoteConfig.appTitle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await remoteConfig.fetchAndActivate();
                  setState(() {});
                },
                child: Text('Refresh')),

            // Visibility(visible: testKey1, child: Text("testKey1 is Activated"))
          ],
        ),
      ),
    );
  }
}
