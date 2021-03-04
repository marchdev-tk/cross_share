// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:url_launcher/url_launcher.dart';

/// Abstract class that describes functionality of `share`.
///
/// Sharing could be done via 2 methods:
///  * shareFile (as byte array)
///  * shareUrl (as a URL String)
abstract class ShareServiceInterface {
  /// Constructs an instance of [ShareServiceInterface].
  const ShareServiceInterface();

  /// Shares file to other apps.
  Future<void> shareFile({
    @required String name,
    @required Uint8List bytes,
    String type = '*/*',
  });

  /// Parses the specified URL string and delegates handling of it to the
  /// underlying platform.
  ///
  /// The returned future completes with a [PlatformException] on invalid URLs and
  /// schemes which cannot be handled.
  Future<void> shareUrl({@required String url}) => launch(url);
}
