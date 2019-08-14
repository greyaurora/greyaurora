import 'dart:convert' show json;

class SummaryItem {
  final String title, description, image;

  SummaryItem({
    this.title,
    this.description,
    this.image,
  });

  SummaryItem.map(Map<String, dynamic> data)
      : title = data['title'],
        description = data['description'],
        image = data['image'];

  factory SummaryItem.json(String data) => SummaryItem.map(json.decode(data));

  static List<SummaryItem> listJson(String data) {
    return (json.decode(data) as List).map((item) => SummaryItem.map(item)).toList();
  }
}
