package fr.digicar.backoffice.controller;

import fr.digicar.backoffice.service.TarifService;
import fr.digicar.backoffice.service.TokenService;
import fr.digicar.backoffice.service.UserService;
import fr.digicar.model.Tarif;
import fr.digicar.model.Token;
import fr.digicar.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class InvoicingController {
    @Autowired
    private UserService userService;
    private TokenService tokenService;

    //redirecting to list of pricing
    @RequestMapping(value = "/invoices", method = RequestMethod.GET)
    public ModelAndView addPricingPage() {
       List<User> users= userService.searchUsers();
       List<Token> tokens=tokenService.getTokens();
        ModelAndView modelAndView = new ModelAndView("invoices");
        modelAndView.addObject("users",users);
        modelAndView.addObject("tokens",tokens);
        return modelAndView;
    }
}
