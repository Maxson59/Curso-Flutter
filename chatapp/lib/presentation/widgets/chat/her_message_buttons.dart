// ignore_for_file: prefer_const_constructors

import 'package:chatapp/domain/entities/message.dart';
import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context){

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration:  BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child:  Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),
            child: Text(
              message.text,
              style: TextStyle(
              color: Colors.white
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
          _ImageBubble(message.imageURL ?? 'https://yesno.wtf/assets/no/0-b6d3e555af2c09094def76cf2fbddf46.gif'),
        const SizedBox(height: 5,)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {

  final String imageUrl;

  const _ImageBubble(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress){
          if (loadingProgress == null) return child;
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5
            ),
            child: const Text('Mi amor esta enviando una imagen'),
          );
        },
      )

    );
  }
}