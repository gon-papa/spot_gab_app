import 'package:now_go_app/importer.dart';

part 'marker_provider.g.dart';

@riverpod
class MapMarkerNotifier extends _$MapMarkerNotifier {
  @override
  Future<Set<Marker>> build() async {
    try {
      final postModels = await ref.read(mapPostNotifierProvider.future);

      return postModels.when(
        data: (posts) async {
          final List<Future<Marker>> markerFutures = posts.map((post) async {
            final file = post.user.file?.anyOf.values[0] as Files?;
            final ConvertPostImage convertPostImage = ConvertPostImage(
              imagePath: file?.path,
            );
            final BitmapDescriptor icon =
                await convertPostImage.createMarkerImage();
            return Marker(
              markerId: MarkerId(post.post.uuid),
              position: LatLng(
                double.parse(post.location.lat),
                double.parse(post.location.lng),
              ),
              onTap: () {
                // マーカーをタップしたときの動作
              },
              icon: icon,
            );
          }).toList();

          // Futureのリストが完了するのを待つ
          final List<Marker> markers = await Future.wait(markerFutures);
          return markers.toSet();
        },
        loading: () async => {},
        error: (error, stackTrace) async => {},
      );
    } catch (e, stackTrace) {
      print(e);
      return {};
    }
  }
}
