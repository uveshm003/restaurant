import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/framework/dependency_injection/inject.dart';

final homeController = ChangeNotifierProvider((ref){
  return getIt<HomeController>();
});

@Injectable()
class HomeController extends ChangeNotifier{
  int selectedPage = 0;
  void jumpToPage(int page){
    selectedPage = page;
    notifyListeners();
  }
}