import 'package:flutter/material.dart';
import 'package:flutter_widgets/Themes/custom_themes.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({Key? key}) : super(key: key);

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  final List<int> imageId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if ((scrollController.position.pixels + 100) >=
          scrollController.position.maxScrollExtent) {
        // add5();
        getFetch();
      }
    });
  }

  void add5() {
    final lastId = imageId.last;
    imageId.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future getFetch() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 5));

    add5();
    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 4));
    final lastId = imageId.last;
    imageId.clear();
    imageId.add(lastId);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      removeTop: true,
      child: Stack(
        children: [
          RefreshIndicator(
            onRefresh: onRefresh,
            child: ListView.builder(
              controller: scrollController,
              itemCount: imageId.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                    placeholder:
                        const AssetImage('assets/images/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imageId[index]}'));
              },
            ),
          ),
          if (isLoading)
            Positioned(
                bottom: 60,
                left: size.width * 0.5 - 30,
                child: const _LoadingIcon())
        ],
      ),
    ));
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: CustomThemes.primary,
      ),
    );
  }
}
