package entity;

import entity.Formateur;
import entity.FormateurHasFormationPK;
import entity.Formation;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2019-04-17T14:11:50")
@StaticMetamodel(FormateurHasFormation.class)
public class FormateurHasFormation_ { 

    public static volatile SingularAttribute<FormateurHasFormation, Formateur> formateur;
    public static volatile SingularAttribute<FormateurHasFormation, FormateurHasFormationPK> formateurHasFormationPK;
    public static volatile SingularAttribute<FormateurHasFormation, Formation> formation;
    public static volatile SingularAttribute<FormateurHasFormation, Integer> age;

}