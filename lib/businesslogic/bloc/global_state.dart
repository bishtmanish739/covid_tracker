import 'package:equatable/equatable.dart';

import 'package:covid_tracker/data/models/globalModel.dart';

abstract class GlobalState extends Equatable {}

class GlobalInitailState extends GlobalState {
  @override
  // TODO: implement props
  List<Object> get props => []; //throw UnimplementedError();

}

class GlobalLoadingState extends GlobalState {
  @override
  // TODO: implement props
  List<Object> get props => []; //throw UnimplementedError();

}

class GlobalLoadedState extends GlobalState {
  Global g;
  GlobalLoadedState(
    this.g,
  );
  @override
  // TODO: implement props
  List<Object> get props => []; //throw UnimplementedError();

}

class GlobalErrorState extends GlobalState {
  @override
  // TODO: implement props
  List<Object> get props => []; //throw UnimplementedError();

}
