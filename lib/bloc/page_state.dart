part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class OnPageInitial extends PageState {
  @override
  List<Object> get props => [];
}

class OnSpalashPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSignInPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSignUpPage extends PageState {
  final SignUpData signUpData;

  OnSignUpPage(this.signUpData);
  @override
  List<Object> get props => [signUpData];
}

class OnUploadImagePage extends PageState {
  final SignUpData signUpData;

  OnUploadImagePage(this.signUpData);
  @override
  List<Object> get props => [signUpData];
}

class OnGetLocationPage extends PageState {
  final SignUpData signUpData;

  OnGetLocationPage(this.signUpData);
  @override
  List<Object> get props => [signUpData];
}
