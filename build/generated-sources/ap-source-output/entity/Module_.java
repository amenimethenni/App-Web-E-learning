package entity;

import entity.Apprenant;
import entity.Chapitre;
import entity.Formateur;
import entity.Formation;
import entity.Ressource;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T14:11:50")
@StaticMetamodel(Module.class)
public class Module_ { 

    public static volatile CollectionAttribute<Module, Apprenant> apprenantCollection;
    public static volatile CollectionAttribute<Module, Chapitre> chapitreCollection;
    public static volatile CollectionAttribute<Module, Ressource> ressourceCollection;
    public static volatile SingularAttribute<Module, Formation> formationidFormation;
    public static volatile SingularAttribute<Module, String> description;
    public static volatile SingularAttribute<Module, Integer> duree;
    public static volatile SingularAttribute<Module, Integer> nbrchapitre;
    public static volatile SingularAttribute<Module, String> typeressource;
    public static volatile SingularAttribute<Module, Formateur> formateuridFormateur;
    public static volatile SingularAttribute<Module, Integer> idModule;
    public static volatile SingularAttribute<Module, String> nom;

}