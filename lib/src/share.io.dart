// Copyright (c) 2020, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'dart:typed_data';

import 'package:meta/meta.dart';

import 'core/share_service.interface.dart';
import 'core/share_service.other.dart' as other;
import 'core/share_service.mobile.dart' as mobile;

class Share implements ShareServiceInterface {
  factory Share() => _singleton ??= Platform.isAndroid || Platform.isIOS
      ? Share._(mobile.ShareService())
      : Share._(other.ShareService());
  const Share._(this.shareService);
  static Share _singleton;

  final ShareServiceInterface shareService;

  @override
  Future<void> shareFile({
    @required String name,
    @required Uint8List bytes,
    String type = '*/*',
  }) =>
      shareService.shareFile(
        name: name,
        bytes: bytes,
        type: type,
      );

  @override
  Future<void> shareUrl({
    @required String url,
    String name,
  }) =>
      shareService.shareUrl(
        name: name,
        url: url,
      );
}
