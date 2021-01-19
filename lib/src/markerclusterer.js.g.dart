// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@JS()
library google_maps_markerclusterer;

import 'package:google_maps/google_maps.dart';
import 'package:js_wrapping/js_wrapping.dart';

@JS()
class MarkerClusterer extends OverlayView {
  external MarkerClusterer(GMap map,
      [List<Marker> markers, MarkerClustererOptions opts]);

  external void addMarker(Marker marker, [bool noDraw]);

  external void addMarkers(List<Marker> markers, [bool noDraw]);

  external void clearMarkers();

  external Function getCalculator();

  external LatLngBounds getExtendedBounds(LatLngBounds bounds);

  external num getGridSize();

  external num getMaxZoom();

  external num getTotalClusters();

  external num getTotalMarkers();

  external bool isZoomOnClick();

  external void redraw();

  external bool removeMarker(Marker marker);

  external void resetViewport();

  external void setGridSize(num size);

  external void setMaxZoom(num maxZoom);

  external void setStyles(List<MarkerClustererStyle> styles);
}

extension MarkerClusterer$Ext on MarkerClusterer {
  List<Marker> getMarkers() =>
      callMethod(this, 'getMarkers', [])?.cast<Marker>();

  List<MarkerClustererStyle> getStyles() =>
      callMethod(this, 'getStyles', [])?.cast<MarkerClustererStyle>();

  void setCalculator(Function calculator) {
    callMethod(this, 'setCalculator', [allowInterop(calculator)]);
  }
}

@JS()
class MarkerClustererOptions {
  external MarkerClustererOptions();

  external num get gridSize;

  external set gridSize(num value);

  external num get maxZoom;

  external set maxZoom(num value);

  external bool get zoomOnClick;

  external set zoomOnClick(bool value);

  external String get imagePath;

  external set imagePath(String value);

  external String get imageExtension;

  external set imageExtension(String value);

  external bool get averageCenter;

  external set averageCenter(bool value);

  external num get minimumClusterSize;

  external set minimumClusterSize(num value);
}

extension MarkerClustererOptions$Ext on MarkerClustererOptions {
  List<MarkerClustererStyle> get styles =>
      getProperty(this, 'styles')?.cast<MarkerClustererStyle>();

  set styles(List<MarkerClustererStyle> value) {
    setProperty(this, 'styles', value);
  }
}

@JS()
class MarkerClustererStyle {
  external MarkerClustererStyle();

  external String get url;

  external set url(String value);

  external num get height;

  external set height(num value);

  external num get width;

  external set width(num value);

  external Point get anchor;

  external set anchor(Point value);

  external String get textColor;

  external set textColor(String value);

  external num get textSize;

  external set textSize(num value);

  external String get backgroundPosition;

  external set backgroundPosition(String value);
}
