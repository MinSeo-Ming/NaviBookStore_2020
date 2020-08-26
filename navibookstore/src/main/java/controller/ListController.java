package controller;

 

import java.util.List;

 

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

 

import biz.book.service.BookService;

import biz.book.vo.BookVO;

 

@Controller

public class ListController {

	@Autowired

	BookService service;

 

	@RequestMapping("/list2.do")

	public ModelAndView view(String kind, String bookname) {

		ModelAndView mav = new ModelAndView();

		mav.addObject("books", service.searchBook("bookname", "¹«¾ù"));

		mav.setViewName("list2");

 

		return mav;

	}

}