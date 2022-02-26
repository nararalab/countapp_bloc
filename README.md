# countapp_bloc

카운트앱(cubit - cubit)

- 2개의 큐빗 상태 상호 작용하는 카운트앱
- color 상태를 BlockListener 하면서, counter 처리하는 앱

## 구조

### cubit / state

```tree
cubits
├──color
│   ├── color_cubit.dart
│   ├── color_state.dart
├──counter
│   ├── counter_cubit.dart
│   ├── counter_state.dart
```

### BlocListener

```dart
BlocListener<ColorCubit, ColorState>
```

### MultiBlocProvider

- BlocProvider<`ColorCubit`>
- BlocProvider<`CounterCubit`>

### Button > onPressed

- context.read<`ColorCubit`>().changeColor();
- context.read<`CounterCubit`>().changeCounter(incrementSize);

## 작업

```bash
flutter pub add equatable
flutter pub add flutter_bloc
```
