import 'package:commits_list_test/data/models/commit/detail/commit_detail.dart';
import 'package:commits_list_test/data/models/commit/user/commit_user_metadata.dart';

class CommitResponse {
  CommitResponse({
    required this.commit,
    required this.htmlUrl,
    required this.author,
  });

  factory CommitResponse.fromJson(Map<String, dynamic> json) {
    return CommitResponse(
      commit: json['commit'] == null
          ? null
          : CommitDetail.fromJson(json['commit'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String? ?? '',
      author: json['author'] == null
          ? null
          : CommitUserMetadata.fromJson(json['author'] as Map<String, dynamic>),
    );
  }

  final CommitDetail? commit;
  final String htmlUrl;
  final CommitUserMetadata? author;

  Map<String, dynamic> toJson() => {
        'commit': commit?.toJson(),
        'html_url': htmlUrl,
        'author': author?.toJson(),
      };
}
