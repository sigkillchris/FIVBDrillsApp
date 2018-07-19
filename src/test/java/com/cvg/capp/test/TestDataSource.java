/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cvg.capp.test;

import com.cvg.capp.config.SpringRootConfig;
import javax.sql.DataSource;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author ccarr
 */
public class TestDataSource {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        DataSource ds = ctx.getBean(DataSource.class);
        JdbcTemplate jt = new JdbcTemplate(ds);
        
        //test info
        String sql = "INSERT INTO drills (`name`, `objective`, `description`, `mods`, `pointers`, `level_id`, `skill_id`) VALUES(?, ?, ?, ?, ?, ?, ?)";

        Object[] param = new Object[]{"WARM-UPVOLESTE", "This objective of this"
                + " drill is to loosen up thebody and raise body temperature"
                + " inpreparation for more strenuous activity.It will also increase"
                + " the athlete’s awarenessof how current environmental conditionsaffect"
                + " the ball.Additionally this drill reinforces correctdefense"
                + " techniques and overall hustle.",
            "This drill starts with one athlete on either sideof the net.One "
                + "side is the ‘points’ side and the other isthe ‘challenger’ "
                + "side.The athlete on the ‘challenger’ sideunderhand serves across"
                + " the net andathletes play out the rally with only one toucheach.For"
                + " a slightly easier option you can make thedrill ‘2 touch’.The ball"
                + " must be played with both handstogether.If the athlete on the ‘points’"
                + " side wins the rallythey get a point and if the player on the‘challenger’"
                + " side wins they move to the‘points’ side to receive the next"
                + " serve.If there are two athletes they can stay ontheir own side"
                + " and play to a certain score.If there is only one athlete,"
                + " the coach canmark out a smaller court for her/himself andhave"
                + " the athlete working harder for a point.", 
            "Athletes need to drop to the groundbetween each contact they makewith"
                + " the ball.Individuals or teams must play theball and run round the court to enterfrom the other side",
            "1 Athletes need to stay very low and be activated andready to move as"
                + " the opposition is about to contactthe ball.2If there is only"
                + " one athlete on each side the athleteneeds to attempt to return"
                + " to the middle (and slightlyback) of the court after each contact,"
                + " as this is thebest ‘base’ position from which to dig any"
                + " ballcoming over.", "3", "1"};
        jt.update(sql, param);
        System.out.print("!!---SQL DONE---!!");
                
    }
    
}
