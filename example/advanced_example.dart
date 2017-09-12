// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:html' hide MouseEvent, Point;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps_markerclusterer/markerclusterer.dart';

List<List<MarkerClustererStyle>> styles = [
  [
    new MarkerClustererStyle()
      ..url = '../images/people35.png'
      ..height = 35
      ..width = 35
      ..anchor = new Point(16, 0)
      ..textColor = '#ff00ff'
      ..textSize = 10,
    new MarkerClustererStyle()
      ..url = '../images/people45.png'
      ..height = 45
      ..width = 45
      ..anchor = new Point(24, 0)
      ..textColor = '#ff0000'
      ..textSize = 11,
    new MarkerClustererStyle()
      ..url = '../images/people55.png'
      ..height = 55
      ..width = 55
      ..anchor = new Point(24, 0)
      ..textColor = '#ffffff'
      ..textSize = 12
  ],
  [
    new MarkerClustererStyle()
      ..url = '../images/conv30.png'
      ..height = 27
      ..width = 30
      ..anchor = new Point(24, 0)
      ..textColor = '#ff00ff'
      ..textSize = 10,
    new MarkerClustererStyle()
      ..url = '../images/conv40.png'
      ..height = 36
      ..width = 40
      ..anchor = new Point(24, 0)
      ..textColor = '#ff0000'
      ..textSize = 11,
    new MarkerClustererStyle()
      ..url = '../images/conv50.png'
      ..width = 50
      ..height = 45
      ..anchor = new Point(24, 0)
      ..textSize = 12
  ],
  [
    new MarkerClustererStyle()
      ..url = '../images/heart30.png'
      ..height = 26
      ..width = 30
      ..anchor = new Point(24, 0)
      ..textColor = '#ff00ff'
      ..textSize = 10,
    new MarkerClustererStyle()
      ..url = '../images/heart40.png'
      ..height = 35
      ..width = 40
      ..anchor = new Point(24, 0)
      ..textColor = '#ff0000'
      ..textSize = 11,
    new MarkerClustererStyle()
      ..url = '../images/heart50.png'
      ..width = 50
      ..height = 44
      ..anchor = new Point(24, 0)
      ..textSize = 12
  ]
];

var markerClusterer = null;
var map = null;
Map data = null;
var imageUrl = 'http://chart.apis.google.com/chart?cht=mm&chs=24x32&chco=FFFFFF,008CFF,000000&ext=.png';

Future<Null> main() async {
  data = JSON.decode(await HttpRequest.getString('data.json'));

  map = new GMap(
      document.getElementById('map'),
      new MapOptions()
        ..zoom = 2
        ..center = new LatLng(39.91, 116.38)
        ..mapTypeId = MapTypeId.ROADMAP);

  var refresh = document.getElementById('refresh');
  event.addDomListener(refresh, 'click', (_) => refreshMap());

  var clear = document.getElementById('clear');
  event.addDomListener(clear, 'click', (e) => clearClusters(e));
  refreshMap();
}

void refreshMap() {
  markerClusterer?.clearMarkers();

  var markers = [];
  var markerImage = new Icon()
    ..url = imageUrl
    ..size = new Size(24, 32);
  for (var i = 0; i < 1000; ++i) {
    var latLng = new LatLng(data['photos'][i]['latitude'], data['photos'][i]['longitude']);
    var marker = new Marker()
      ..position = latLng
      ..draggable = true
      ..icon = markerImage;
    markers.add(marker);
  }

  var zoom = int.parse((document.getElementById('zoom') as SelectElement)?.value ?? "10");
  var size = int.parse((document.getElementById('size') as SelectElement)?.value ?? "10");
  var style = int.parse((document.getElementById('style') as SelectElement)?.value ?? "10");
  zoom = zoom == -1 ? null : zoom;
  size = size == -1 ? null : size;
  style = style == -1 ? null : style;
  markerClusterer = new MarkerClusterer(
      map,
      markers,
      new MarkerClustererOptions()
        ..maxZoom = zoom
        ..gridSize = size
        ..styles = style == null ? null : styles[style]);
}

void clearClusters(e) {
  e.preventDefault();
  e.stopPropagation();
  markerClusterer.clearMarkers();
}
