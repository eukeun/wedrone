package com.gudi.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {

	Logger logger = LoggerFactory.getLogger(BoardController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		return "home";
	}

	@Controller
	public class Controller0 {

		// map 페이지
		@RequestMapping("/map")
		public String springView(HttpServletRequest request, Model model) throws Exception {

			return "navbar/map";
		}

		// calendar 페이지
		@RequestMapping("/calendar")
		public String springView1(HttpServletRequest request, Model model) throws Exception {

			return "navbar/calendar";
		}

		// news 페이지
		@RequestMapping("/news")
		public String springView2(HttpServletRequest request, Model model) throws Exception {

			return "navbar/news";
		}

		// notice 페이지
		@RequestMapping("/notice")
		public String springView3(HttpServletRequest request, Model model) throws Exception {

			return "navbar/notice";
		}

		// board 페이지
		@RequestMapping("/board")
		public String springView4(HttpServletRequest request, Model model) throws Exception {

			return "navbar/board";
		}
	}

}
