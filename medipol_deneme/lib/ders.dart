class Ders {
  int id;
  String dersAdi;
  int grade;
  String status;

  Ders(String dersAdi, int grade) {
    this.dersAdi = dersAdi;
    this.grade = grade;
  }

  //named Constructur
  Ders.withId(int id, String dersAdi, int grade) {
    this.id = id;
    this.dersAdi = dersAdi;
    this.grade = grade;
  }

  String get getStatus {
    String message = "";

    if (this.grade >= 50) {
      message = "Geçti";
    } else if (this.grade >= 40) {
      message = "Bütünlemeye kaldı";
    } else {
      message = "Kaldı";
    }
    this.status = message;
    return this.status;
  }
}
