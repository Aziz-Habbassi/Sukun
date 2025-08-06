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
              return ListView(
                children: [
                  const SizedBox(height: 100),
                  const TitleWidget(),
                  const SizedBox(height: 20),
                  MessageWidget(messageModel: state.messageModel),
                  const SizedBox(height: 15),
                  const ReturnButton(),
                ],
              );
            }
            if (state is GetMessageFaliure) {
              return Center(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 216, 14, 0),
                  ),
                  child: Text(
                    "Please Check Your internet connection !",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              );
            } else {
              return Center(
                child: Text(
                  "Loading ...",
                  style: TextStyle(color: Colors.white),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
