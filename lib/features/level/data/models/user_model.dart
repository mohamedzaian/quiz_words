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
    final Map<String, dynamic> data =
        (json['data'] as Map?)?.map((key, value) => MapEntry(key.toString(), value)) ?? {};

    // Fix: Handle levels as Map and convert it to a List
    List<Level> levelsList = [];
    if (data['levels'] is Map) {
      levelsList = (data['levels'] as Map).entries.map((entry) {
        return Level.fromJson(Map<String, dynamic>.from(entry.value));
      }).toList();
    }

    return UserModel(
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      score: (json['score'] as num?)?.toInt() ?? 0,
      currentQuestion: (data['currentQuestion'] as num?)?.toInt() ?? 0,
      total: (data['total'] as num?)?.toInt() ?? 0,
      levels: levelsList, // Use the converted list
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
