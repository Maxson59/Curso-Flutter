import 'package:chatapp/config/helpers/get_yes_no_answer.dart';
import 'package:chatapp/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
  ];

  Future<void> sendMessage(String text) async {

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith('?')){
      herReply();
    }
    notifyListeners();
    moveScrollToBottom();
  }
  Future<void> herReply() async {
    final Message herMessage = await getYesNoAnswer.getAnswer();
    print(herMessage.text);
    print(herMessage.imageURL);
    messageList.add(herMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  void moveScrollToBottom(){
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds:  100),
      curve: Curves.easeOut
      );
  }

}

