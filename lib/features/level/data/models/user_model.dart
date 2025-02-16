class UserModel {
  String name;
  String image;
  int score;
  int currentQuestion;
  int total;
  List<Level> levels;

  UserModel({
    required this.name,
    required this.image,
    required this.score,
    required this.currentQuestion,
    required this.total,
    required this.levels,
  });

  // Factory method to create UserModel from JSON
  factory UserModel.fromJson(Map<dynamic, dynamic> json) {
    // Convert `json['data']` to a proper Map<String, dynamic>
    final Map<String, dynamic> data =
        (json['data'] as Map?)?.map((key, value) => MapEntry(key.toString(), value)) ?? {};

    return UserModel(
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      score: (json['score'] as num?)?.toInt() ?? 0,
      currentQuestion: (data['currentQuestion'] as num?)?.toInt() ?? 0,
      total: (data['total'] as num?)?.toInt() ?? 0,
      levels: (data['levels'] as List?)
          ?.map((level) => Level.fromJson(Map<String, dynamic>.from(level as Map)))
          .toList() ??
          [], // Default to an empty list if null
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'score': score,
      'data': {
        'currentQuestion': currentQuestion,
        'total': total,
        'levels': levels.map((level) => level.toJson()).toList(),
      }
    };
  }
}

class Level {
  int currentLevelQuestion;
  int total;

  Level({
    required this.currentLevelQuestion,
    required this.total,
  });

  // Convert JSON to Level object
  factory Level.fromJson(Map<String, dynamic> json) {
    return Level(
      currentLevelQuestion: (json['currentLevelQuestion'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );
  }

  // Convert Level object to JSON
  Map<String, dynamic> toJson() {
    return {
      'currentLevelQuestion': currentLevelQuestion,
      'total': total,
    };
  }
}
