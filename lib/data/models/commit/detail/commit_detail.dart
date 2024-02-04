import 'package:commits_list_test/data/models/commit/user/commit_user_detail.dart';

class CommitDetail {
  CommitDetail({
    required this.author,
    required this.committer,
    required this.message,
  });

  factory CommitDetail.fromJson(Map<String, dynamic> json) {
    return CommitDetail(
      author: json['author'] == null
          ? null
          : CommitterUserDetail.fromJson(
              json['author'] as Map<String, dynamic>,
            ),
      committer: json['committer'] == null
          ? null
          : CommitterUserDetail.fromJson(
              json['committer'] as Map<String, dynamic>,
            ),
      message: json['message'] as String? ?? '',
    );
  }

  final CommitterUserDetail? author;
  final CommitterUserDetail? committer;
  final String message;

  Map<String, dynamic> toJson() => {
        'author': author?.toJson(),
        'committer': committer?.toJson(),
        'message': message,
      };
}
