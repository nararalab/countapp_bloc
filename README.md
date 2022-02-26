# countapp_bloc

## 카운트앱(Bloc - Bloc)

2개의 Bloc 상태 상호 작용하는 카운트앱
color 상태를 BlockListener 하면서, counter 처리하는 앱

## 구조

### cubit / state

```tree
blocs
├──color
│   ├── color_bloc.dart
│   ├── color_event.dart
│   ├── color_state.dart
├──counter
│   ├── counter_bloc.dart
│   ├── counter_event.dart
│   ├── counter_state.dart
```

### 생성자

```dart
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState.initial()) {
    on<ChangeColorEvent>(_changeColor);
  }

  void _changeColor(ChangeColorEvent event, Emitter<ColorState> emit) {
      // 구현할 로직
  }
}
```

```dart
on<ChangeCounterEvent>((event, emit) {
  emit(state.copyWith(counter: state.counter + event.incrementSize));
});
```

### BlocListener

```dart
BlocListener<ColorBloc, ColorState>
```

### MultiBlocProvider

```dart
BlocProvider<ColorBloc>
BlocProvider<CounterBloc>
```

### Button > onPressed

```dart
context.read<ColorBloc>().add(ChangeColorEvent());
context.read<CounterBloc>().add(ChangeCounterEvent());
```

### 작업

```bash
flutter pub add equatable
flutter pub add flutter_bloc
```
