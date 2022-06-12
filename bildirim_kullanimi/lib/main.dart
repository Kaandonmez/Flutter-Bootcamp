import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var flp = FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    kurulum();
  }

  Future<void> kurulum() async {
    var androidAyari = AndroidInitializationSettings("@mipmap/ic_launcher");
    var iosAyari = IOSInitializationSettings();
    var kurulumAyari =
        InitializationSettings(android: androidAyari, iOS: iosAyari);
    await flp.initialize(kurulumAyari, onSelectNotification: bildirimSecilme);
  }

  Future<void> bildirimSecilme(String? payload) async {
    if (payload != null) {
      print("Bildirim seçildi: $payload");
    }
  }

  Future<void> bildirimGoster() async {
    var iosBildirimDetayi = IOSNotificationDetails();
    var androidBildirimDetayi = AndroidNotificationDetails(
        "channelId", "channelName",
        channelDescription: "Kanal açıklama",
        priority: Priority.high,
        importance: Importance.max);
    var bildirimDetayi = NotificationDetails(
        android: androidBildirimDetayi, iOS: iosBildirimDetayi);

    await flp.show(0, "Bildirim Başlığı", "Bildirim içeriği", bildirimDetayi,
        payload: "Bildirim payload");
  }

  Future<void> bildirimGosterGecikmeli() async {
    var iosBildirimDetayi = IOSNotificationDetails();
    var androidBildirimDetayi = AndroidNotificationDetails(
        "channelId", "channelName",
        channelDescription: "Kanal açıklama",
        priority: Priority.high,
        importance: Importance.max);
    var bildirimDetayi = NotificationDetails(
        android: androidBildirimDetayi, iOS: iosBildirimDetayi);

    tz.initializeTimeZones();
    var gecikme = tz.TZDateTime.now(tz.local).add(Duration(seconds: 10));
    await flp.zonedSchedule(0, "Gecikmeli Bildirim Başlığı",
        "Gecikmeli Bildirim içeriği", gecikme, bildirimDetayi,
        payload: "Gecikmeli içerik",
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bildirim Kullanımı'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  bildirimGoster();
                },
                child: Text('Bildirim Gönder')),
            ElevatedButton(
                onPressed: () {
                  bildirimGosterGecikmeli();
                },
                child: Text('Bildirim Gönder (Gecikmeli)')),
          ],
        )));
  }
}
