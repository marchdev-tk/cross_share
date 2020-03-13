// Copyright (c) 2020, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:meta/meta.dart';

import 'core/share_service.interface.dart';

/// Share files and URLs on both Mobile (Android/iOS), Web and Desktop (Windows/Linux/macOS).
///
/// Sharing could be done via 2 methods:
///  * shareFile (as byte array)
///  * shareUrl (as a URL String)
class Share implements ShareServiceInterface {
  /// Gets a singleton object of `Share`.
  factory Share() => _singleton;
  const Share._();
  static const Share _singleton = Share._();

  /// Shares file to other apps.
  @override
  Future<void> shareFile({
    @required String name,
    @required Uint8List bytes,
    String type = '*/*',
  }) =>
      throw UnimplementedError();

  /// Parses the specified URL string and delegates handling of it to the
  /// underlying platform.
  ///
  /// The returned future completes with a [PlatformException] on invalid URLs and
  /// schemes which cannot be handled.
  @override
  Future<void> shareUrl({
    @required String url,
    String name,
  }) =>
      throw UnimplementedError();
}
