part of '../../data.dart';

class SkillsRepositoryImpl implements SkillsRepository {
  @override
  BehaviorSubject<List<Skill>> get allSkills => throw UnimplementedError();

  @override
  Future<void> createSkill(Skill skill) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteSkill(int id) {
    throw UnimplementedError();
  }

  @override
  Future<void> editSkill(Skill skill) {
    throw UnimplementedError();
  }
}
