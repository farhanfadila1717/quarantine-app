part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSignInPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSignUpPage extends PageEvent {
  final SignUpData signUpData;

  GoToSignUpPage(this.signUpData);
  @override
  List<Object> get props => [signUpData];
}

class GoToUploadImagePage extends PageEvent {
  final SignUpData signUpData;

  GoToUploadImagePage(this.signUpData);

  @override
  List<Object> get props => throw UnimplementedError();
}

class GoToGetLocationPage extends PageEvent {
  final SignUpData signUpData;

  GoToGetLocationPage(this.signUpData);
  @override
  List<Object> get props => [];
}
