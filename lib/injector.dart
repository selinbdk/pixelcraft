import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';
import 'package:pixelcraft/core/cubits/add_image/add_image_cubit.dart';
import 'package:pixelcraft/core/cubits/download_image/download_image_cubit.dart';
import 'package:pixelcraft/core/cubits/generate_image/generate_image_cubit.dart';
import 'package:pixelcraft/core/cubits/get_all_image/get_all_image_cubit.dart';
import 'package:pixelcraft/core/cubits/remove_image/remove_image_cubit.dart';
import 'package:pixelcraft/core/cubits/share_image/share_image_cubit.dart';
import 'package:pixelcraft/core/network/dio_client.dart';
import 'package:pixelcraft/core/repository/generation_repository.dart';
import 'package:pixelcraft/core/repository/image_storage_repository.dart';

Future<void> initalize() async {
  await dotenv.load();

  final injector = GetIt.instance;

  final directory = await getApplicationDocumentsDirectory();
  final isar = await Isar.open([ImageResponseCollectionSchema], directory: directory.path);

  final dioClient = DioClient();

  injector
    ..registerLazySingleton<Isar>(() => isar)
    ..registerLazySingleton<DioClient>(() => dioClient)
    ..registerLazySingleton<ImageStorageRepository>(
      () => ImageStorageRepositoryImpl(injector<Isar>()),
    )
    ..registerLazySingleton<GenerationRepository>(
      () => GenerationRepositoryImpl(injector<DioClient>()),
    )
    ..registerLazySingleton(() => AddImageCubit(injector<ImageStorageRepository>()))
    ..registerLazySingleton(() => RemoveImageCubit(injector<ImageStorageRepository>()))
    ..registerLazySingleton(() => GetAllImageCubit(injector<ImageStorageRepository>()))
    ..registerLazySingleton(DownloadImageCubit.new)
    ..registerLazySingleton(ShareImageCubit.new)
    ..registerLazySingleton(() => GenerateImageCubit(injector<GenerationRepository>()));
}
