import 'package:cryptocurrency_app/constants/keys.dart';
import 'package:cryptocurrency_app/provider/crypto_provider.dart';
import 'package:cryptocurrency_app/ui/widgets/pair_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../generated/locale_keys.g.dart';

class SearchScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final pairs = useProvider(pairsSearchProvider);

    return Container(
      key: Keys.SEARCH_SCREEN,
      child: Column(
        children: [
          AppBar(
            title: Text(LocaleKeys.searchTitle.tr()),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Theme.of(context).cardColor,
                  ),
                  child: TextFormField(
                    key: Keys.SEARCH_TEXT_FIELD,
                    initialValue: context.read(searchTextProvider).state,
                    style: TextStyle(color: Colors.white, fontSize: 21),
                    decoration: new InputDecoration(
                        prefixIcon: new Icon(Icons.search,
                            color: Colors.white, size: 32),
                        hintText: LocaleKeys.searchBar.tr(),
                        hintStyle: new TextStyle(color: Colors.white),
                        border: InputBorder.none),
                    onChanged: (value) =>
                        {context.read(searchTextProvider).state = value},
                  ),
                ),
                Expanded(
                  child: pairs.maybeWhen(
                      data: (data) {
                        return Stack(
                          children: [
                            ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: data.length,
                              itemBuilder: (ctx, int id) => ProviderScope(
                                overrides: [
                                  currentPair.overrideWithValue(data[id]),
                                ],
                                child: const PairTile(),
                              ),
                            ),
                            if (data.length == 0)
                              Center(child: Text(LocaleKeys.noResults.tr()))
                          ],
                        );
                      },
                      orElse: () => Center(
                            child: CircularProgressIndicator(),
                          )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
