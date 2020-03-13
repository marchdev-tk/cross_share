// Copyright (c) 2020, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:meta/meta.dart';

import 'share_service.interface.dart';

class ShareService extends ShareServiceInterface {
  factory ShareService() => _singleton;
  const ShareService._();
  static final ShareService _singleton = ShareService._();

  Future<void> shareFile({
    @required String name,
    @required Uint8List bytes,
    String type = '*/*',
  }) async {
    // TODO: add platform specific implementation for windows (https://docs.microsoft.com/en-us/windows/win32/shell/showsharefolderui?redirectedfrom=MSDN)
  }
}
