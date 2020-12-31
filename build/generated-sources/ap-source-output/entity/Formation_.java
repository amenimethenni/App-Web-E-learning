package entity;

import entity.Apprenant;
import entity.FormateurHasFormation;
import entity.Module;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T14:11:50")
@StaticMetamodel(Formation.class)
public class Formation_ { 

    public static volatile CollectionAttribute<Formation, Apprenant> apprenantCollection;
    public static volatile SingularAttribute<Formation, Integer> nbmodules;
    public static volatile SingularAttribute<Formation, Integer> duree;
    public static volatile SingularAttribute<Formation, String> description;
    public static volatile SingularAttribute<Formation, String> discipline;
    public static volatile SingularAttribute<Formation, Integer> idFormation;
    public static volatile SingularAttribute<Formation, String> nom;
    public static volatile CollectionAttribute<Formation, Module> moduleCollection;
    public static volatile CollectionAttribute<Formation, FormateurHasFormation> formateurHasFormationCollection;

}