import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:web_dynamic_form_flutter/Model/unsplash_image_model.dart';
import 'package:web_dynamic_form_flutter/Services/repositories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final StreamController<List<UnsplashImgData>> _imageStreamController =
      StreamController<List<UnsplashImgData>>.broadcast();
  List<UnsplashImgData> unsplashData = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  void dispose() {
    _imageStreamController.close();
    super.dispose();
  }

  Future<void> loadData() async {
    setState(() {
      isLoading = true;
    });

    try {
      final box = Hive.box<List<UnsplashImgData>>("imageList");
      List<UnsplashImgData> cachedData = box.get("imageList") ?? [];

      if (cachedData.isNotEmpty) {
        unsplashData = List.from(cachedData);
        _imageStreamController.add(unsplashData);
        setState(() {
          isLoading = false;
        });
      } else {
        // No cache, fetch from API
        await fetchFromAPI();
      }
    } catch (e) {
      print("Error loading data: $e");
      _imageStreamController.addError("Failed to load data");
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> fetchFromAPI() async {
    try {
      final box = Hive.box<List<UnsplashImgData>>("imageList");
      List<UnsplashImgData> tempData = [];

      // Fetch data page by page and stream updates
      for (int pageNumber = 1; pageNumber <= 5; pageNumber++) {
        List<UnsplashImgData> pageData = await Repositories().getImageRepo(pageNumber);
        tempData.addAll(pageData);

        // Stream the updated data after each page
        unsplashData = List.from(tempData);
        _imageStreamController.add(unsplashData);

        // Save to cache periodically
        if (pageNumber % 2 == 0) {
          box.put("imageList", unsplashData);
        }
      }

      // Final save to cache
      box.put("imageList", unsplashData);
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print("Error fetching from API: $e");
      _imageStreamController.addError("Failed to fetch images");
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> refreshData() async {
    final box = Hive.box<List<UnsplashImgData>>("imageList");
    await box.delete("imageList");
    unsplashData.clear();
    _imageStreamController.add([]);
    await loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Form"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: refreshData,
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Column(
          children: [
            if (isLoading) const LinearProgressIndicator(),
            const SizedBox(height: 8),
            Expanded(
              child: StreamBuilder<List<UnsplashImgData>>(
                stream: _imageStreamController.stream,
                initialData: const [],
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            size: 64,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Error: ${snapshot.error}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.red),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: refreshData,
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    );
                  }

                  List<UnsplashImgData> imageList = snapshot.data ?? [];

                  if (imageList.isEmpty && !isLoading) {
                    return const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.image_not_supported_outlined,
                            size: 64,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'No images available',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 8,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      childAspectRatio: 0.8,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      final imageData = imageList[index];

                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        child: Column(
                          children: [
                            Expanded(
                              child: buildImageWidget(imageData),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              imageData.user?.name ?? "Unknown",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageWidget(UnsplashImgData imageData) {
    String? imageUrl = imageData.urls?.small;

    if (imageUrl == null || imageUrl.isEmpty) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Icon(
            Icons.image_not_supported,
            color: Colors.grey,
            size: 32,
          ),
        ),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        memCacheHeight: 200,
        memCacheWidth: 200,
        placeholder: (context, url) => Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 24,
              ),
              SizedBox(height: 4),
              Text(
                'Failed',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
