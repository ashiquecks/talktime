class CreatorAccountJsonModel {
    String className;
    String objectId;
    DateTime createdAt;
    DateTime updatedAt;
    String username;

    CreatorAccountJsonModel({
        required this.className,
        required this.objectId,
        required this.createdAt,
        required this.updatedAt,
        required this.username,
    });

    factory CreatorAccountJsonModel.fromJson(Map<String, dynamic> json) => CreatorAccountJsonModel(
        className: json["className"],
        objectId: json["objectId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "className": className,
        "objectId": objectId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "username": username,
    };
}

