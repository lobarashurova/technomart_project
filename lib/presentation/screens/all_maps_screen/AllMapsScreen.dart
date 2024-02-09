import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../util/app_lat_long.dart';

class AllMapsScreen extends StatefulWidget {
  List<AppLatLong> list;

  AllMapsScreen({super.key, required this.list});

  @override
  State<AllMapsScreen> createState() => _AllMapsScreenState(list);
}

class _AllMapsScreenState extends State<AllMapsScreen> {
  List<AppLatLong> list;

  _AllMapsScreenState(this.list);

  final List<MapObject> mapObjects = [];

  final mapControllerCompleter = Completer<YandexMapController>();

  Future<void> _moveToCurrentLocation() async {
    setState(() {
      for (var user in list) {
        mapObjects.add(PlacemarkMapObject(
            icon: PlacemarkIcon.single(PlacemarkIconStyle(
                scale: 0.6,
                image: BitmapDescriptor.fromAssetImage(
                  'assets/images/ic_location.png',
                ))),
            mapId: MapObjectId("${user.lat}${user.long}"),
            point: Point(latitude: user.lat, longitude: user.long)));
      }
    });

    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 3),
      CameraUpdate.newCameraPosition(
        const CameraPosition(
          target: Point(
            latitude: 41.3775,
            longitude: 64.5853,
          ),
          zoom: 4,
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
    return YandexMap(
      onMapCreated: (controller) {
        mapControllerCompleter.complete(controller);
      },
      mapObjects: mapObjects,
      zoomGesturesEnabled: true,
    );
  }
}
