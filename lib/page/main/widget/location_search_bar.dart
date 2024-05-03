import 'dart:async';

import 'package:now_go_app/importer.dart';

// マップ検索プロバイダー
class SearchAutoCompleteNotifier extends StateNotifier<List<String>> {
  SearchAutoCompleteNotifier() : super([]);
  Timer? _debounce;

  Future<void> fetchSuggestions(String text, WidgetRef ref) async {
    if (text.length <= 2) {
      state = <String>[];
      return;
    }

    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      final flutterGooglePlacesSdk = FlutterGooglePlacesSdk(
        const String.fromEnvironment("google_maps_api_key"),
      );
      final predictions =
          await flutterGooglePlacesSdk.findAutocompletePredictions(text);
      state = predictions.predictions.map((e) => e.fullText).toList();
    });

    @override
    void dispose() {
      _debounce?.cancel();
      super.dispose();
    }
  }
}

final searchAutoCompleteProvider =
    StateNotifierProvider<SearchAutoCompleteNotifier, List<String>>(
  (ref) => SearchAutoCompleteNotifier(),
);

class LocationSearchBar extends ConsumerWidget {
  final Function onFunction;

  LocationSearchBar({required this.onFunction});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userNotifierProvider);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Assets.images.nowGoLogo.image(
            width: 25.w,
            height: 25.h,
          ),
          HorizontalMargin(width: 10),
          Expanded(
            child: Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                final searchAutoCompleteNotifier =
                    ref.watch(searchAutoCompleteProvider.notifier);
                final suggestions = ref.watch(searchAutoCompleteProvider);

                searchAutoCompleteNotifier.fetchSuggestions(
                    textEditingValue.text, ref);

                return suggestions;
              },
              optionsViewBuilder: (
                BuildContext context,
                void Function(String) onSelected,
                Iterable<String> options,
              ) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 4.0,
                    child: Container(
                      color: Colors.white,
                      width: 200.w,
                      height: 150.h,
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView(
                          children: options.map(
                            (String option) {
                              return GestureDetector(
                                onTap: () {
                                  onSelected(option);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.grey.shade300),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 10.0),
                                    child: Text(
                                      option,
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ),
                );
              },
              onSelected: (String selection) {
                onFunction(selection);
              },
              fieldViewBuilder: (
                BuildContext context,
                TextEditingController controller,
                FocusNode focusNode,
                VoidCallback onFieldSubmitted,
              ) {
                return TextField(
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    hintText: "キーワード検索",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                );
              },
            ),
          ),
          HorizontalMargin(width: 10),
          UserIcon(
            imagePath: user?.image?.path,
            onTap: () {},
            size: 45,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
