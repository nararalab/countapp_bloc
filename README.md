# countapp_bloc

## 카운트앱(Bloc - Bloc)

2개의 Bloc 상태 상호 작용하는 카운트앱
옵저버 패턴

## 구조

### ColorBlocObserver

```dart
class ColorBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('[디버깅] ColorBlocObserver(event): ${bloc.runtimeType}, $event');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('[디버깅] ColorBlocObserver(error): ${bloc.runtimeType}, $error, $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('[디버깅] ColorBlocObserver(change): ${bloc.runtimeType}, $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(
        '[디버깅] ColorBlocObserver(transition): ${bloc.runtimeType}, $transition');
  }
}
```

```dart
BlocOverrides.runZoned(
  () {
    return Text(
      '${context.watch<CounterBloc>().state.counter}',
      style: const TextStyle(
        fontSize: 52.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  },
  blocObserver: ColorBlocObserver(),
),
```

### 작업

```bash
flutter pub add equatable
flutter pub add flutter_bloc
```
