class GetAllUser {
  String? status;
  List<Alluser>? alluser;

  GetAllUser({this.status, this.alluser});

  GetAllUser.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['alluser'] != null) {
      alluser = <Alluser>[];
      json['alluser'].forEach((v) {
        alluser?.add(Alluser.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    if (alluser != null) {
      data['alluser'] = alluser?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Alluser {
  String? sId;
  String? name;
  String? email;
  String? password;
  int? phone;
  String? gender;
  String? dob;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Alluser(
      {this.sId,
      this.name,
      this.email,
      this.password,
      this.phone,
      this.gender,
      this.dob,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Alluser.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    gender = json['gender'];
    dob = json['dob'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['gender'] = gender;
    data['dob'] = dob;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
