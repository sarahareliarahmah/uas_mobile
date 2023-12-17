import 'dart:convert';

Berita beritaFromJson(String str) => Berita.fromJson(json.decode(str));

String beritaToJson(Berita data) => json.encode(data.toJson());

class Berita {
    String deskripsi;
    String nama;
    String gambar;
    int id;

    Berita({
        required this.deskripsi,
        required this.nama,
        required this.gambar,
        required this.id,
    });

    factory Berita.fromJson(Map<String, dynamic> json) => Berita(
        deskripsi: json["Deskripsi"],
        nama: json["Nama"],
        gambar: json["gambar"],
        id: json["id"],
    );

  get statusCode => null;

  //String get body => null;

    Map<String, dynamic> toJson() => {
        "Deskripsi": deskripsi,
        "Nama": nama,
        "gambar": gambar,
        "id": id,
    };
}