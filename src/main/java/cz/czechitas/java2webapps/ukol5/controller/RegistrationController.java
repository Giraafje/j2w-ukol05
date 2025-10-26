package cz.czechitas.java2webapps.ukol5.controller;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
@RequestMapping("/")
public class RegistrationController {

  @GetMapping("")
  public ModelAndView formular() {
    ModelAndView modelAndView = new ModelAndView("formular"); //path to the template
    modelAndView.addObject("form", new RegistrationForm());
    return modelAndView;
  }

  @PostMapping("")
  public Object form(@Valid @ModelAttribute("form") RegistrationForm form, BindingResult bindingResult) {
    if (form.getAge() < 9 || form.getAge() > 15) {
      bindingResult.rejectValue("dateOfBirth", "error.dateOfBirth", "Věk musí být mezi 9 a 15 lety.");
    }

    if (bindingResult.hasErrors()) {
      return "/formular";
    }

    return new ModelAndView("/confirmation")
        .addObject("email", form.getEmail());
  }

}
