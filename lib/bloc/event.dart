abstract class Event{}

//abstract class to find out which Event was occurred

class FormScreenEvent extends Event{
  final String name;
  final String email;
  final int phoneNumber;
  final String password;
  FormScreenEvent(this.email, this.name,this.password, this.phoneNumber);
}
class Clear extends Event{}

