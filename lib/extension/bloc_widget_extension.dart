import 'package:uber/scripts/index.dart';

extension BlocWidgetExpension on Widget {
  Widget createWithProvider<T extends Bloc>() {
    return BlocProvider<T>(
      create: (_) => GetIt.instance.get<T>(),
      child: this,
    );
  }
}
