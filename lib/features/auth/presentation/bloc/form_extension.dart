extension StringExtension on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[A-Za-z]{2,}$",
    );
    return emailRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(r"^.{8,100}$");
    return passwordRegExp.hasMatch(this);
  }
}
