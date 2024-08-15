import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';
import 'package:pixelcraft/core/cubits/add_image/add_image_cubit.dart';
import 'package:pixelcraft/core/cubits/get_all_image/get_all_image_cubit.dart';
import 'package:pixelcraft/core/repository/image_storage_repository.dart';

Future<void> initalize() async {
  final injector = GetIt.instance;

  final directory = await getApplicationDocumentsDirectory();
  final isar = await Isar.open([ImageResponseCollectionSchema], directory: directory.path);

  injector
    ..registerLazySingleton<Isar>(() => isar)
    ..registerLazySingleton<ImageStorageRepository>(
      () => ImageStorageRepositoryImpl(isar),
    )
    ..registerLazySingleton(() => AddImageCubit(injector<ImageStorageRepository>()))
    ..registerLazySingleton(() => GetAllImageCubit(injector<ImageStorageRepository>()));
}
