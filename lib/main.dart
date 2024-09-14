import 'package:android_play_install_referrer/android_play_install_referrer.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final referrer = await AndroidPlayInstallReferrer.installReferrer;
  runApp(MyApp(referrer: referrer));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.referrer});

  final ReferrerDetails referrer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Google Play Referrer Details'),
        ),
        body: Center(
          child: ListView(
            // key value presentation using ListTile
            children: <Widget>[
              ListTile(
                title: const Text('Install Referrer'),
                subtitle: Text(referrer.installReferrer ?? 'N/A'),
              ),
              ListTile(
                title: const Text('Referrer Click Timestamp (Seconds)'),
                subtitle:
                    Text(referrer.referrerClickTimestampSeconds.toString()),
              ),
              ListTile(
                title: const Text('Install Begin Timestamp (Seconds)'),
                subtitle:
                    Text(referrer.installBeginTimestampSeconds.toString()),
              ),
              ListTile(
                title: const Text('Referrer Click Timestamp Server (Seconds)'),
                subtitle: Text(
                    referrer.referrerClickTimestampServerSeconds.toString()),
              ),
              ListTile(
                title: const Text('Install Begin Timestamp Server (Seconds)'),
                subtitle: Text(
                    referrer.installBeginTimestampServerSeconds.toString()),
              ),
              ListTile(
                title: const Text('Install Version'),
                subtitle: Text(referrer.installVersion ?? 'N/A'),
              ),
              ListTile(
                title: const Text('Google Play Instant Param'),
                subtitle: Text(referrer.googlePlayInstantParam.toString()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
