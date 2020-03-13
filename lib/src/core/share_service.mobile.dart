// Copyright (c) 2020, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

import 'share_service.interface.dart';

/// Implementation of [ShareServiceInterface] class that defines
/// functionality of `shareFile`.
///
/// Sharing could be done via 2 methods:
///  * shareFile (as byte array)
///  * shareUrl (as a URL String)
class ShareService extends ShareServiceInterface {
  /// Gets a singleton object of mobile implementation of `ShareService`.
  factory ShareService() => _singleton;
  const ShareService._();
  static final ShareService _singleton = ShareService._();

  /// Shares file to other apps.
  Future<void> shareFile({
    @required String name,
    @required Uint8List bytes,
    String type = '*/*',
  }) =>
      Share.file('Share $name', name, bytes, type);
}
