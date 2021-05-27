import 'package:covid_tracker/data/models/globalModel.dart';
import 'package:covid_tracker/data/repository/global_ripo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCaseEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => []; // throw UnimplementedError();
}

class FetchGlobalCaseEvent extends GlobalCaseEvent {
  List<Object> get props => [];
}

class GlobalCaseState extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => []; // throw UnimplementedError();

}

class GlobalCaseNOtLoaded extends GlobalCaseState {}

class GlobalCaseLoading extends GlobalCaseState {}

class GlobalCaseLoaded extends GlobalCaseState {
  final allCase;

  GlobalCaseLoaded(this.allCase);
  @override
  List<Object> get props => [allCase];
}

class GlobalCaseCannotLoad extends GlobalCaseState {}

class GlobalBloc extends Bloc<GlobalCaseEvent, GlobalCaseState> {
  GlobalRepo globalRepo;
  GlobalBloc(this.globalRepo) : super(GlobalCaseNOtLoaded());

  @override
  Stream<GlobalCaseState> mapEventToState(GlobalCaseEvent event) async* {
    // TODO: implement mapEventToState
    if (event is FetchGlobalCaseEvent) {
      yield GlobalCaseLoading();
      try {
        Global _allGlobalCase = await globalRepo.getGlobal();
        yield GlobalCaseLoaded(_allGlobalCase);
      } catch (_) {
        yield GlobalCaseCannotLoad();
      }
    }
  }
}
