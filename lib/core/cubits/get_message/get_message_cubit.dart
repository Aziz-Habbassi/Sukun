import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'get_message_state.dart';

class GetMessageCubit extends Cubit<GetMessageState> {
  GetMessageCubit() : super(GetMessageInitial());
  Future<void> getMessage(String title) async {
    emit(GetMessageLoading());
    try {
      CollectionReference messages = FirebaseFirestore.instance.collection(
        title,
      );
      QuerySnapshot snapshot = await messages.get();
      List docs = snapshot.docs;
      final Map<String, dynamic> randomDoc =
          docs[Random().nextInt(docs.length)];
      emit(GetMessageSucces());
    } catch (e) {
      emit(GetMessageFaliure(errMessage: e.toString()));
    }
  }
}
