class LeadModel {
  final bool? error;
  final String? message;
  final Data? data;

  LeadModel({required this.error, required this.message,required this.data});

  factory LeadModel.fromJson(Map<String, dynamic> json) {
    return LeadModel(
      error : json['error'],
      message : json['message'],
      data : json['data'] != null ? new Data.fromJson(json['data']) : null,
    );
  }

  /* SkillModel1.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }*/

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  List<LeadList>? list;

  Data({this.list});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['list'] != null) {
      list = <LeadList>[];
      json['list'].forEach((v) {
        list?.add(new LeadList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.list != null) {
      data['list'] = this.list?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LeadList {
  int? id;
  String? user;
  String? address;
  String? phone;
  String? category;
  String? post_date;
  String? lead_date;
  String? lead_time;
  String? lead_status;
  String? estmd_price;
  String? sale_price;
  String? description;
  String? budget;
  String? unit;
  String? qty;
  String? duration;

  LeadList({this.id, this.user, this.address,this.phone, this.category,this.post_date, this.lead_date,
    this.lead_time, this.lead_status,this.estmd_price,this.sale_price, this.description, this.budget,this.unit,
    this.qty, this.duration,});

  LeadList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    address = json['address'];
    phone = json['phone'];
    category = json['category'];
    post_date = json['post_date'];
    lead_date = json['lead_date'];
    lead_time = json['lead_time'];
    lead_status = json['lead_status'];
    estmd_price = json['estmd_price'];
    sale_price = json['sale_price'];
    description = json['description'];
    budget = json['budget'];
    unit = json['unit'];
    qty = json['qty'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user'] = this.user;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['category'] = this.category;
    data['post_date'] = this.post_date;
    data['lead_date'] = this.lead_date;
    data['lead_time'] = this.lead_time;
    data['lead_status'] = this.lead_status;
    data['estmd_price'] = this.estmd_price;
    data['sale_price'] = this.sale_price;
    data['description'] = this.description;
    data['budget'] = this.budget;
    data['unit'] = this.unit;
    data['qty'] = this.qty;
    data['duration'] = this.duration;
    return data;
  }
}

