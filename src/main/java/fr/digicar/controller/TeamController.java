package fr.digicar.controller;

import java.util.List;

import fr.digicar.model.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.digicar.service.TeamService;

@Controller
@RequestMapping(value="/user")
public class TeamController {
	
	@Autowired
	private TeamService teamService;
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView addTeamPage() {
		ModelAndView modelAndView = new ModelAndView("add-team-form");
		modelAndView.addObject("user", new Team());
		return modelAndView;
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ModelAndView addingTeam(@ModelAttribute Team team) {
		
		ModelAndView modelAndView = new ModelAndView("home");
		teamService.addTeam(team);
		
		String message = team.getName()+" a ete ajoute(e).";
		List<Team> teams = teamService.getTeams();
		modelAndView.addObject("users", teams);
		modelAndView.addObject("message", message);
		return modelAndView;
	}
	

	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public ModelAndView editTeamPage(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("edit-team-form");
		Team team = teamService.getTeam(id);
		modelAndView.addObject("user",team);
		return modelAndView;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
	public ModelAndView edditingTeam(@ModelAttribute Team team, @PathVariable Integer id) {
		
		ModelAndView modelAndView = new ModelAndView("home");
		
		teamService.updateTeam(team);
		
		String message = team.getName()+" a ete modifee.";

		List<Team> teams = teamService.getTeams();
		modelAndView.addObject("users", teams);
		modelAndView.addObject("message", message);
		return modelAndView;
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public ModelAndView deleteTeam(@PathVariable Integer id) {
		ModelAndView modelAndView = new ModelAndView("home");
		teamService.deleteTeam(id);
		String message = "un membre supprime.";
		List<Team> teams = teamService.getTeams();
		modelAndView.addObject("users", teams);
		modelAndView.addObject("message", message);
		return modelAndView;
	}

}