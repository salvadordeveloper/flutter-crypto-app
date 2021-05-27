import 'package:cryptocurrency_app/provider/time_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimeBarSelector extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final time = useProvider(timeDataProvider);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: timeList
              .mapIndexed(
                (e, i) => InkWell(
                  onTap: () {
                    time.state = e;
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
                    decoration: BoxDecoration(
                        color: time.state.name == e.name
                            ? Theme.of(context).cardColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                      child: Text(
                        e.name,
                        style: time.state.name == e.name
                            ? Theme.of(context)
                                .textTheme
                                .headline3!
                                .apply(color: Colors.white)
                            : Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ),
              )
              .toList()),
    );
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
