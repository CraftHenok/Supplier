package com.erp.cloud.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
	
	public static String convertSqlTimestampToERPCloudFormat(String lastRun) {

		SimpleDateFormat simpleInDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		SimpleDateFormat simpleOutDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS+05:30");
		String updatedDate = null;
		try {
			Date date = simpleInDateFormat.parse(lastRun);
			updatedDate = simpleOutDateFormat.format(date);
		} catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
		System.out.println("Date Conversion" + updatedDate);
		return updatedDate;
	
	}

}
