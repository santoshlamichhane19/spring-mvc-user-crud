package org.learning.user_management.controller;

import org.learning.user_management.service.UserService;
import org.learning.user_management.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    public UserService userService;

    @RequestMapping(value = {"/", "/home"})
    public String getHomePage() {
        return "home";

    }

    @RequestMapping(value = "add_user", method = RequestMethod.POST)
    public String userRegister(@ModelAttribute User user) {
        userService.createUser(user);
        return "redirect:/list_user";

    }

    @RequestMapping(value = "list_user", method = RequestMethod.GET)
    public String userList(Model model) {
        List<User> users = userService.getAllUser();
        model.addAttribute("users", users);
        return "userlist";

    }

    @RequestMapping(value = "edit_user", method = RequestMethod.GET)
    public String getUserForEdit(@RequestParam("id") String id, Model model) {
        User user = userService.getSingleUser(Integer.parseInt(id));
        model.addAttribute("user", user);
        return "editlist";

    }

    @RequestMapping(value = "update_user", method = RequestMethod.POST)
    public String getUserForUpdate(@ModelAttribute User user) {
        userService.updateUser(user);
        return "redirect:/list_user";

    }

    @RequestMapping(value = "delete_user", method = RequestMethod.GET)
    public String deleteUser(@RequestParam("id") String id) {
        userService.deleteUser(Integer.parseInt(id));
        return "redirect:/list_user";

    }

}