import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pixelcraft/config/gen/colors.gen.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';
import 'package:pixelcraft/core/components/image/primary_image.dart';
import 'package:pixelcraft/core/cubits/book_marks/book_marks_cubit.dart';

@RoutePage()
class BookmarksView extends StatelessWidget {
  const BookmarksView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookMarksCubit, List<ImageResponseCollection>>(
      builder: (context, bookmarkList) {
        print('triggered bookmarksview');
        if (bookmarkList.isEmpty) {
          return Scaffold(
            body: Center(
              child: Text(
                'There are no saved images',
                style: TextStyle(
                  color: ColorName.primaryLabel,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.sp,
                ),
              ),
            ),
          );
        } else {
          return Stack(
            children: [
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 8,
                ),
                itemCount: bookmarkList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: PrimaryImage.memory(base64String: bookmarkList[index].base64),
                  );
                },
              ),
            ],
          );
        }
      },
    );
  }
}
