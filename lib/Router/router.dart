import 'package:bloc/bloc.dart';
import '../View/home.dart';
import '../View/about.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  AboutPageClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  NavigationBloc(super.initialState);

  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.AboutPageClickedEvent:
        yield AboutPage();
        break;
    }
  }
}