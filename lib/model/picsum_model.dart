// To parse this JSON data, do
//
//     final picSumModel = picSumModelFromJson(jsonString);

import 'dart:convert';

List<PicSumModel> picSumModelFromJson(String str) => List<PicSumModel>.from(
    json.decode(str).map((x) => PicSumModel.fromJson(x)));

String picSumModelToJson(List<PicSumModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PicSumModel {
  PicSumModel({
    required this.id,
    required this.author,
    required this.width,
    required this.height,
    required this.url,
    required this.downloadUrl,
  });

  String id;
  String author;
  int width;
  int height;
  String url;
  String downloadUrl;

  factory PicSumModel.fromJson(Map<String, dynamic> json) => PicSumModel(
        id: json["id"],
        author: json["author"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        downloadUrl: json["download_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "author": author,
        "width": width,
        "height": height,
        "url": url,
        "download_url": downloadUrl,
      };
}
