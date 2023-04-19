import 'package:flutter/material.dart';
import 'package:untitled11/constants/constants.dart';
import 'package:untitled11/model/component/default_map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultMap(
          initialCameraPosition: InitialCameraPosition,

        ),
      ),
    );
  }
}
