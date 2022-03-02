// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@JS()
library google_maps_markerclusterer;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

@JsName()
abstract class MarkerClusterer extends OverlayView {
  factory MarkerClusterer(GMap map,
          [List<Marker> markers, MarkerClustererOptions opts]) =>
      $js();

  void addMarker(Marker marker, [bool noDraw]);
  void addMarkers(List<Marker> markers, [bool noDraw]);
  void clearMarkers();
  Function getCalculator();
  LatLngBounds getExtendedBounds(LatLngBounds bounds);
  num getGridSize();
  List<Marker> getMarkers();
  num getMaxZoom();
  List<MarkerClustererStyle> getStyles();
  num getTotalClusters();
  num getTotalMarkers();
  bool isZoomOnClick();
  void redraw();
  bool removeMarker(Marker marker);
  void resetViewport();
  void setCalculator(Function calculator);
  void setGridSize(num size);
  void setMaxZoom(num maxZoom);
  void setStyles(List<MarkerClustererStyle> styles);
}

@JsName()
@anonymous
abstract class MarkerClustererOptions {
  factory MarkerClustererOptions() => $js();

  num gridSize;
  num maxZoom;
  bool zoomOnClick;
  String imagePath;
  String imageExtension;
  bool averageCenter;
  num minimumClusterSize;
  List<MarkerClustererStyle> styles;
}

@JsName()
@anonymous
abstract class MarkerClustererStyle {
  factory MarkerClustererStyle() => $js();

  String url;
  num height;
  num width;
  Point anchor;
  String textColor;
  num textSize;
  String backgroundPosition;
}
