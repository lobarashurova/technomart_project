import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class BranchMapScreen extends StatefulWidget {
  String long;
  String lat;

  BranchMapScreen({super.key, required this.lat, required this.long});

  @override
  State<BranchMapScreen> createState() => _BranchMapScreenState(long, lat);
}

class _BranchMapScreenState extends State<BranchMapScreen> {
  String lang;
  String lat;
  final List<MapObject> mapObjects = [];

  _BranchMapScreenState(this.lang, this.lat);

  final mapControllerCompleter = Completer<YandexMapController>();

  Future<void> _moveToCurrentLocation() async {
    setState(() {
      mapObjects.add(PlacemarkMapObject(
          icon: PlacemarkIcon.single(PlacemarkIconStyle(
              scale: 0.6,
              image: BitmapDescriptor.fromAssetImage(
                  'assets/images/ic_location.png'))),
          mapId: const MapObjectId("556"),
          point: Point(latitude: double.parse(lat), longitude: double.parse(lang))));
    });
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 3),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: double.parse(lat),
            longitude: double.parse(lang),
          ),
          zoom: 10,
        ),
      ),
    );
  }

  @override
  void initState() {
    _moveToCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("size:${mapObjects.length}");
    return YandexMap(
      onMapCreated: (controller) {
        mapControllerCompleter.complete(controller);
      },
      mapObjects: mapObjects,
      zoomGesturesEnabled: true,
    );
  }
}
