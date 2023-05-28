import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';

import '../../domain/entities/item_entities/file_entity.dart';
import '../models/item_models/file_model.dart';

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
