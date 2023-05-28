import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/file_mapper.dart';

import '../../domain/entities/item_entities/image_entity.dart';
import '../models/item_models/image_model.dart';

class ImageMapper extends Mapper<ImageModel, ImageEnt> {
  ImageMapper({required this.fileMapper});

  final FileMapper fileMapper;

  @override
  ImageEnt? map(ImageModel? entity) {
    return ImageEnt(file: fileMapper.map(entity?.file));
  }
}
