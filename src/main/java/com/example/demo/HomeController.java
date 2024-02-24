package com.example.demo;

import java.io.BufferedReader;
import java.io.EOFException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.reactive.function.client.WebClientSsl;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.client.WebClient;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import jakarta.servlet.http.HttpServletRequest;
import model.Person;
import reactor.core.publisher.Mono;

@Controller
public class HomeController {

	Person[] testCase;

	@GetMapping("users")
	public String getUsers(ModelMap map) {

		requestGet(map);

		if (map.get("error") == null) {
			map.addAttribute("userList", testCase);
			map.addAttribute("id", "success");
			return "users";

		} else {
			System.out.println("error");

			System.out.println(map.get("error"));
			System.out.println(map.get("errorInfo"));
			return "users";
		}
	}

	@Autowired
	private WebClient.Builder webClientBuilder;

	@PostMapping("/submitForm")
	public String handleSubmitForm(HttpServletRequest requestJpa, Model model) {

		String name = requestJpa.getParameter("name");
		int age = Integer.parseInt(requestJpa.getParameter("age"));
		String phoneNumber = requestJpa.getParameter("phone");
		String address = requestJpa.getParameter("address");

		String url = "https://8e7c6b8a-fc46-4674-a529-4ebec57295d3.mock.pstmn.io/customers";
		String json = "{\"name\":\"" + name + "\",\"age\":" + age + ",\"phoneNumber\":\"" + phoneNumber
				+ "\",\"address\":\"" + address + "\"}";

		WebClient webClient = webClientBuilder.build();

		Mono<String> response = webClient.post().uri(url).contentType(MediaType.APPLICATION_JSON)
				.body(BodyInserters.fromValue(json)).retrieve().bodyToMono(String.class);

		// Procesar la respuesta si es necesario
		response.subscribe(System.out::println);

		System.out.println(name);

		model.addAttribute("response", response.block());

		return "result"; // Nombre de la vista JSP para mostrar después de procesar el formulario

	}

	@GetMapping("form")
	public String form(ModelMap map) {

		return "form";
	}

	@GetMapping("home")
	public String home(ModelMap map) {

		return "home";
	}

	public ModelMap requestGet(ModelMap map) {

		try {

//			String output = "[{\"name\":\"Juan Martinez\",\"age\":25,\"phoneNumber\":\"3128743298\",\"address\":\"Calle 24 # 32A - 56Sur\"},{\"name\":\"Cristian Gonzalez\",\"age\":28,\"phoneNumber\":\"3128753298\",\"address\":\"Calle 53 # 31A – 56\"}]";

			URL url = new URL("https://8e7c6b8a-fc46-4674-a529-4ebec57295d3.mock.pstmn.io/customers");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");
			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP Error code : " + conn.getResponseCode());
			}
			InputStreamReader in = new InputStreamReader(conn.getInputStream());
			BufferedReader br = new BufferedReader(in);
			String output;
			while ((output = br.readLine()) != null) {
				System.out.println(output);
			final GsonBuilder gsonBuilder = new GsonBuilder();
			final Gson gson = gsonBuilder.create();

			testCase = gson.fromJson(output, Person[].class);

			}

			conn.disconnect();

			System.out.println("test");

		} catch (Exception ex) {
			System.out.println("Exception general " + ex);
			map.addAttribute("id", "error");
			map.addAttribute("error", ex);
			map.addAttribute("errorInfo", "java.io.EOFException");
			return map;
		}
		System.out.println("test");

		return map;

	}
}
