class QuestionModel {
final String q;
final String a ;
final String i;

  QuestionModel({required this.q, required this.a, required this.i});

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
    q: json['q'],
    a: json['a'],
    i: json['i'],
  );

  Map<String, dynamic> toJson() => {
    'q': q,
    'a': a,
    'i': i,
  };


}