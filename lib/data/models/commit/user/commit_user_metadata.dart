class CommitUserMetadata {
  CommitUserMetadata({
    required this.avatarUrl,
  });

  factory CommitUserMetadata.fromJson(Map<String, dynamic> json) {
    return CommitUserMetadata(
      avatarUrl: json['avatar_url'] as String? ?? '',
    );
  }

  final String avatarUrl;

  Map<String, dynamic> toJson() => {
        'avatar_url': avatarUrl,
      };
}
