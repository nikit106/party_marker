class AuthenticationService {

  
  bool checkFastEntry() {
    return false;
  }


    bool loginAttempt(String login, String password) {
      if (password == '123') {
        return true;
      } else {
        return false;
      }
    
  }
}
