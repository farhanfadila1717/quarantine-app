import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quarantine_apps/models/models.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(OnPageInitial());

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToSplashPage) {
      yield OnSpalashPage();
    } else if (event is GoToSignInPage) {
      yield OnSignInPage();
    } else if (event is GoToMainPage) {
      yield OnMainPage();
    } else if (event is GoToSignUpPage) {
      yield OnSignUpPage(event.signUpData);
    } else if (event is GoToUploadImagePage) {
      yield OnUploadImagePage(event.signUpData);
    } else if (event is GoToGetLocationPage) {
      yield OnGetLocationPage(event.signUpData);
    }
  }
}
