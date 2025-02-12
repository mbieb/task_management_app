import 'package:task_management_app/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Alert {
  static notify(context, title, body) {
    ThemeData themeData = Theme.of(context);
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: themeData.textTheme.labelMedium,
          ),
          content: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              body,
              style: themeData.textTheme.labelMedium,
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text(
                'Ok',
              ),
              onPressed: () {
                context.pop();
              },
            ),
          ],
        );
      },
    );
  }

  static notifyAction(context, title, body,
      {required Function positiveAction}) {
    I10n i10n = I10n.of(context);
    ThemeData themeData = Theme.of(context);
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext contextX) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: themeData.textTheme.labelMedium,
          ),
          content: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              body,
              style: themeData.textTheme.labelMedium,
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                i10n.alertOk,
                style: themeData.textTheme.labelMedium,
              ),
              onPressed: () {
                Navigator.of(contextX).pop();
                positiveAction();
              },
            ),
          ],
        );
      },
    );
  }

  static option({
    required BuildContext context,
    String title = '',
    String body = '',
    String? cancelText,
    String? positiveText,
    Color? cancelTextColor,
    Color? positiveTextColor,
    required Function positiveAction,
  }) {
    I10n i10n = I10n.of(context);
    ThemeData themeData = Theme.of(context);
    Color cancelColorValue = cancelTextColor ?? themeData.colorScheme.primary;
    Color positiveColorValue =
        positiveTextColor ?? themeData.colorScheme.primary;
    String cancelTextValue = cancelText ?? i10n.alertCancel;
    String positiveTextValue = positiveText ?? i10n.alertOk;

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            title,
            style: themeData.textTheme.titleMedium,
          ),
          content: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              body,
              style: themeData.textTheme.labelMedium,
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text(
                cancelTextValue,
                style: themeData.textTheme.labelMedium?.copyWith(
                  color: cancelColorValue,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text(
                positiveTextValue,
                style: themeData.textTheme.labelMedium?.copyWith(
                  color: positiveColorValue,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                positiveAction();
              },
            ),
          ],
        );
      },
    );
  }
}
