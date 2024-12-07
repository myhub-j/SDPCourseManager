package klu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

    // View Available Placements
    @GetMapping("/student/viewPlacements")
    public ModelAndView viewPlacements() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewPlacements"); // This maps to /WEB-INF/views/viewPlacements.jsp
        return mv;
    }

    // Apply for Placement
    @GetMapping("/student/applyPlacement")
    public ModelAndView applyPlacement() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("applyPlacement"); // This maps to /WEB-INF/views/applyPlacement.jsp
        return mv;
    }

    // View Applied Placements
    @GetMapping("/student/viewAppliedPlacements")
    public ModelAndView viewAppliedPlacements() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewAppliedPlacements"); // This maps to /WEB-INF/views/viewAppliedPlacements.jsp
        return mv;
    }

    // Update Profile
    @GetMapping("/student/updateProfile")
    public ModelAndView updateProfile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updateProfile"); // This maps to /WEB-INF/views/updateProfile.jsp
        return mv;
    }

    // View Placement Notifications
    @GetMapping("/student/viewNotifications")
    public ModelAndView viewNotifications() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewNotifications"); // This maps to /WEB-INF/views/viewNotifications.jsp
        return mv;
    }

    // Track Application Status
    @GetMapping("/student/trackApplicationStatus")
    public ModelAndView trackApplicationStatus() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("trackApplicationStatus"); // This maps to /WEB-INF/views/trackApplicationStatus.jsp
        return mv;
    }

    // Download Placement Brochure
    @GetMapping("/student/downloadBrochure")
    public ModelAndView downloadBrochure() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("downloadBrochure"); // This maps to /WEB-INF/views/downloadBrochure.jsp
        return mv;
    }

    // View Job Insights
    @GetMapping("/student/viewJobInsights")
    public ModelAndView viewJobInsights() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewJobInsights"); // This maps to /WEB-INF/views/viewJobInsights.jsp
        return mv;
    }

    // Log Out
    @GetMapping("/user/logout")
    public String logout() {
        // Handle logout and redirect to login page
        return "redirect:/login"; // Redirect to the login page after logout
    }
}
