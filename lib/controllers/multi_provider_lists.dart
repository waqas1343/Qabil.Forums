import 'package:provider/provider.dart';
import 'package:qabilforums/controllers/splash_screen_controller.dart';

final List<ChangeNotifierProvider> appProviders = [
  ChangeNotifierProvider<Splashscreencontroller>(
      create: (_) => Splashscreencontroller()),
];