/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Ultimate Salon Full App Flutter V8
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2025-present initappz.
*/
class ProductsModel {
  int? id;
  String? name;
  String? cover;
  String? extraField;
  int? status;
  List<SubCates>? subCates;

  ProductsModel({this.id, this.name, this.cover, this.extraField, this.status, this.subCates});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = int.parse(json['id'].toString());
    name = json['name'];
    cover = json['cover'];
    extraField = json['extra_field'];
    status = int.parse(json['status'].toString());
    if (json['subCates'] != null) {
      subCates = <SubCates>[];
      json['subCates'].forEach((v) {
        subCates!.add(SubCates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['cover'] = cover;
    data['extra_field'] = extraField;
    data['status'] = status;
    if (subCates != null) {
      data['subCates'] = subCates!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubCates {
  int? id;
  String? name;
  String? cover;
  int? cateId;
  String? extraField;
  int? status;

  SubCates({this.id, this.name, this.cover, this.cateId, this.extraField, this.status});

  SubCates.fromJson(Map<String, dynamic> json) {
    id = int.parse(json['id'].toString());
    name = json['name'];
    cover = json['cover'];
    cateId = int.parse(json['cate_id'].toString());
    extraField = json['extra_field'];
    status = int.parse(json['status'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['cover'] = cover;
    data['cate_id'] = cateId;
    data['extra_field'] = extraField;
    data['status'] = status;
    return data;
  }
}
