class UserModel {
  String? name;
  int? salary;
  bool? married;

  UserModel({name, this.salary, this.married});

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    salary = json['salary'];
    married = json['married'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['name'] = name;
    data['salary'] = salary;
    data['married'] = married;
    return data;
  }
}
