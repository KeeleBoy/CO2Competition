package co.grandcircus.CO2Competition.Controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.grandcircus.CO2Competition.ApiService;
import co.grandcircus.CO2Competition.COCalculator;
import co.grandcircus.CO2Competition.Entities.Distance;
import co.grandcircus.CO2Competition.Entities.SearchResult;
import co.grandcircus.CO2Competition.Objects.Employee;
import co.grandcircus.CO2Competition.Repos.EmployeeRepo;

@Controller
public class IndexController {

	@Autowired
	private ApiService apiServe;

	@Autowired
	private COCalculator coCal;

	@Autowired
	private EmployeeRepo emRepo;
	
	@RequestMapping("/")
	public ModelAndView showIndex(RedirectAttributes redir) {
		// Create ModelAndView
		ModelAndView mav = new ModelAndView("index");

		// Declare Variables
		String address1 = "NoviMI";
		String address2 = "DetroitMI";
		String address3 = "ChicagoIL";
		String start;
		String midway;
		String destination;
		Distance distance;
		
		// Get Search Results
		SearchResult result = apiServe.getResult(address1, address2, address3);

		// Will catch thrown exception if there were no results found and redirect
		try {
			start = apiServe.getStart(result, 0);
			midway = apiServe.getStart(result, 1);
			destination = apiServe.getDest(result, 1);
			distance = apiServe.getDistance(result);
		} catch (IllegalArgumentException IAE) {
			redir.addFlashAttribute("message", IAE.getMessage());
			return new ModelAndView("redirect:/logtrip");
		}
		double CO2Savings = coCal.calculateSavings(address1, address2);
//		double CO2Savings = coCal.smallCar(5.7);
		
		// Add Objects to ModelAndView
		mav.addObject("co2savings", CO2Savings);
		mav.addObject("start", start);
		mav.addObject("midway", midway);
		mav.addObject("destination", destination);
		mav.addObject("distance", distance);
		return mav;
	}

	@RequestMapping("/logtrip")
	public ModelAndView logTripForm() {
		return new ModelAndView("tripform");
	}

	@RequestMapping("/tripdetails")
	public ModelAndView showDetails(@RequestParam String street, @RequestParam String city, @RequestParam String zip,
			@RequestParam String street1, @RequestParam String city1, @RequestParam String zip1,
			RedirectAttributes redir) {
		ModelAndView mav = new ModelAndView("details");
		String startAddress = street + city + zip;
		String destAddress = street1 + city1 + zip1;
		SearchResult result = apiServe.getResult(startAddress, destAddress);
		Distance distance = apiServe.getDistance(result);
		if (distance != null) {
			mav.addObject("street", street);
			mav.addObject("city", city);
			mav.addObject("zip", zip);
			mav.addObject("street1", street1);
			mav.addObject("city1", city1);
			mav.addObject("zip1", zip1);
			mav.addObject("distance", distance);
			mav.addObject("em", coCal.smallCar(distance.getValue()));
		} else {
			mav.addObject("invalid", "No such address");
		}
		return mav;

	}
	
	// Tester to see if Scoreboard will work, needs polishing
	@RequestMapping("/{id}/testscores")
	public ModelAndView showScores(@PathVariable Long id) {
//		List<Long> scores = emRepo.findScoresByCompany(4L);
		Employee em = emRepo.findByCompany("Grand Circus");
		ModelAndView mav = new ModelAndView("userscores");
		mav.addObject("employee",em);
//		mav.addObject("scoreboard", scores);
		return mav;
	}

}
