import 'package:covid_tracker/businesslogic/bloc/global_bloc_event.dart';
import 'package:covid_tracker/businesslogic/bloc/global_state.dart';
import 'package:covid_tracker/data/models/globalModel.dart';
import 'package:covid_tracker/data/repository/global_ripo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalBloc extends Bloc<GlobalCaseEvent, GlobalState> {
  GlobalRepo globalRepo;
  GlobalBloc(this.globalRepo, {GlobalRepo repository}) : super(null);

  @override
  Stream<GlobalState> mapEventToState(GlobalCaseEvent event) async* {
    // TODO: implement mapEventToState
    if (event is FetchGlobalEvent) {
      yield GlobalLoadingState();
      try {
        Global _allGlobalCase = await globalRepo.getGlobal;
        yield GlobalLoadedState(_allGlobalCase);
      } catch (_) {
        yield GlobalErrorState();
      }
    }
  }
}
