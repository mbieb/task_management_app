part of '../home_page.dart';

class _Shimmer extends StatelessWidget {
  const _Shimmer();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: 3,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 2.4,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemBuilder: ((context, index) {
            return Container(
              margin: margin(bottom: 8),
              decoration: const BoxDecoration(
                color: cColorRed40,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
