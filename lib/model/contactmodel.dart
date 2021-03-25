// To parse this JSON data, do
//
//     final contact = contactFromJson(jsonString);

import 'dart:convert';

List<Contact> contactFromJson(String str) =>
    List<Contact>.from(json.decode(str).map((x) => Contact.fromJson(x)));

String contactToJson(List<Contact> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Contact {
  Contact({
    this.id,
    this.address,
    this.contact,
    this.email,
    this.site,
  });

  String id;
  String address;
  String contact;
  String email;
  String site;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        id: json["_id"],
        address: json["address"],
        contact: json["contact"],
        email: json["email"],
        site: json["site"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "address": address,
        "contact": contact,
        "email": email,
        "site": site,
      };
}
