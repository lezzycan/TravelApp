import 'dart:convert';

import 'package:bloc_travel_app/constants/trv_assets.dart';
import 'package:bloc_travel_app/model/trv_model.dart';
import "package:http/http.dart" as http;

class DataService {
  Future<List<TravelModel>> getInfo() async {
    var response =
        await http.get(Uri.parse('http://mark.bslmeiyu.com/api/getplaces'));
    try {
      if (response.statusCode == 200) {
        // return travelModelFromJson(response.body );
        var data = json.decode(response.body);
        print(data);
        return TravelModel.travelfromJson(data);
      } else {
        return <TravelModel>[];
      }
    } catch (e) {
      print(e.toString());
    }
    return <TravelModel>[];
  }
}
