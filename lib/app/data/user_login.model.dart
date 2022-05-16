class UserLogin {
  String? status;
  List<User>? user;

  UserLogin({this.status, this.user});

  UserLogin.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['user'] != null) {
      user = <User>[];
      json['user'].forEach((v) {
        user?.add(User.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    if (user != null) {
      data['user'] = user?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  String? name;
  String? email;
  int? phone;
  String? gender;
  String? token;

  User({this.name, this.email, this.phone, this.gender, this.token});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    gender = json['gender'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['gender'] = gender;
    data['token'] = token;
    return data;
  }
}
