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
    return UserModel(
      levels: (json['data']['levels'] as List)
          .map((level) => Level.fromJson(level))
          .toList(),
      currentQuestion: json['data']['currentQuestion'],
      total: json['data']['total'],
      image: json['image'],
      name: json['name'],
      score: json['score'],
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
      currentLevelQuestion: json['currentLevelQuestion'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'currentLevelQuestion': currentLevelQuestion,
      'total': total,
    };
  }
}
