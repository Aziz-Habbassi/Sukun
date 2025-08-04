import 'package:flutter/material.dart';
import 'package:sukun/core/models/message_model/message_model.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key, required this.messageModel});
  final MessageModel messageModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .1,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            messageModel.text,
            style: TextStyle(fontFamily: "Arabic", fontSize: 32),
          ),
          SizedBox(height: 20),
          Divider(endIndent: 30, indent: 30),
          SizedBox(height: 20),

          Text(
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontFamily: "Arabic", fontSize: 24),

            messageModel.story,
          ),
        ],
      ),
    );
  }
}
