// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps_markerclusterer;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_MarkerClusterer)
@JS()
@anonymous
class MarkerClusterer extends OverlayView {
  external factory MarkerClusterer(GMap map,
      [List<Marker> markers, MarkerClustererOptions opts]);

  external void addMarker(Marker marker, [bool noDraw]);

  external void addMarkers(List<Marker> markers, [bool noDraw]);

  external void clearMarkers();

  external Function getCalculator();

  external LatLngBounds getExtendedBounds(LatLngBounds bounds);

  external num getGridSize();

  external List<Marker> getMarkers();

  external num getMaxZoom();

  external List<MarkerClustererStyle> getStyles();

  external num getTotalClusters();

  external num getTotalMarkers();

  external bool isZoomOnClick();

  external void redraw();

  external bool removeMarker(Marker marker);

  external void resetViewport();

  external void setCalculator(Function calculator);

  external void setGridSize(num size);

  external void setMaxZoom(num maxZoom);

  external void setStyles(List<MarkerClustererStyle> styles);
}

@GeneratedFrom(_MarkerClustererOptions)
@JS()
@anonymous
class MarkerClustererOptions {
  external factory MarkerClustererOptions();

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

  external List<MarkerClustererStyle> get styles;

  external set styles(List<MarkerClustererStyle> value);
}

@GeneratedFrom(_MarkerClustererStyle)
@JS()
@anonymous
class MarkerClustererStyle {
  external factory MarkerClustererStyle();

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
