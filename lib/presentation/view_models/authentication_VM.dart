import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';

enum AuthMethod { phone, email }

class AuthenticationScreenVM extends ChangeNotifier {
  String oldUsername = '';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _websiteController = TextEditingController();

  // Phone Number Without Country Code
  String phoneNumberWithoutCountryCode = '';
  // Country Code Controller
  String countryCode = '';

  bool _isPassVisible = true;
  bool _isRePassVisible = true;
  int _authMethodRadioValue = 1;
  int _genderRadioValue = 1;

  DateTime currentDob = DateTime.now();

  AuthMethod authMethod = AuthMethod.phone;

  TextEditingController get emailController => _emailController;
  TextEditingController get firstNameController => _firstNameController;
  TextEditingController get middleNameController => _middleNameController;
  TextEditingController get lastNameController => _lastNameController;
  TextEditingController get usernameController => _usernameController;
  TextEditingController get phoneController => _phoneController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get rePasswordController => _rePasswordController;
  TextEditingController get dobController => _dobController;
  TextEditingController get bioController => _bioController;
  TextEditingController get websiteController => _websiteController;

  bool get isPassVisible => _isPassVisible;
  bool get isRePassVisible => _isRePassVisible;
  int get authRadioValue => _authMethodRadioValue;
  int get genderRadioValue => _genderRadioValue;

  bool keepLoggedIn = true;

  // Availability Check Variables
  bool usernameCheckInProgress = false;
  bool usernameAvailable = false;

  bool phoneNumberCheckInProgress = false;
  bool phoneNumberAvailable = false;

  bool emailCheckInProgress = false;
  bool emailAvailable = true;

  String countryCodeStr = 'IQ';

  void setCountryCodeStr(String str) {
    countryCodeStr = str;
    notifyListeners();
  }

  // void getCurrentCountryLocale() async {
  //   Locale? locale = await Devicelocale.currentAsLocale;
  //   debugPrint(locale?.countryCode);
  //   countryCodeStr = locale?.countryCode ?? "IQ";
  //   notifyListeners();
  // }

  void updateUsernameCheckInProgress(bool value) {
    usernameCheckInProgress = value;
    notifyListeners();
  }

  void updateUserNameAvailability(bool value) {
    usernameAvailable = value;
    notifyListeners();
  }

  void updatePhoneNumberCheckInProgress(bool value) {
    phoneNumberCheckInProgress = value;
    notifyListeners();
  }

  void updatePhoneNumberAvailability(bool value) {
    phoneNumberAvailable = value;
    notifyListeners();
  }

  void updateEmailCheckInProgress(bool value) {
    emailCheckInProgress = value;
    notifyListeners();
  }

  void updateEmailAvailability(bool value) {
    emailAvailable = value;
    notifyListeners();
  }

  void updateKeepLoggedIn(bool val) {
    keepLoggedIn = val;
    notifyListeners();
  }

  void setPassVisibility() {
    _isPassVisible = !_isPassVisible;
    notifyListeners();
  }

  void setRePassVisibility() {
    _isRePassVisible = !_isRePassVisible;
    notifyListeners();
  }

  void changeMethod({required int value}) {
    _authMethodRadioValue = value;
    if (value == 1) {
      authMethod = AuthMethod.phone;
    } else {
      authMethod = AuthMethod.email;
    }
    notifyListeners();
  }

  void changeGender({required int value}) {
    _genderRadioValue = value;
    notifyListeners();
  }

  void resetValues() {
    _emailController.clear();
    _passwordController.clear();
    _rePasswordController.clear();
  }

  void updateDob(String format, DateTime date) {
    _dobController.text = format;
    currentDob = date;
    notifyListeners();
  }

  void setPhoneNumber(PhoneNumber? str) {
    phoneNumberWithoutCountryCode = str?.number.toString() ?? "";
    countryCode = str?.countryCode.toString() ?? "";
    notifyListeners();
  }

  // void setTextFieldsForEditProfile(AuthModel auth) {
  //   usernameAvailable = true;
  //
  //   _emailController.text = auth.data?.user?.email ?? "";
  //   _nameController.text = auth.data?.user?.fullName ?? "";
  //   _usernameController.text = auth.data?.user?.username ?? "";
  //   // To check if the username is changed aur not
  //   oldUsername = auth.data?.user?.username ?? "";
  //
  //   _phoneController.text = auth.data?.user?.phoneNumber ?? "";
  //   _bioController.text = auth.data?.user?.description ?? "";
  //   _websiteController.text = auth.data?.user?.website ?? "";
  //   _dobController.text = auth.data?.user?.dob ?? "";
  //   _genderRadioValue = auth.data!.user!.gender == "Male" ? 1 : 2;
  // }
}
