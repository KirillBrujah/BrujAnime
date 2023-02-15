import 'dart:convert';

import 'package:flutter/material.dart';

void reportError({
  required Object exception,
  required String library,
  required String context,
}) {
  FlutterError.reportError(FlutterErrorDetails(
    exception: exception,
    context: ErrorSummary(context),
    library: library,
  ));
}

String prettyJson(Map<String, dynamic> json) =>
    const JsonEncoder.withIndent("     ").convert(json);
