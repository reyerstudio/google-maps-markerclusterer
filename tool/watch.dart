// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library google_maps_markerwithlabel.tool.watch;

import 'package:build_runner/build_runner.dart';

import 'phases.dart';

main() {
  watch(phases, deleteFilesByDefault: true);
}