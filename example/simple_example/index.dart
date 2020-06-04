// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:html' hide MouseEvent, Point;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps_markerclusterer/markerclusterer.dart';

Future<Null> main() async {
  var center = LatLng(37.4419, -122.1419);

  var map = GMap(
      document.getElementById('map'),
      MapOptions()
        ..zoom = 3
        ..center = center
        ..mapTypeId = MapTypeId.ROADMAP);

  Map data = json.decode(await HttpRequest.getString('data.json'));

  List<Marker> markers = [];
  for (var i = 0; i < 100; i++) {
    Map dataPhoto = data['photos'][i];
    var latLng = LatLng(dataPhoto['latitude'], dataPhoto['longitude']);
    var marker = Marker()..position = latLng;
    markers.add(marker);
  }

  MarkerClusterer(map, markers);
}
