package klu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/student")  // Correct import for @RequestMapping
public class StudentDashboardController {

    @GetMapping("/dashboard")  // Handles GET request for /student/dashboard
    public ModelAndView studentDashboard() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("studentDashboard");  // studentDashboard.jsp view
        return MV;
    }
}
