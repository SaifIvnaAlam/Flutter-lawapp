part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState(
      {required bool isAnswerLoading,
      required List<ChatModel> chats}) = _ChatState;

  factory ChatState.loading() =>
      const ChatState(isAnswerLoading: false, chats: []);
}
 

// part of 'issues_cubit.dart';

// @freezed
// class IssuesState with _$IssuesState {
//   const factory IssuesState({
//     required bool isLoading,
//     required List<Issue> issues,
//     String? label,
//     bool? isError,
//   }) = _IssuesState;
//   factory IssuesState.loading() => const IssuesState(
//       isLoading: true, issues: [], isError: false, label: null);
// }