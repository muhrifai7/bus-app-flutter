import 'dart:convert';

class Tiket {
  dynamic id;
  String tgl_transaksi;
  dynamic kategori;
  String no_pol;
  dynamic id_bus;
  String kode_trayek;
  dynamic id_personil;
  dynamic id_group;
  String id_kota_berangkat;
  String id_kota_tujuan;
  dynamic jml_naik;
  dynamic pendapatan;
  String status;
  String updated_at;
  String created_at;
  dynamic id_prov;
  String nama_prov;
  dynamic id_kota;
  String nama_kota;
  User user;

  Tiket({
    required this.id,
    required this.tgl_transaksi,
    required this.kategori,
    required this.no_pol,
    required this.id_bus,
    required this.kode_trayek,
    required this.id_personil,
    required this.id_group,
    required this.id_kota_berangkat,
    required this.id_kota_tujuan,
    required this.jml_naik,
    required this.pendapatan,
    required this.status,
    required this.updated_at,
    required this.created_at,
    required this.id_prov,
    required this.nama_prov,
    required this.id_kota,
    required this.nama_kota,
    required this.user,
  });

  factory Tiket.fromJson(Map<String, dynamic> json) {
    return Tiket(
      id: json['id'],
      tgl_transaksi: json['tgl_transaksi'],
      kategori: json['kategori'],
      no_pol: json['no_pol'],
      id_bus: json['id_bus'],
      kode_trayek: json['kode_trayek'],
      id_personil: json['id_personil'],
      id_group: json['id_group'],
      id_kota_berangkat: json['id_kota_berangkat'],
      id_kota_tujuan: json['id_kota_tujuan'],
      jml_naik: json['jml_naik'],
      pendapatan: json['pendapatan'],
      status: json['status'],
      updated_at: json['updated_at'],
      created_at: json['created_at'],
      id_prov: json['id_prov'],
      nama_prov: json['nama_prov'],
      id_kota: json['id_kota'],
      nama_kota: json['nama_kota'],
      user: User.fromJson(json['user']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tgl_transaksi': tgl_transaksi,
      'kategori': kategori,
      'no_pol': no_pol,
      'id_bus': id_bus,
      'kode_trayek': kode_trayek,
      'id_personil': id_personil,
      'id_group': id_group,
      'id_kota_berangkat': id_kota_berangkat,
      'id_kota_tujuan': id_kota_tujuan,
      'jml_naik': jml_naik,
      'pendapatan': pendapatan,
      'status': status,
      'updated_at': updated_at,
      'created_at': created_at,
      'id_prov': id_prov,
      'nama_prov': nama_prov,
      'id_kota': id_kota,
      'nama_kota': nama_kota,
      'user': user.toJson(),
    };
  }

  //  @override
  //  String toString() {
  //    return 'Tiket{id: $id, tgl_transaksi: $tgl_transaksi, kategori: $kategori, no_pol: $no_pol, id_bus:$id_bus);
  //  }
}

List<Tiket> tiketFromJson(String jsonData) {
  final data = json.decode(jsonData);
  final List<dynamic> tiketData = data;
  return tiketData.map((item) {
    return Tiket.fromJson(item);
  }).toList();
}

String tiketToJson(Tiket data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}

class User {
  int id_user;
  int id_group;
  int id_company;
  int id_garasi;
  String nama_lengkap;
  String nama_user;
  String email;
  String password;
  String password_web;
  dynamic foto;

  User({
    required this.id_user,
    required this.id_group,
    required this.id_company,
    required this.id_garasi,
    required this.nama_lengkap,
    required this.nama_user,
    required this.email,
    required this.password,
    required this.password_web,
    this.foto,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id_user: json['id_user'],
      id_group: json['id_group'],
      id_company: json['id_company'],
      id_garasi: json['id_garasi'],
      nama_lengkap: json['nama_lengkap'],
      nama_user: json['nama_user'],
      email: json['email'],
      password: json['password'],
      password_web: json['password_web'],
      foto: json['foto'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_user': id_user,
      'id_group': id_group,
      'id_company': id_company,
      'id_garasi': id_garasi,
      'nama_lengkap': nama_lengkap,
      'nama_user': nama_user,
      'email': email,
      'password': password,
      'password_web': password_web,
      'foto': foto
    };
  }
}
