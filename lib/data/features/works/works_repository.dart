part of '../../data.dart';

class WorksRepositoryImpl implements WorksRepository {
  @override
  BehaviorSubject<List<Work>> get allWorks => throw UnimplementedError();

  @override
  Future<void> createWork(Work work) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteWork(int id) {
    throw UnimplementedError();
  }

  @override
  Future<void> editWork(Work work) {
    throw UnimplementedError();
  }
}
