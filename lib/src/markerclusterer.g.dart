// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps_markerclusterer.src;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_MarkerClusterer)
class MarkerClusterer extends OverlayView {
  MarkerClusterer(GMap map, [List<Marker> markers, MarkerClustererOptions opts])
      : this.created(JsObject(context['MarkerClusterer'], [
          __codec0.encode(map),
          __codec2.encode(markers),
          __codec3.encode(opts)
        ]));
  MarkerClusterer.created(JsObject o) : super.created(o);

  void addMarker(Marker marker, [bool noDraw]) {
    asJsObject(this).callMethod('addMarker', [__codec1.encode(marker), noDraw]);
  }

  void addMarkers(List<Marker> markers, [bool noDraw]) {
    asJsObject(this)
        .callMethod('addMarkers', [__codec2.encode(markers), noDraw]);
  }

  void clearMarkers() {
    asJsObject(this).callMethod('clearMarkers');
  }

  Function getCalculator() => asJsObject(this).callMethod('getCalculator');
  LatLngBounds getExtendedBounds(LatLngBounds bounds) =>
      __codec4.decode(asJsObject(this)
          .callMethod('getExtendedBounds', [__codec4.encode(bounds)]));
  num getGridSize() => asJsObject(this).callMethod('getGridSize');
  List<Marker> getMarkers() =>
      __codec2.decode(asJsObject(this).callMethod('getMarkers'));
  num getMaxZoom() => asJsObject(this).callMethod('getMaxZoom');
  List<MarkerClustererStyle> getStyles() =>
      __codec6.decode(asJsObject(this).callMethod('getStyles'));
  num getTotalClusters() => asJsObject(this).callMethod('getTotalClusters');
  num getTotalMarkers() => asJsObject(this).callMethod('getTotalMarkers');
  bool isZoomOnClick() => asJsObject(this).callMethod('isZoomOnClick');
  void redraw() {
    asJsObject(this).callMethod('redraw');
  }

  bool removeMarker(Marker marker) =>
      asJsObject(this).callMethod('removeMarker', [__codec1.encode(marker)]);
  void resetViewport() {
    asJsObject(this).callMethod('resetViewport');
  }

  void setCalculator(Function calculator) {
    asJsObject(this).callMethod('setCalculator', [calculator]);
  }

  void setGridSize(num size) {
    asJsObject(this).callMethod('setGridSize', [size]);
  }

  void setMaxZoom(num maxZoom) {
    asJsObject(this).callMethod('setMaxZoom', [maxZoom]);
  }

  void setStyles(List<MarkerClustererStyle> styles) {
    asJsObject(this).callMethod('setStyles', [__codec6.encode(styles)]);
  }
}

@GeneratedFrom(_MarkerClustererOptions)
@anonymous
class MarkerClustererOptions extends JsInterface {
  MarkerClustererOptions() : this.created(JsObject(context['Object']));
  MarkerClustererOptions.created(JsObject o) : super.created(o);

  set gridSize(num _gridSize) {
    asJsObject(this)['gridSize'] = _gridSize;
  }

  num get gridSize => asJsObject(this)['gridSize'];
  set maxZoom(num _maxZoom) {
    asJsObject(this)['maxZoom'] = _maxZoom;
  }

  num get maxZoom => asJsObject(this)['maxZoom'];
  set zoomOnClick(bool _zoomOnClick) {
    asJsObject(this)['zoomOnClick'] = _zoomOnClick;
  }

  bool get zoomOnClick => asJsObject(this)['zoomOnClick'];
  set imagePath(String _imagePath) {
    asJsObject(this)['imagePath'] = _imagePath;
  }

  String get imagePath => asJsObject(this)['imagePath'];
  set imageExtension(String _imageExtension) {
    asJsObject(this)['imageExtension'] = _imageExtension;
  }

  String get imageExtension => asJsObject(this)['imageExtension'];
  set averageCenter(bool _averageCenter) {
    asJsObject(this)['averageCenter'] = _averageCenter;
  }

  bool get averageCenter => asJsObject(this)['averageCenter'];
  set minimumClusterSize(num _minimumClusterSize) {
    asJsObject(this)['minimumClusterSize'] = _minimumClusterSize;
  }

  num get minimumClusterSize => asJsObject(this)['minimumClusterSize'];
  set styles(List<MarkerClustererStyle> _styles) {
    asJsObject(this)['styles'] = __codec6.encode(_styles);
  }

  List<MarkerClustererStyle> get styles =>
      __codec6.decode(asJsObject(this)['styles']);
}

@GeneratedFrom(_MarkerClustererStyle)
@anonymous
class MarkerClustererStyle extends JsInterface {
  MarkerClustererStyle() : this.created(JsObject(context['Object']));
  MarkerClustererStyle.created(JsObject o) : super.created(o);

  set url(String _url) {
    asJsObject(this)['url'] = _url;
  }

  String get url => asJsObject(this)['url'];
  set height(num _height) {
    asJsObject(this)['height'] = _height;
  }

  num get height => asJsObject(this)['height'];
  set width(num _width) {
    asJsObject(this)['width'] = _width;
  }

  num get width => asJsObject(this)['width'];
  set anchor(Point _anchor) {
    asJsObject(this)['anchor'] = __codec7.encode(_anchor);
  }

  Point get anchor => __codec7.decode(asJsObject(this)['anchor']);
  set textColor(String _textColor) {
    asJsObject(this)['textColor'] = _textColor;
  }

  String get textColor => asJsObject(this)['textColor'];
  set textSize(num _textSize) {
    asJsObject(this)['textSize'] = _textSize;
  }

  num get textSize => asJsObject(this)['textSize'];
  set backgroundPosition(String _backgroundPosition) {
    asJsObject(this)['backgroundPosition'] = _backgroundPosition;
  }

  String get backgroundPosition => asJsObject(this)['backgroundPosition'];
}

/// codec for google_maps.src.GMap
final __codec0 = JsInterfaceCodec<GMap>((o) => GMap.created(o));

/// codec for google_maps.src.Marker
final __codec1 = JsInterfaceCodec<Marker>((o) => Marker.created(o));

/// codec for dart.core.List<Marker>
final __codec2 = JsListCodec<Marker>(__codec1);

/// codec for google_maps_markerclusterer.src.MarkerClustererOptions
final __codec3 = JsInterfaceCodec<MarkerClustererOptions>(
    (o) => MarkerClustererOptions.created(o));

/// codec for google_maps.src.LatLngBounds
final __codec4 = JsInterfaceCodec<LatLngBounds>((o) => LatLngBounds.created(o));

/// codec for google_maps_markerclusterer.src.MarkerClustererStyle
final __codec5 = JsInterfaceCodec<MarkerClustererStyle>(
    (o) => MarkerClustererStyle.created(o));

/// codec for dart.core.List<MarkerClustererStyle>
final __codec6 = JsListCodec<MarkerClustererStyle>(__codec5);

/// codec for google_maps.src.Point
final __codec7 = JsInterfaceCodec<Point>((o) => Point.created(o));
