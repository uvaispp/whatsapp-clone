// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
        this.avatar,
        this.name,
        this.isGroup,
        this.updatedAt,
        this.message,
    });

    String? avatar;
    String? name;
    bool? isGroup;
    String? updatedAt;
    String? message;

    factory User.fromJson(Map<String, dynamic> json) => User(
        avatar: json["avatar"],
        name: json["name"],
        isGroup: json["isGroup"],
        updatedAt: json["UpdatedAt"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "isGroup": isGroup,
        "UpdatedAt": updatedAt,
        "message": message,
    };
}
