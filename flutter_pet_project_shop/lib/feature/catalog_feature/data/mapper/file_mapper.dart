import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/models/item_models/file_model.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/item_entities/file_entity.dart';

class FileMapper extends Mapper<FileModel, File> {
  @override
  File? map(FileModel? entity) {
    return File(
      url: entity?.url,
      name: entity?.name,
      originalName: entity?.originalName,
      extension: entity?.extension,
      size: entity?.size,
    );
  }
}
