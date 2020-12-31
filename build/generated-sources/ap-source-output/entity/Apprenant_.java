package entity;

import entity.Client;
import entity.Formation;
import entity.Module;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T14:11:50")
@StaticMetamodel(Apprenant.class)
public class Apprenant_ { 

    public static volatile CollectionAttribute<Apprenant, Formation> formationCollection;
    public static volatile CollectionAttribute<Apprenant, Client> clientCollection;
    public static volatile SingularAttribute<Apprenant, Integer> idAprenant;
    public static volatile SingularAttribute<Apprenant, String> nom;
    public static volatile CollectionAttribute<Apprenant, Module> moduleCollection;
    public static volatile SingularAttribute<Apprenant, String> email;

}