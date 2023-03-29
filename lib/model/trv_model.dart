// To parse this JSON data, do
//
//     final travelModel = travelModelFromJson(jsonString);

import 'dart:convert';

List<TravelModel> travelModelFromJson(String str) => List<TravelModel>.from(json.decode(str).map((x) => TravelModel.fromJson(x)));

String travelModelToJson(List<TravelModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TravelModel {
  TravelModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stars,
    required this.people,
    required this.selectedPeople,
    required this.img,
    required this.location,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String description;
  int price;
  int stars;
  int people;
  int selectedPeople;
  String img;
  String location;
  DateTime createdAt;
  DateTime updatedAt;

  factory TravelModel.fromJson(Map<String, dynamic> json) => TravelModel(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stars: json["stars"],
        people: json["people"],
        selectedPeople: json["selected_people"],
        img: json["img"],
        location: json["location"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

      

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stars": stars,
        "people": people,
        "selected_people": selectedPeople,
        "img": img,
        "location": location,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };

 static List<TravelModel> travelfromJson(List travelJson) {
    return travelJson.map((data) {
      return TravelModel.fromJson(data);
    }).toList();
  } 
}
