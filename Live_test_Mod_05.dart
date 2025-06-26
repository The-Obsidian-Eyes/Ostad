Map<String, double> sort(Map<String, double> map) {
  return Map.fromEntries(
    map.entries.toList()..sort((a, b) => b.value.compareTo(a.value))
  );
}

void main() {
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  Map<String, double> avgResult = {};

  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);

    int sum = 0;
    for (var score in scores) {
      sum += score;
    }

    double avg = sum / scores.length;
    avgResult[name] = double.parse(avg.toStringAsFixed(2));
  }
  var sorted = sort(avgResult);

  print(sorted);
}
