package entity;

import entity.Module;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T14:11:50")
@StaticMetamodel(Chapitre.class)
public class Chapitre_ { 

    public static volatile SingularAttribute<Chapitre, String> titre;
    public static volatile SingularAttribute<Chapitre, String> description;
    public static volatile SingularAttribute<Chapitre, Module> moduleidModule;
    public static volatile SingularAttribute<Chapitre, Integer> idChapitre;

}