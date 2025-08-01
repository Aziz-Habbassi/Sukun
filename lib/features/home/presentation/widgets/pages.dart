import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:sukun/core/models/mood_model/mood_model.dart';
import 'package:sukun/features/home/presentation/widgets/custom_button.dart';

class Pages extends StatelessWidget {
  const Pages({super.key, required this.mood});
  final MoodModel mood;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color(mood.color),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mood.title,
            style: TextStyle(
              fontFamily: mood.font,
              fontSize: 64,
              color: const Color.fromARGB(255, 173, 141, 1),
              shadows: [Shadow(offset: Offset(0, 8), blurRadius: 22)],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: sizingByAnimation(mood.title, context),
          ),
          CustomButton(
            ontap: () {
              context.go("/ReadingView");
            },
          ),
        ],
      ),
    );
  }

  Widget sizingByAnimation(String title, BuildContext context) {
    if (title == "Angry" || title == "Happy") {
      return Lottie.asset(
        mood.animationPath,
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.7,
      );
    } else {
      return Lottie.asset(
        mood.animationPath,
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.5,
      );
    }
  }

  // Future<void> loadEmotions() async {
  //   CollectionReference happy = FirebaseFirestore.instance.collection("lost");
  //   final String jsonString = await rootBundle.loadString(
  //     'assets/islamic_emotions_db.json',
  //   );
  //   final Map<String, dynamic> jsonMap = json.decode(jsonString);

  //   final List<dynamic> happyList = jsonMap['emotions']['lost'];

  //   final List<MessageModel> emotions = happyList
  //       .map((e) => MessageModel.fromJson(e))
  //       .toList();

  //   for (var emotion in emotions) {
  //     happy
  //         .add({
  //           "text": emotion.text,
  //           "type": emotion.type,
  //           "story": emotion.story,
  //         })
  //         .then((value) => print("done lost"));
  //   }
  // }
}
