class UserModel {
  String? id;
  String? name;
  String? email;
  String? profilePicUrl;
  String? phoneNumber;
  String? role;
  List<String>? cartItems;
  List<String>? wishlist;
  List<String>? orders;
  List<String>? addresses;
  String? defaultAddressId;
  String? activeStatus;
  DateTime? lastOnlineStatus;
  DateTime? createdOn;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.profilePicUrl,
    this.phoneNumber,
    this.role,
    this.cartItems,
    this.wishlist,
    this.orders,
    this.addresses,
    this.defaultAddressId,
    this.activeStatus,
    this.lastOnlineStatus,
    this.createdOn,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      profilePicUrl: json["profilePicUrl"],
      phoneNumber: json["phoneNumber"],
      role: json["role"],
      cartItems: json["cartItems"],
      wishlist: json["wishlist"],
      orders: json["orders"],
      addresses: json["addresses"],
      defaultAddressId: json["defaultAddressId"],
      activeStatus: json["activeStatus"],
      lastOnlineStatus: json["lastOnlineStatus"],
      createdOn: json["createdOn"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'profilePicUrl': profilePicUrl,
      'phoneNumber': phoneNumber,
      'role': role,
      'cartItems': cartItems,
      'wishlist': wishlist,
      'orders': orders,
      'addresses': addresses,
      'defaultAddressId': defaultAddressId,
      'activeStatus': activeStatus,
      'lastOnlineStatus': lastOnlineStatus,
      'createdOn': createdOn,
    };
  }
}
