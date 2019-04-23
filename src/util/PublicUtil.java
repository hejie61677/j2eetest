package util;

import javax.servlet.http.Cookie;

public class PublicUtil {
	private static String name = "";
	private static String value = "";
	
	public static void main(String[] args) {
		Cookie c = new Cookie(name, value);
		c.setMaxAge(24*60*60);

	}

}
