class Catatan {
  int no;
  String judul;
  String deskripsi;
  String mulai;
  String selesai;
  Catatan(this.no, this.judul, this.deskripsi, this.mulai, this.selesai);
}

List<Catatan> getCatatan() {
  List<Catatan> items = <Catatan>[];
  items.add(Catatan(
      1,
      "Pemrograman Mobile",
      "ini adalah catatan untuk elearning pemrograman mobile",
      "12:50PM\n12 April 2021",
      "12:50PM\n18 April 2021"));
  items.add(Catatan(
      2,
      "Pengembangan Perangkat Lunak",
      "ini adalah catatan untuk elearning Pengembangan Perangkat Lunak",
      "12:50PM\n13 April 2021",
      "12:50PM\n19 April 2021"));
  items.add(Catatan(
      3,
      "Interaksi Manusia Komputer",
      "ini adalah catatan untuk elearning Interaksi Manusia Komputer",
      "12:50PM\n14 April 2021",
      "12:50PM\n20 April 2021"));
  return items;
}
