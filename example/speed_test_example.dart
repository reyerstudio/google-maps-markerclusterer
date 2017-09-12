// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:html' hide MouseEvent, Point;

import 'package:google_maps/google_maps.dart';
import 'package:google_maps_markerclusterer/markerclusterer.dart';

var pics = null;
GMap map = null;
var markerClusterer = null;
List<Marker> markers = [];
var infoWindow = null;

Future<Null> main() async {
  var latlng = new LatLng(39.91, 116.38);
  var options = new MapOptions()
    ..zoom =  2
    ..center = latlng
    ..mapTypeId = MapTypeId.ROADMAP;

  map = new GMap(document.getElementById('map'), options);
  pics = JSON.decode(await HttpRequest.getString('data.json'))['photos'];

  var useGmm = document.getElementById('usegmm');

  event.addDomListener(useGmm, 'click', (_) => change());

  var numMarkers = document.getElementById('nummarkers');
  event.addDomListener(numMarkers, 'change', (_) => change());

  infoWindow = new InfoWindow();

  showMarkers();
}

void showMarkers() {
  markers = [];

  var type = 1;
  if ((document.getElementById('usegmm') as CheckboxInputElement).checked) {
    type = 0;
  }

  markerClusterer?.clearMarkers();

  var panel = document.getElementById('markerlist')..innerHtml = '';
  var numMarkers = int.parse((document.getElementById('nummarkers') as SelectElement).value);

  for (var i = 0; i < numMarkers; i++) {
    var titleText = pics[i]['photo_title'];
    if (titleText == '') {
      titleText = 'No title';
    }

    var item = new DivElement();
    var title = new AnchorElement()
      ..href = '#'
      ..className = 'title'
      ..innerHtml = titleText;
    item.append(title);
    panel.append(item);

    var latLng = new LatLng(pics[i]['latitude'], pics[i]['longitude']);

    var imageUrl = 'http://chart.apis.google.com/chart?cht=mm&chs=24x32&chco=FFFFFF,008CFF,000000&ext=.png';
    var markerImage = new Icon()
      ..url = imageUrl
      ..size = new Size(24, 32);

    var marker = new Marker()
      ..position = latLng
      ..icon = markerImage;

    event.addListener(marker, 'click', markerClickFunction(pics[i], latLng));
    event.addDomListener(title, 'click', markerClickFunction(pics[i], latLng));
    markers.add(marker);
  }

  time();
}

Function markerClickFunction(Map pic, LatLng latlng) {
  return ([e]) {
    e.cancelBubble = true;
    e.returnValue = false;
    if (e.stopPropagation) {
      e.stopPropagation();
      e.preventDefault();
    }
    var title = pic['photo_title'];
    var url = pic['photo_url'];
    var fileurl = pic['photo_file_url'];

    var infoHtml = '<div class="info"><h3>' + title +
        '</h3><div class="info-body">' +
        '<a href="' + url + '" target="_blank"><img src="' +
        fileurl + '" class="info-img"/></a></div>' +
        '<a href="http://www.panoramio.com/" target="_blank">' +
        '<img src="http://maps.google.com/intl/en_ALL/mapfiles/' +
        'iw_panoramio.png"/></a><br/>' +
        '<a href="' + pic['owner_url'] + '" target="_blank">' + pic['owner_name'] +
        '</a></div></div>';

    infoWindow.setContent(infoHtml);
    infoWindow.setPosition(latlng);
    infoWindow.open(map);
  };
}

void clear() {
  (document.getElementById('timetaken') as SpanElement).innerHtml = 'cleaning...';
  for (var i = 0; i < markers.length; i++) {
    markers[i].map = null;
  }
}

void change() {
  clear();
  showMarkers();
}

void time() {
  (document.getElementById('timetaken') as SpanElement).innerHtml = 'timing...';
  var start = new DateTime.now();
  if ((document.getElementById('usegmm') as CheckboxInputElement).checked) {
    markerClusterer = new MarkerClusterer(map, markers);
  } else {
    for (var i = 0; i < markers.length; i++) {
      markers[i].map = map;
    }
  }

  var end = new DateTime.now();
  (document.getElementById('timetaken') as SpanElement).innerHtml = end.difference(start).inMicroseconds.toString();
}
