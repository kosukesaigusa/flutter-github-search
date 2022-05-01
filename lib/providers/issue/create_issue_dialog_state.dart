import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_issue_dialog_state.freezed.dart';

@freezed
class CreateIssueDialogState with _$CreateIssueDialogState {
  const factory CreateIssueDialogState({
    @Default(false) bool sending,
  }) = _CreateIssueDialogState;
}
