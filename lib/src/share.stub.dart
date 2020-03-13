// Copyright (c) 2020, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:meta/meta.dart';

import 'core/share_service.interface.dart';

class Share implements ShareServiceInterface {
  factory Share() => _singleton;
  const Share._();
  static const Share _singleton = Share._();

  @override
  Future<void> shareFile({
    @required String name,
    @required Uint8List bytes,
    String type = '*/*',
  }) =>
      throw UnimplementedError();

  @override
  Future<void> shareUrl({
    @required String url,
    String name,
  }) =>
      throw UnimplementedError();
}
