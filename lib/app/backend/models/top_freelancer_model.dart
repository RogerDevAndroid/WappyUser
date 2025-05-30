/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Ultimate Salon Full App Flutter V8
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2025-present initappz.
*/
class TopFreelancerModel {
  int? id;
  int? uid;
  List<Categories>? categories;
  double? feeStart;
  double? rating;
  int? totalRating;
  double? distance;
  UserInfo? userInfo;

  TopFreelancerModel({this.id, this.uid, this.categories, this.feeStart, this.rating, this.totalRating, this.distance, this.userInfo});

  TopFreelancerModel.fromJson(Map<String, dynamic> json) {
    id = int.parse(json['id'].toString());
    uid = int.parse(json['uid'].toString());
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
    feeStart = double.parse(json['fee_start'].toString());
    rating = double.parse(json['rating'].toString());
    totalRating = int.parse(json['total_rating'].toString());
    distance = double.parse(json['distance'].toString());
    userInfo = json['userInfo'] != null ? UserInfo.fromJson(json['userInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['uid'] = uid;
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    data['fee_start'] = feeStart;
    data['rating'] = rating;
    data['total_rating'] = totalRating;
    data['distance'] = distance;
    if (userInfo != null) {
      data['userInfo'] = userInfo!.toJson();
    }
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  String? cover;

  Categories({this.id, this.name, this.cover});

  Categories.fromJson(Map<String, dynamic> json) {
    id = int.parse(json['id'].toString());
    name = json['name'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['cover'] = cover;
    return data;
  }
}

class UserInfo {
  String? firstName;
  String? lastName;
  String? cover;

  UserInfo({this.firstName, this.lastName, this.cover});

  UserInfo.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['cover'] = cover;
    return data;
  }
}
