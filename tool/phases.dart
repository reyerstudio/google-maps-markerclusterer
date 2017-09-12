// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library google_maps_markerwithlabel.tool.phases;

import 'package:build_runner/build_runner.dart';
import 'package:js_wrapping_generator/js_interface_generator.dart';
import 'package:source_gen/source_gen.dart';

final _builder = new PartBuilder([new JsInterfaceGenerator()]);

final List<BuildAction> phases = <BuildAction>[
  new BuildAction(_builder, 'google_maps_markerclusterer', inputs: const [
    'lib/src/markerclusterer.dart',
  ]),
  new BuildAction(_builder, 'google_maps_markerclusterer', inputs: const [
    'example/*.dart',
  ])
];
