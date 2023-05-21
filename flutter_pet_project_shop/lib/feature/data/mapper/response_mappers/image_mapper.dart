import 'package:flutter_pet_project_shop/feature/data/mapper/mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/response_mappers/file_mapper.dart';
import 'package:flutter_pet_project_shop/feature/data/models/item_models/image_model.dart';
import 'package:flutter_pet_project_shop/feature/domain/entities/item_entities/entities.dart';

class ImageMapper extends Mapper<ImageModel, ImageEnt> {
  ImageMapper({required this.fileMapper});

  final FileMapper fileMapper;

  @override
  ImageEnt? map(ImageModel? entity) {
    return ImageEnt(file: fileMapper.map(entity?.file));
  }
}
