import 'package:blocexample/model/validation.dart';

class FormScreenState {
  final bool isBusy;
  final FieldError emailError;
  final bool submissionSuccess;
  FormScreenState({
    this.isBusy: false,
    this.emailError,
    this.submissionSuccess,
  });
}


// class FormScreenState1 {
//   final bool isBusy;
//   final FieldError nameError;
//   final bool submissionSuccess;
//   FormScreenState1({
//     this.isBusy: false,
//     this.nameError,
//     this.submissionSuccess,
//   });
// }