package fr.digicar.backoffice.controller;

import fr.digicar.backoffice.service.RetardCalculeService;


import fr.digicar.model.RetardCalcule;
import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping(value = "/modifurgent")
public class MonitorSessionController {

    @Autowired
    private RetardCalculeService retardCalculeService;





    @RequestMapping(value = "", method = RequestMethod.GET)
    public ModelAndView AddMonitorCoursePage() throws IOException, JSONException {
        ModelAndView modelAndView = new ModelAndView("monitoring-course-form");
        modelAndView.addObject("ligneRetard", new RetardCalcule());
        retardCalculeService.addRetardCalculeAutomatically();
        List<RetardCalcule> retardscalcule = retardCalculeService.getRetardsCalcule();//ajouter condition de sup
        modelAndView.addObject("retardCalcule", retardscalcule);
        return modelAndView;
    }

   /* @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView addingParkingSpot(@ModelAttribute ParkingSpot parkingSpot) {

        ModelAndView modelAndView = new ModelAndView("menu-parking-spot-form");
        modelAndView.addObject("parking", new ParkingSpot());
        parkingSpotService.addParkingSpot(parkingSpot);
        String message = parkingSpot.getNbSpot() + " ont été ajoutées.";
        List<ParkingSpot> parkingSpots = parkingSpotService.getParkingSpots();
        modelAndView.addObject("parkingSpot", parkingSpots);
        modelAndView.addObject("message", message);
        return modelAndView;
    }*/

   /* @RequestMapping(value = "/search/{id}", method = RequestMethod.GET)
    public ModelAndView searchingParkingSpot(@PathVariable int id) {

        ModelAndView modelAndView = new ModelAndView("search-parking-spot-form");
        ParkingSpot resultParkingSpot = parkingSpotService.getParkingSpot(id);
        modelAndView.addObject("parkingSpot", resultParkingSpot);
        return modelAndView;
    }*/
/*
    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView searchingParkingSpot(@ModelAttribute ParkingSpot parkingSpot) {

        ModelAndView modelAndView = new ModelAndView("menu-parking-spot-form");
        modelAndView.addObject("parking", new ParkingSpot());
        List<ParkingSpot> parkingSpots= parkingSpotService.getParkingSpotByObj(parkingSpot);
       // ParkingSpot resultParkingSpot = parkingSpotService.getParkingSpot(parkingSpot.getId());
        //parkingSpots.add(resultParkingSpot);
        modelAndView.addObject("parkingSpot", parkingSpots);
        return modelAndView;
    }


    @RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
    public ModelAndView editParkingSpotPage(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("menu-parking-spot-form");
        modelAndView.addObject("parking", new ParkingSpot());
        ParkingSpot parkingSpot = parkingSpotService.getParkingSpot(id);
        modelAndView.addObject("place", parkingSpot);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public ModelAndView edditingParkingSpot(@ModelAttribute ParkingSpot parkingSpot,@PathVariable Integer id) {

        ModelAndView modelAndView = new ModelAndView("menu-parking-spot-form");
        modelAndView.addObject("parking", new ParkingSpot());
        parkingSpotService.updateParkingSpot(parkingSpot);

        String message = parkingSpot.getNbSpot() + " a ete modifee.";

        List<ParkingSpot> parkingSpots = parkingSpotService.getParkingSpots();
       modelAndView.addObject("parkingSpot", parkingSpots);
        modelAndView.addObject("message", message);
        return modelAndView;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteParkingSpot(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("menu-parking-spot-form");
        modelAndView.addObject("parking", new ParkingSpot());
        parkingSpotService.deleteParkingSpot(id);
        String message = "une place supprime.";
        List<ParkingSpot> parkingSpots = parkingSpotService.getParkingSpots();
        modelAndView.addObject("parkingSpot", parkingSpots);
        modelAndView.addObject("message", message);
        return modelAndView;
    }
*/
}
