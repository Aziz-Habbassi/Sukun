import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sukun/core/cubits/get_message/get_message_cubit.dart';
import 'package:sukun/features/message/presentation/widgets/message_widget.dart';
import 'package:sukun/features/message/presentation/widgets/return_button.dart';
import 'package:sukun/features/message/presentation/widgets/title_widget.dart';

class ReadingView extends StatelessWidget {
  const ReadingView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            colors: [
              const Color.fromARGB(255, 0, 24, 66),
              const Color.fromARGB(255, 0, 83, 226),
            ],
          ),
        ),
        child: BlocBuilder<GetMessageCubit, GetMessageState>(
          builder: (context, state) {
            if (state is GetMessageSucces) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TitleWidget(),
                  SizedBox(height: 20),
                  MessageWidget(messageModel: state.messageModel),
                  SizedBox(height: 15),
                  const ReturnButton(),
                ],
              );
            }
            if (state is GetMessageFaliure) {
              return Center(
                child: Text(
                  state.errMessage,
                  style: TextStyle(color: Colors.white),
                ),
              );
            } else {
              return Center(
                child: Text("Loading", style: TextStyle(color: Colors.white)),
              );
            }
          },
        ),
      ),
    );
  }
}
