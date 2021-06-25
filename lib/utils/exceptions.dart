enum AuthResultStatus {
  undefined,
  emailalreadyinuse,
  successful,
  invalidverificationcode,
  usernotfound,
  toomanyrequests,
  wrongpassword
}

class AuthExceptionHandler {
  static handleException(e) {
    var status;
    switch (e.code) {
      case "email-already-in-use":
        status = AuthResultStatus.emailalreadyinuse;
        break;
      case "invalid-verification-code":
        status = AuthResultStatus.invalidverificationcode;
        break;
      case "user-not-found":
        status = AuthResultStatus.usernotfound;
        break;
      case "wrong-password":
        status = AuthResultStatus.wrongpassword;
        break;
      case "too-many-requests":
        status = AuthResultStatus.toomanyrequests;
        break;
      default:
        status = AuthResultStatus.undefined;
    }
    return status;
  }

  static generateExceptionMessage(exceptionCode) {
    String errorMessage;
    switch (exceptionCode) {
      case AuthResultStatus.emailalreadyinuse:
        errorMessage =
            "No handphone yang anda gunakan sudah digunakan oleh akun lain.";
        break;
      case AuthResultStatus.invalidverificationcode:
        errorMessage =
            "The SMS verification code used to create the phone auth credential is invalid. Please resend the verification code SMS and be sure to use the verification code provided by the user.";
        break;
      case AuthResultStatus.usernotfound:
        errorMessage =
            "There is no user record corresponding to this identifier. The user may have been deleted.";
        break;
      case AuthResultStatus.wrongpassword:
        errorMessage = "Wrong password provided for that user.";
        break;
      case AuthResultStatus.toomanyrequests:
        errorMessage =
            "Access to this account has been temporarily disabled due to many failed login attempts. You can immediately restore it by resetting your password or you can try again later.";
        break;
      default:
        errorMessage = "An undefined Error happened.";
    }

    return errorMessage;
  }
}
