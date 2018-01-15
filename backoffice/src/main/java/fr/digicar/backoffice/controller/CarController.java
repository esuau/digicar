package fr.digicar.backoffice.controller;

import java.util.List;

import fr.digicar.model.Car;
import fr.digicar.backoffice.service.CarService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
@RequestMapping("/car")
public class CarController {

    @Autowired
    private CarService carService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView addPage() {
        ModelAndView modelAndView = new ModelAndView("car/home-car-referential");
        modelAndView.addObject("car", new Car());
        List<Car> cars = carService.getCars();
        modelAndView.addObject("cars", cars);
        return modelAndView;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView addingCar(@ModelAttribute("car") Car car, BindingResult result) {
        carService.addCar(car);

        ModelAndView modelAndView = new ModelAndView("car/home-car-referential");
        Car addedCar = car;
        List<Car> cars = carService.getCars();
        modelAndView.addObject("addedCar", addedCar);
        modelAndView.addObject("cars", cars);
        return modelAndView;
    }


}
