import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigationProvider = StateNotifierProvider((ref) => NavigationNotifier());

enum NavigationBarEvent { HOME, SEARCH, SETTINGS }

class NavigationNotifier extends StateNotifier<PageModel> {
  NavigationNotifier() : super(defaultPage);

  static const defaultPage = PageModel(NavigationBarEvent.HOME, 0);

  void selectPage(int i) {
    switch (i) {
      case 0:
        state = PageModel(NavigationBarEvent.HOME, i);
        break;
      case 1:
        state = PageModel(NavigationBarEvent.SEARCH, i);
        break;
      case 2:
        state = PageModel(NavigationBarEvent.SETTINGS, i);
        break;
    }
  }
}

class PageModel {
  const PageModel(this.page, this.index);
  final NavigationBarEvent page;
  final index;
}
