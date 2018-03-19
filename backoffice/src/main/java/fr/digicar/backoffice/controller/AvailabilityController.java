package fr.digicar.backoffice.controller;

import fr.digicar.model.ParkingSpot;
import fr.digicar.odt.FilterReservationOdt;
import fr.digicar.backoffice.service.ParkingSpotService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/availability")
public class AvailabilityController {

    @Autowired
    private ParkingSpotService parkingSpotService;

    @RequestMapping(value = "/reservationHome", method = RequestMethod.GET)
    public ModelAndView getViewFoCarResevation() {


        ModelAndView modelAndView = null;
        List<ParkingSpot> listOfParkingSpot = null;

        try {
            modelAndView = new ModelAndView("carReservation-form");
            listOfParkingSpot = parkingSpotService.getParkingSpots();
            modelAndView.addObject("listOfTown", listOfParkingSpot);
            modelAndView.addObject("filters", new FilterReservationOdt());
        }catch (Exception e){
            log.error("Localize message: "+e.getLocalizedMessage());
            log.error("Simple Message: "+e.getMessage());

        }
        return modelAndView;
    }

    @RequestMapping(value = "/findAvailableByCreteria", method = RequestMethod.POST)
    public ModelAndView getViewFoAvailableCar() {

        ModelAndView modelAndView = new ModelAndView("carReservation-form");

        return null;
    }

}
