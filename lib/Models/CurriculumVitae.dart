
import 'TechnologySkill.dart';

class CurriculumVitae
{

  static Future<List<String>> getAboutMe()
  async
  {
    return
        [
          'Disponible immédiatement, je recherche une mission de développeur Web ou Mobile.',
          'Mon expérience variée me rend adaptable et me donne du recul par rapport à mes tâches de développeur.',
          'En effet, j\'ai travaillé sur le terrain et fait de l\'assitance à l\'utilisateur.',
          'Je suis ouvert au télétravail en cette période sanitairement inédite.'
        ];
  }
  static Future<List<TechnologySkill>> getTechnologySkillList()
  async
  {
    List<TechnologySkill> liste = [];
    liste.add(new TechnologySkill("Flutter", "logo_flutter", 5));
    liste.add(new TechnologySkill("Java Android", "logo_java", 5));
    liste.add(new TechnologySkill("Swift", "logo_swift", 5));
    liste.add(new TechnologySkill("PHP7", "logo_php", 5));
    liste.add(new TechnologySkill("SQL", "logo_sql", 5));
    return liste;
  }

}