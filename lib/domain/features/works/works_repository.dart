import 'package:shteyd_site/domain/features/works/works_entities.dart';

abstract class WorksRepository {
  Stream<List<Work>> get allWorks;

  Future<void> createWork(Work work);
  Future<void> editWork(Work work);
  Future<void> deleteWork(int id);
}
