
import 'package:fluttercv/Models/ContactURL.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/EnumTypeContactUrl.dart';
import 'package:fluttercv/Models/ExperiencePro.dart';
import 'TechnologySkill.dart';
import 'Loisir.dart';

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
    liste.add(new TechnologySkill("Java Android", "logo_java", 4));
    liste.add(new TechnologySkill("Swift", "logo_swift", 3));
    liste.add(new TechnologySkill("PHP7", "logo_php", 4));
    liste.add(new TechnologySkill("SQL", "logo_sql", 3));
    return liste;
  }
  static Future<List<Cursus>> getCursusList()
  async
  {
    List<Cursus> liste = [];
    liste.add(new Cursus(2019,"Concepteur Développeur de Solutions Mobiles","Campus Centre", "Châteauroux", "Major de Promo",true));
    liste.add(new Cursus(2017,"BP-REA Maraîchage Bio","MFR L'Orleanais" ,"Orléans", "",true));
    liste.add(new Cursus(2016,"Formateur Français langue etrangère", "Lire-et-Ecrire","Liège","",false));
    liste.add(new Cursus(2011, "Développeur DOT.NET", "Technifutur", "Liège","",false));
    liste.add(new Cursus(2000, "DUT Informatique", "IUT Toulouse-Blagnac","Blagnac","",true));
    return liste;
  }

  static Future<List<ExperiencePro>> getExperiencesProList()
  async
  {
    List<ExperiencePro> liste = [];

    List<String> listeTaches =
            [
              'Développement d\'une appli mobile',
              'Maquettage d\'applis mobiles',
              'Prospection Commerciale et devis',
              'Prestation de formations aux entreprises'
            ];
    List<String> listeTech = ['Flutter','PHP7','GIT'];
    List<String> listeEnv = ['MacOS','Android','iOS'];
    List<String> listePostes = ['Développeur','Commercial','Designer','Formateur'];
    ExperiencePro experiencePro = new ExperiencePro(DateTime(2019,6,1),null,'Takotek','Châteauroux',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Analyse et maquettage de 3 applis mobiles',
      'Développement de deux applis iOS',
      'Développement de webServices REST',
      'Création du site web de la société',
      'Gestions de serveurs Web',
      'Prestation de formations aux entreprises'
    ];
    listeTech = ['SWIFT','PHP7','UNITY','GIT'];
    listeEnv = ['MacOS','Android','iOS'];
    listePostes = ['Développeur','Designer','Formateur'];
    experiencePro = new ExperiencePro(DateTime(2019,3,1),DateTime(2019,5,31),'RamonTech','Châteauroux',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Inventaire du stock Tissus et fournitures',
      'Préparation de commande',
      'Formation en interne à X3'
    ];
    listeTech = ['ERP X3'];
    listeEnv = ['Windows'];
    listePostes = ['Preparateur de commande'];
    experiencePro = new ExperiencePro(DateTime(2018,8,1),DateTime(2018,11,31),'BALSAN','Châteauroux',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Préparation de plats cuisinés asiatiques',
      'Utilisation de machine de cuisine',
      'Conditionnement et manutention',
      'Respect des normes sanitaires'
    ];
    listeTech = [];
    listeEnv = [];
    listePostes = ['Cuisinier','Conditionnement','Manutentionnaire'];
    experiencePro = new ExperiencePro(DateTime(2017,31,1),DateTime(2018,7,31),'Prodisal','Velles',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Prise de commande de taxi G7',
      'Conseil et relation client',
      'Prise d\'appels en anglais',
      'Relation client avec VIP et Classe Affaire',
    ];
    listeTech = [];
    listeEnv = ['Windows'];
    listePostes = ['Conseiller Clientèle'];
    experiencePro = new ExperiencePro(DateTime(2017,9,1),DateTime(2017,12,31),'MSC','Châteauroux',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Conseiller clientèle pour Engie Particuliers',
      'Vente d\'assurances et produits dérivés',
      'gestions des litiges clients'
    ];
    listeTech = [];
    listeEnv = ['Windows'];
    listePostes = ['Conseiller Clientèle'];
    experiencePro = new ExperiencePro(DateTime(2016,3,1),DateTime(2016,10,31),'Armatis LC','Châteauroux',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Développement d\'un site web de réseau social',
      'Analyse et conception d\'applications WEB',
      'Chef de projet du site WEB',
      'Management de deux sous-traitants',
      'Gestions des serveurs Web (VM)'
    ];
    listeTech = ['PHP7','JS','GIT','NOSQL'];
    listeEnv = ['Symphony','Doctrine','CodeIgniteur'];
    listePostes = ['Développeur','Chef de Projet'];
    experiencePro = new ExperiencePro(DateTime(2011,11,1),DateTime(2013,2,31),'Babyzoom','Bruxelles',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Développement d\'un web service',
      'Développement en Test Driven Development'
    ];
    listeTech = ['C#','REST','GIT'];
    listeEnv = ['Windows','.NET','TDD'];
    listePostes = ['Développeur','Designer','Formateur'];
    experiencePro = new ExperiencePro(DateTime(2011,3,1),DateTime(2011,4,1),'Mutualités Socialistes','Bruxelles',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Gestion d\'entreprise et prospection commerciale',
      'Chet de projet et d\'equipe',
      'Développement d\'un CRM pour les clients',
      'Prestation de cours informatiques',
      'Gestions de serveurs Web',
    ];
    listeTech = ['PHP','JS','SQL'];
    listeEnv = ['Windows','Linux'];
    listePostes = ['Développeur','Commercial','Formateur'];
    experiencePro = new ExperiencePro(DateTime(2008,8,1),DateTime(2010,4,31),'Click Web Agency','Liège',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Première ligne Helpdesk ADSL pour Belgacom',
      'Dépannage informatique',
      'Assistance commerciale'
    ];
    listeTech = ['ADSL','MODEM'];
    listeEnv = ['Windows'];
    listePostes = ['Conseiller clientèle'];
    experiencePro = new ExperiencePro(DateTime(2008,4,1),DateTime(2008,7,31),'Target Power','Liège',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Première ligne Helpdesk ADSL pour TELE2',
      'Dépannage informatique',
      'Assistance commerciale'
    ];
    listeTech = ['ADSL','MODEM'];
    listeEnv = ['Windows'];
    listePostes = ['Conseiller clientèle'];
    experiencePro = new ExperiencePro(DateTime(2008,3,1),DateTime(2007,1,31),'Transcom','Liège',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Développement d\'une appli web d\'agenda',
      'Production d\'analyse UML'
    ];
    listeTech = ['JSP','SQL','JS'];
    listeEnv = ['Windows','Tomcat'];
    listePostes = ['Développeur'];
    experiencePro = new ExperiencePro(DateTime(2005,1,1),DateTime(2005,54,31),'ELLA.BE','Louvain',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    listeTaches =
    [
      'Développement de 9 applications web',
      'Administration des serveurs WEB',
      'Prestation de formations aux entreprises'
    ];
    listeTech = ['ASP','SQL','JS'];
    listeEnv = ['Windows','ASPNET','Windows NT'];
    listePostes = ['Développeur'];
    experiencePro = new ExperiencePro(DateTime(2005,1,1),DateTime(2005,54,31),'ELLA.BE','Louvain',listeTaches,listeTech,listeEnv,listePostes);
    liste.add(experiencePro);

    return liste;
  }

  static Future<List<Loisir>> getLoisirList()
  async
  {
    List<Loisir> liste = [];
    liste.add(new Loisir("Guitare Basse","J'apprend à jouer de la guitare basse et j'espère un jour avoir le niveau pour pouvoir jouer avec des amis.", 'photo_guitare.jpg'));
    liste.add(new Loisir("Jeux Vidéos","Je m'investis dans une association, ARIG, afin de proposer des événements -des Lan Party - ou l'on se retrouve le temps d'un week-end.", 'arig.jpg'));
    liste.add(new Loisir("Marche à pied","Avec ou sans bâtons, je marche tous les jours pour le plaisir et la forme physique.", 'marche.jpg'));
    return liste;
  }
  static Future<List<ContactURL>> getContactList()
  async
  {
    List<ContactURL> liste = [];
    liste.add(ContactURL('mailto:thierry.bru@takotek.fr',EnumTypeContactUrl.email));
    liste.add(ContactURL('07 63 90 59 59',EnumTypeContactUrl.phone));
    liste.add(ContactURL('www.linkedin.com/in/thierry-bru/',EnumTypeContactUrl.linkedIn));
    liste.add(ContactURL('https://github.com/MedicArwen',EnumTypeContactUrl.github));
    liste.add(ContactURL('images/qr_code.png',EnumTypeContactUrl.urlQRCode));
    return liste;
  }
  static Future<List<ContactURL>> getContactButton()
  async
  {
    List<ContactURL> liste = [];
    liste.add(ContactURL('https://opn.to/r/Carte_de_visite_de_Thierry/',EnumTypeContactUrl.urlWebvCard));
    liste.add(ContactURL('https://www.youtube.com/channel/UCdl3DqdHsMe-dg2CeVZGj7A/',EnumTypeContactUrl.youtube));
    return liste;
  }
}