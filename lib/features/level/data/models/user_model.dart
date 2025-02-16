class UserModel {
  final List<Level> levels;
  final int currentQuestion;
  final int total;
  final String image;
  final String name;
  final int score;

  UserModel({
    required this.levels,
    required this.currentQuestion,
    required this.total,
    required this.image,
    required this.name,
    required this.score,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final data = json['data'] != null ? Map<String, dynamic>.from(json['data']) : {};

    return UserModel(
      levels: (data['levels'] is List)
          ? (data['levels'] as List)
          .map((level) => level is Map<String, dynamic> ? Level.fromJson(level) : Level(currentLevelQuestion: 0, total: 0))
          .toList()
          : [],
      currentQuestion: data['currentQuestion'] as int? ?? 0,
      total: data['total'] as int? ?? 0,
      image: json['image'] as String? ?? '',
      name: json['name'] as String? ?? '',
      score: json['score'] as int? ?? 0,
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'data': {
        'levels': levels.map((level) => level.toJson()).toList(),
        'currentQuestion': currentQuestion,
        'total': total,
      },
      'image': image,
      'name': name,
      'score': score,
    };
  }
}

class Level {
  final int currentLevelQuestion;
  final int total;

  Level({required this.currentLevelQuestion, required this.total});

  factory Level.fromJson(Map<String, dynamic> json) {
    return Level(
      currentLevelQuestion: json['currentLevelQuestion'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'currentLevelQuestion': currentLevelQuestion,
      'total': total,
    };
  }
}
