part of 'widgets.dart';

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double mxExtent;
  final double mnExtent;

  PersistentHeader(
      {required this.child, required this.mxExtent, required this.mnExtent});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color:whiteColor,
      height: mxExtent,
      child: child,
    );
  }

  @override
  double get maxExtent => mxExtent;

  @override
  double get minExtent => mnExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
