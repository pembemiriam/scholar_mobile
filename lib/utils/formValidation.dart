class FormValidation{
  String validateName(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }

  String validatePhoneNumber(String value) {
// Cameroon Mobile number are of 9 digit only
    if (value.length != 9)
      return 'Mobile Number must be of 9 digit';
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validatePassword(String value){
    if (value.length == 0){
      return 'This field is required';

    }else
      return null;
  }
  String validateField(String value){
    if (value.length == 0){
      return 'This field is required';

    }else
      return null;
  }
}