class MessageModel {
  final String text;
  final String type;
  final String story;

  MessageModel({required this.text, required this.type, required this.story});

  factory MessageModel.fromJson(json) {
    return MessageModel(
      text: json['text'],
      type: json['type'],
      story: json['story'],
    );
  }
}
