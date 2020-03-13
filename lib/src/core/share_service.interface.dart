// Copyright (c) 2020, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class ShareServiceInterface {
  const ShareServiceInterface();

  Future<void> shareFile({
    @required String name,
    @required Uint8List bytes,
    String type = '*/*',
  });

  Future<void> shareUrl({
    @required String url,
    String name,
  }) =>
      launch(url);
}
