// Copyright (c) 2021, the MarchDev Toolkit project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library cross_share;

export 'src/share.stub.dart'
    if (dart.library.html) 'src/share.web.dart'
    if (dart.library.io) 'src/share.io.dart';
