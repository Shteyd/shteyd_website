import 'package:shteyd_site/domain/features/skills/skills_entities.dart';

abstract class SkillsRepository {
  Stream<List<Skill>> get allSkills;

  Future<void> createSkill(Skill skill);
  Future<void> editSkill(Skill skill);
  Future<void> deleteSkill(int id);
}
