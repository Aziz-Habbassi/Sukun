import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_message_state.dart';

class GetMessageCubit extends Cubit<GetMessageState> {
  GetMessageCubit() : super(GetMessageInitial());
}
