

class ApiPaths {
  static String liveBaseURL = "https://socialapp.ahjili.com/api/";
  static String baseURL = liveBaseURL;

  // endpoints
  // static String rider = "rider/";

  // User Auth Apis
  static String login =  "${baseURL}login";
  static String socialLogin =  "${baseURL}social_login";
  static String register =  "${baseURL}register";
  static String requestOtp =  "${baseURL}request_otp";
  static String verifyOtp =  "${baseURL}verify_otp";
  static String resetPassword =  "${baseURL}reset_password";
  static String logout =  "${baseURL}logout";


}
