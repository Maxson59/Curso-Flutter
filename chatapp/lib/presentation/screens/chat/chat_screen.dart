import 'package:chatapp/domain/entities/message.dart';
import 'package:chatapp/presentation/providers/chat_provider.dart';
import 'package:chatapp/presentation/widgets/chat/her_message_buttons.dart';
import 'package:chatapp/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/presentation/widgets/chat/my_message_buttons.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:  NetworkImage('https://cdn1.eldia.com/072019/1564214102036.jpg'),
          ),
          ),
        title: const Text('Mel <3'),
        centerTitle: false,

      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.hers)
                  ? HerMessageBubble(
                    message: message,

                  )
                  : MyMessageBubble(message: message);
              },)
            ),
             MessageFieldBox(
              onValue: (value) => chatProvider.sendMessage(value),
              //onValue: chatProvider.sendMessage,
             ),
          ],
        ),
      ),
    );
  }
}