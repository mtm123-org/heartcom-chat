import 'package:chat_app/widgets/chat_messages.dart';
import 'package:chat_app/widgets/new_messages.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  //@override
  //State<ChatScreen> createState() => _ChatScreenState();
//}

//class _ChatScreenState extends State<ChatScreen> {
  //final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  //@override
  //void initState() {
  //super.initState();
  //setupPushNotifications();
  //}

  //@override
  //void setupPushNotifications() async {
  //await _fcm.requestPermission();
  //String? token = await _fcm.getToken();
  //print(token);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeartCom Chat'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Theme.of(context).colorScheme.primary,
            ),
          )
        ],
      ),
      body: Column(
        children: const [
          Expanded(
            child: ChatMessages(
              key: ValueKey('ChatMessages'),
            ),
          ),
          NewMessage(),
        ],
      ),
    );
  }
}

  //@override
  //Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
  //}
//}
