import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:lawapp/utils/constants/app_strings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lawapp/features/home/domain/enitity/chart_model.dart';

part 'chat_cubit.freezed.dart';
part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatState.loading());
  List<ChatModel> chats = [];

  Future<void> askQuestion(String question) async {
    emit(ChatState.loading());

    ChatModel chat = ChatModel(
        question: question,
        answer: question == "traffic rules of bd"
            ? AppStrings.trafficRules
            : AppStrings.noResponseFound);
    chats.add(chat);

    chats.forEach(
      (element) {
        log(element.answer);
        log(element.question);
      },
    );
    emit(state.copyWith(isAnswerLoading: true, chats: chats));

    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(isAnswerLoading: false, chats: chats));
  }
}
