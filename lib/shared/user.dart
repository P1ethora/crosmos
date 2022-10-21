class User {

  static String identifier = '';
  static String firstName = '';
  static String lastName = '';
  static String email = '';
  static String imageUrl = '';
  static String token = '';

  static bool isNeedLoad() {
    return identifier == '' || firstName == '' || lastName == '' || email == '' ||
        imageUrl == '';
  }

}