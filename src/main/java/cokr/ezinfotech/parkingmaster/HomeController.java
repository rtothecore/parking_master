package cokr.ezinfotech.parkingmaster;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.json.XML;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cokr.ezinfotech.parkingmaster.dao.AirVo;
import cokr.ezinfotech.parkingmaster.dao.FestVo;
import cokr.ezinfotech.parkingmaster.dao.WeatherVo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
        
		return "home";
	}
	
	/**
	 * Get weather data with date, time, nx, ny info
	 */
	@RequestMapping(value = "/getWeatherData", method = RequestMethod.POST)
	public @ResponseBody WeatherVo getWeatherData(@RequestBody WeatherVo wv, HttpSession session) {
		logger.info("Get weather data with date, time, nx, ny info");
		
		StringBuilder urlBuilder = new StringBuilder("http://newsky2.kma.go.kr/service/SecndSrtpdFrcstInfoService2/ForecastGrib"); /*URL*/
        try {
        	urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=73Jjl5lZRvBRKkGsPnGmZ7EL9JtwsWNi3hhCIN8cpVJzMdRRgyzntwz2lHmTKeR1tp7NWzoihNGGazcDEFgh8w%3D%3D");
	        urlBuilder.append("&" + URLEncoder.encode("base_date", "UTF-8") + "=" + URLEncoder.encode(wv.getToday(), "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("base_time", "UTF-8") + "=" + URLEncoder.encode(wv.getBase_time(), "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("nx", "UTF-8") + "=" + URLEncoder.encode(wv.get_nx(), "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("ny", "UTF-8") + "=" + URLEncoder.encode(wv.get_ny(), "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("10", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("_type", "UTF-8") + "=" + URLEncoder.encode("json", "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} /*Service Key*/
        
        URL url = null;
		try {
			url = new URL(urlBuilder.toString());
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        HttpURLConnection conn = null;
		try {
			conn = (HttpURLConnection) url.openConnection();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			conn.setRequestMethod("GET");
		} catch (ProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        conn.setRequestProperty("Content-type", "application/json");
        try {
			System.out.println("Response code: " + conn.getResponseCode());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        BufferedReader rd = null;
        try {
			if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			    rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
			    rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        StringBuilder sb = new StringBuilder();
        String line;
        try {
			while ((line = rd.readLine()) != null) {
			    sb.append(line);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			rd.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        conn.disconnect();
        System.out.println(sb.toString());    
		
        wv.setResult(sb.toString());
        return wv;
	}
	
	/**
	 * Get air data with sido info
	 */
	@RequestMapping(value = "/getAirData", method = RequestMethod.POST)
	public @ResponseBody AirVo getAirData(@RequestBody AirVo av, HttpSession session) {
		logger.info("Get air data with sido info");
		
		StringBuilder urlBuilder = new StringBuilder("http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty"); /*URL*/
        try {
			urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=73Jjl5lZRvBRKkGsPnGmZ7EL9JtwsWNi3hhCIN8cpVJzMdRRgyzntwz2lHmTKeR1tp7NWzoihNGGazcDEFgh8w%3D%3D");
			urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
	        urlBuilder.append("&" + URLEncoder.encode("sidoName","UTF-8") + "=" + URLEncoder.encode(av.getSido(), "UTF-8")); /*시도 이름 (서울, 부산, 대구, 인천, 광주, 대전, 울산, 경기, 강원, 충북, 충남, 전북, 전남, 경북, 경남, 제주, 세종)*/
	        urlBuilder.append("&" + URLEncoder.encode("ver","UTF-8") + "=" + URLEncoder.encode("1.3", "UTF-8"));
	        urlBuilder.append("&" + URLEncoder.encode("_returnType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} /*Service Key*/
        
        URL url = null;
		try {
			url = new URL(urlBuilder.toString());
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        HttpURLConnection conn = null;
		try {
			conn = (HttpURLConnection) url.openConnection();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			conn.setRequestMethod("GET");
		} catch (ProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        conn.setRequestProperty("Content-type", "application/json");
        try {
			System.out.println("Response code: " + conn.getResponseCode());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        BufferedReader rd = null;
        try {
			if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			    rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			} else {
			    rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        StringBuilder sb = new StringBuilder();
        String line;
        try {
			while ((line = rd.readLine()) != null) {
			    sb.append(line);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			rd.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        conn.disconnect();
        System.out.println(sb.toString()); 
		
        av.setResult(sb.toString());
        return av;
	}
	
	/**
	 * Get air data with sido info
	 */
	@RequestMapping(value = "/getFestData", method = RequestMethod.POST)
	public @ResponseBody FestVo getFestData(@RequestBody FestVo fv, HttpSession session) {
		logger.info("Get Festival data with sido info");
		
		StringBuilder urlBuilder = new StringBuilder("http://210.99.248.79/rest/FestivalInquiryService/getFestivalList"); /*URL*/
        try {
			urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=73Jjl5lZRvBRKkGsPnGmZ7EL9JtwsWNi3hhCIN8cpVJzMdRRgyzntwz2lHmTKeR1tp7NWzoihNGGazcDEFgh8w%3D%3D");
			urlBuilder.append("&" + URLEncoder.encode("startPage","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*시작 페이지*/
	        urlBuilder.append("&" + URLEncoder.encode("pageSize","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*페이지 사이즈*/
	        //urlBuilder.append("&" + URLEncoder.encode("authApiKey","UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*요청키*/
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} /*Service Key*/
        
        URL url = null;
		try {
			url = new URL(urlBuilder.toString());
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        HttpURLConnection conn = null;
		try {
			conn = (HttpURLConnection) url.openConnection();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			conn.setRequestMethod("GET");
		} catch (ProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        conn.setRequestProperty("Content-type", "application/json");
        BufferedReader rd = null;
        StringBuilder sb = null;
        try {
			System.out.println("Response code: " + conn.getResponseCode());
			
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        
	        sb = new StringBuilder();
	        String line;
	        while ((line = rd.readLine()) != null) {
	            sb.append(line);
	        }
	        rd.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         
        conn.disconnect();
        System.out.println(sb.toString());
        
        // convert XML to JSON
        org.json.JSONObject xmlJSONObj = XML.toJSONObject(sb.toString());
        String xmlJSONObjString = xmlJSONObj.toString();

        fv.setResult(xmlJSONObjString);
        return fv;
	}
	
}
