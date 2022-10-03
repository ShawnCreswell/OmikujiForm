package com.shawn.formdemo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class MainController {

    @RequestMapping("/")
    public String index(){
        return "index.jsp";
    }

    @RequestMapping("/login")
    public String login(
            @RequestParam("number")Integer number,
            @RequestParam("city")String city,
            @RequestParam("person")String person,
            @RequestParam("hobby")String hobby,
            @RequestParam("thing")String thing,
            @RequestParam("nice")String nice,
            HttpSession session
    ){
        session.setAttribute("number", number);
        session.setAttribute("city", city);
        session.setAttribute("person", person);
        session.setAttribute("hobby", hobby);
        session.setAttribute("thing", thing);
        session.setAttribute("nice", nice);
        return "redirect:/display";
    }

    @GetMapping("/display")
    public String display(HttpSession session, Model model){
        model.addAttribute("number", session.getAttribute("number"));
        model.addAttribute("city", session.getAttribute("city"));
        model.addAttribute("person", session.getAttribute("person"));
        model.addAttribute("hobby", session.getAttribute("hobby"));
        model.addAttribute("thing", session.getAttribute("thing"));
        model.addAttribute("nice", session.getAttribute("nice"));
        return "show.jsp";
    }
}
