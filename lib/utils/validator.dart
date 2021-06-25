class Validator {
  String? email(String? value) {
    Pattern pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!)) return "email salah";
  }

  String? password(String? value) {
    Pattern pattern = r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!)) {
      return "password salah";
    }
  }

  String? required(String? value) {
    if (value == '') {
      return "tidak boleh kosong";
    }
  }

  String? name(String? value) {
    Pattern pattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!)) return "nama salah";
  }

  String? phoneNumber(String? value) {
    if (value == '') {
      return "tidak boleh kosong";
    } else if (value!.substring(0, 2) != '08')
      return "Nomor handphone harus dimulai dengan 08";
  }

  String? number(String? value) {
    Pattern pattern = r'^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!)) return "nomor salah";
  }

  String? amount(String? value) {
    Pattern pattern = r'^\d+$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!)) return "amount salah";
  }

  String? notEmpty(String? value) {
    Pattern pattern = r'^\S+$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!)) return "tidak boleh ada spasi";
  }
}
