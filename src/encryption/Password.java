package encryption;

import java.util.Base64;

public class Password {

	private static String getEncodedString(String password) {
		return Base64.getEncoder().encodeToString(password.getBytes());
	}

	private static String getDecodedString(String password) {
		return new String(Base64.getMimeDecoder().decode(password));
	}

	public static String encrypt(String password) {
		String p = getEncodedString(password);
		return p;

	}

	public static String decrypt(String password) {
		String p = getDecodedString(password);
		return p;

	}

	public void dec(String password) {
		String p = getDecodedString("NzU3NTU=");
		System.out.println(p);

	}

}
