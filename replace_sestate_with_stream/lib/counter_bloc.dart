import 'dart:async';

class CounterBloc{
  int _total = 0;
  int get total => _total;

  final _blocController = StreamController<int>();
  Stream<int> get stream => _blocController.stream;

  void incrementar(){
    _total++;
    _blocController.sink.add(_total);
  }

  fecharStream(){
    _blocController.close();
  }

}