class CommitterUserDetail {
  CommitterUserDetail({
    required this.name,
    required this.email,
    required this.date,
  });

  factory CommitterUserDetail.fromJson(Map<String, dynamic> json) {
    return CommitterUserDetail(
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      date: DateTime.tryParse(json['date'] as String? ?? ''),
    );
  }

  final String name;
  final String email;
  final DateTime? date;

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'date': date?.toIso8601String(),
      };
}
