package co.grandcircus.CO2Competition.Repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import co.grandcircus.CO2Competition.Objects.Company;

public interface CompanyRepo extends JpaRepository<Company, Long> {

	Company findByName(String name);
	
	Company getOne(Long id);

}

