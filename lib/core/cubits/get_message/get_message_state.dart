part of 'get_message_cubit.dart';

@immutable
sealed class GetMessageState {}

final class GetMessageInitial extends GetMessageState {}

final class GetMessageLoading extends GetMessageState {}

final class GetMessageSucces extends GetMessageState {
  final MessageModel messageModel;

  GetMessageSucces({required this.messageModel});
}

final class GetMessageFaliure extends GetMessageState {
  final String errMessage;

  GetMessageFaliure({required this.errMessage});
}
