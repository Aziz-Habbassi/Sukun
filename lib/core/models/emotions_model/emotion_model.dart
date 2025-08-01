class Emotion {
  final String text;
  final String type;
  final String story;

  Emotion({required this.text, required this.type, required this.story});

  factory Emotion.fromJson(json) {
    return Emotion(
      text: json['text'],
      type: json['type'],
      story: json['story'],
    );
  }
}
