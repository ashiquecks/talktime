class UserLoginJsonModel {
    String className;
    String objectId;
    DateTime createdAt;
    DateTime updatedAt;
    String username;
    String email;
    String sessionToken;

    UserLoginJsonModel({
        required this.className,
        required this.objectId,
        required this.createdAt,
        required this.updatedAt,
        required this.username,
        required this.email,
        required this.sessionToken,
    });

    factory UserLoginJsonModel.fromJson(Map<String, dynamic> json) => UserLoginJsonModel(
        className: json["className"],
        objectId: json["objectId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        username: json["username"],
        email: json["email"],
        sessionToken: json["sessionToken"],
    );

    Map<String, dynamic> toJson() => {
        "className": className,
        "objectId": objectId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "username": username,
        "email": email,
        "sessionToken": sessionToken,
    };
}

