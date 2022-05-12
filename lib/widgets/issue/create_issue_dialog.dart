import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers/issue/create_issue_dialog.dart';
import '../../utils/exceptions/api_exceptions.dart';
import '../../utils/exceptions/base.dart';

/// イシューを作成するためのフォームを入力させるダイアログ
class CreateIssueDialogDialog extends StatefulHookConsumerWidget {
  const CreateIssueDialogDialog({Key? key}) : super(key: key);

  @override
  ConsumerState<CreateIssueDialogDialog> createState() => _CreateIssueDialogDialogState();
}

class _CreateIssueDialogDialogState extends ConsumerState<CreateIssueDialogDialog> {
  @override
  Widget build(BuildContext context) {
    final sending =
        ref.watch(createIssueDialogStateNotifierProvider.select((value) => value.sending));
    final notifier = ref.watch(createIssueDialogStateNotifierProvider.notifier);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: ScaffoldMessenger(
        key: notifier.scaffoldMessengerKey,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: AlertDialog(
            title: const Text('Issue の作成'),
            content: SizedBox(
              width: 280,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'タイトル',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                    const Gap(8),
                    TextField(
                      controller: notifier.titleTextEditingController,
                      maxLines: 1,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const Gap(16),
                    const Text(
                      '内容',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                    const Gap(8),
                    TextField(
                      controller: notifier.bodyTextEditingController,
                      minLines: 3,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: Navigator.of(context).pop,
                child: const Text('閉じる'),
              ),
              ElevatedButton(
                onPressed: sending
                    ? null
                    : () async {
                        final notifier = ref.read(createIssueDialogStateNotifierProvider.notifier);
                        try {
                          await notifier.createIssueDialog();
                          if (!mounted) {
                            return;
                          }
                          Navigator.pop(context, true);
                        } on ApiException catch (e) {
                          notifier.showSnackBarOnDialog(e.toString());
                        } on AppException catch (e) {
                          notifier.showSnackBarOnDialog(e.toString());
                        } on Exception catch (e) {
                          notifier.showSnackBarOnDialog(e.toString());
                        }
                      },
                child: sending
                    ? const SizedBox(
                        width: 14,
                        height: 14,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('作成する'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
