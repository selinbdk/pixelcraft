import 'package:isar/isar.dart';
import 'package:pixelcraft/core/collections/image_response_collection.dart';

abstract class ImageStorageRepository {
  Future<void> deleteResult(Id id);

  Future<void> saveResult(ImageResponseCollection model);

  Future<List<ImageResponseCollection>> getAllResults();

}

class ImageStorageRepositoryImpl implements ImageStorageRepository {
  const ImageStorageRepositoryImpl(this.isar);

  @override
  Future<List<ImageResponseCollection>> getAllResults() async {
    try {
      return await isar.imageResponseCollections.where().findAll();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveResult(ImageResponseCollection model) async {
    try {
      await isar.writeTxn(() async => isar.imageResponseCollections.put(model));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteResult(Id id) async {
    try {
      // await isar.writeTxn(() async => isar.imageResponseCollections.filter().idEqualTo(id).deleteAll());
      await isar.writeTxn(() async => isar.imageResponseCollections.delete(id));
    } catch (e) {
      rethrow;
    }
  }

  final Isar isar;
}
