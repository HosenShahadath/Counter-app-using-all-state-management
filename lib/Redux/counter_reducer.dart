import 'package:counter_app_using_all_state_management/Redux/counter_action.dart';
import 'package:counter_app_using_all_state_management/Redux/counter_state.dart';

CounterState counterReducer(CounterState state, dynamic action){
  if(action is CounterIncrement){
    return CounterState(state.counter +1);
  }else if(action is CounterDecrement){
    return CounterState(state.counter -1);
  }

  return state;
}