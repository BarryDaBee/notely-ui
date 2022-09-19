import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class WidgetSize extends StatefulWidget {
  final Widget child;
  final ValueChanged<Size> onChanged;

  const WidgetSize({
    super.key,
    required this.onChanged,
    required this.child,
  });

  @override
  State<WidgetSize> createState() => _WidgetSizeState();
}

class _WidgetSizeState extends State<WidgetSize> {
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(postFrameCallback);
    return Container(
      key: widgetKey,
      child: widget.child,
    );
  }

  @override
  void didChangeDependencies() {
    widget.onChanged(oldSize);
    print(oldSize);
    super.didChangeDependencies();
  }

  var widgetKey = GlobalKey();
  Size oldSize = Size.zero;

  void postFrameCallback(_) {
    var context = widgetKey.currentContext;
    if (context == null) return;

    var newSize = context.size ?? Size.zero;
    print(context.size);
    if (oldSize == newSize) return;

    oldSize = newSize;
    widget.onChanged(newSize);
    setState(() {});
  }
}
