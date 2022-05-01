import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/repo/repo.dart';
import '../../services/scaffold_messenger.dart';
import '../../utils/extensions/int.dart';

/// リポジトリのひとつひとつのウィジェット
class RepoItemWidget extends HookConsumerWidget {
  const RepoItemWidget({
    Key? key,
    required this.repo,
  }) : super(key: key);

  final Repo repo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () async {
        final urlString = repo.htmlUrl;
        if (await canLaunch(urlString)) {
          await launch(urlString);
        } else {
          ref.read(scaffoldMessengerServiceProvider).showSnackBar('URL が開けませんでした：$urlString');
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FaIcon(FontAwesomeIcons.github),
            const Gap(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    repo.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    repo.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    '更新日：${repo.updatedAt.toString().substring(0, 10)}',
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, size: 12),
                    const Gap(4),
                    Text(
                      repo.starGazersCount.withComma,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                const Gap(4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const FaIcon(FontAwesomeIcons.codeFork, size: 12),
                    const Gap(4),
                    Text(
                      repo.forksCount.withComma,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
