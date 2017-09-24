package ua.com.owu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.owu.entity.Profile;

public interface ProfileDAO extends JpaRepository<Profile,Integer> {
    @Query("from Profile p where p.interest=:interest")
    public Profile findByProfileInterest(@Param("interest")String interest);
}
