package klu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {

    // Redirect root to the Hello page
    @GetMapping("/")
    public String defaultPage() {
        return "redirect:/hello"; // Redirect to the hello page
    }

    // Hello page route
    @GetMapping("/hello")
    public ModelAndView helloPage() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("hello"); // Maps to hello.jsp
        return MV;
    }

    // Login page route for User
    @GetMapping("/login")
    public ModelAndView login() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("login");
        return MV;
    }

    // Home page route
    @GetMapping("/home")
    public ModelAndView home() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("home");
        return MV;
    }

    // Signup page route
    @GetMapping("/signup")
    public ModelAndView signup() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("signup");
        return MV;
    }

    // Admin login page route
    @GetMapping("/adminLogin")
    public ModelAndView adminLoginPage() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("adminLogin"); // Maps to adminLogin.jsp
        return MV;
    }

    // Admin login validation
    @PostMapping("/adminLogin")
    public ModelAndView validateAdmin(
            @RequestParam("username") String username,
            @RequestParam("password") String password) {
        ModelAndView MV = new ModelAndView();
        
        // Validate credentials
        if ("admin".equals(username) && "2200090163".equals(password)) {
            MV.setViewName("helloAdmin"); // Redirect to helloAdmin.jsp after successful login
        } else {
            MV.setViewName("adminLogin"); // Redirect back to login page on failure
            MV.addObject("error", "Invalid Username or Password!"); // Add error message to view
        }
        return MV;
    }

    // Recruiter login page route
    @GetMapping("/recruiterLogin")
    public ModelAndView recruiterLoginPage() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("recruiterLogin"); // Maps to recruiterLogin.jsp
        return MV;
    }

    // Recruiter login validation
    @PostMapping("/recruiterLogin")
    public ModelAndView validateRecruiter(
            @RequestParam("username") String username,
            @RequestParam("password") String password) {
        ModelAndView MV = new ModelAndView();

        // Validate recruiter credentials
        if ("boss".equals(username) && "2200090163".equals(password)) {
            MV.setViewName("recruiterDashboard"); // Maps to recruiterDashboard.jsp
        } else {
            MV.setViewName("recruiterLogin"); // Redirect back to recruiter login page on failure
            MV.addObject("error", "Invalid Username or Password!"); // Add error message to view
        }
        return MV;
    }
    
    // User login page route
    @GetMapping("/userLogin")
    public ModelAndView userLoginPage() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("userLogin"); // Maps to userLogin.jsp
        return MV;
    }

    // User login validation
    @PostMapping("/userLogin")
    public ModelAndView validateUser(
            @RequestParam("username") String username,
            @RequestParam("password") String password) {
        ModelAndView MV = new ModelAndView();
        
        // Validate user credentials (For simplicity, you can set these as placeholders or database-backed)
        if ("user".equals(username) && "password123".equals(password)) {
            MV.setViewName("userDashboard"); // Redirect to user dashboard after successful login
        } else {
            MV.setViewName("userLogin"); // Redirect back to user login page on failure
            MV.addObject("error", "Invalid Username or Password!"); // Add error message to view
        }
        return MV;
    }

    // Recruiter dashboard route
    @GetMapping("/recruiterDashboard")
    public ModelAndView recruiterDashboard() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("recruiterDashboard"); // Maps to recruiterDashboard.jsp
        return MV;
    }

    // User dashboard route
    @GetMapping("/userDashboard")
    public ModelAndView userDashboard() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("userDashboard"); // Maps to userDashboard.jsp
        return MV;
    }

    // Admin home page route
    @GetMapping("/helloAdmin")
    public ModelAndView helloAdminPage() {
        ModelAndView MV = new ModelAndView();
        MV.setViewName("helloAdmin"); // Maps to helloAdmin.jsp
        return MV;
    }

    // Logout route (example, can be adjusted based on session or security)
    @GetMapping("/logout")
    public String logout() {
        // Clear the session or perform any logout action here
        return "redirect:/"; // Redirect back to the root or login page
    }
}
