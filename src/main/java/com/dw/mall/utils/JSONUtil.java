package com.dw.mall.utils;

import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JSONUtil {
	public static String objToJsonString(Object object) {
		JSONObject fromObject = JSONObject.fromObject(object);
		return fromObject.toString();
	}

	public static String arrayToJsonString(Object object, Class objectClass) {
		JSONArray fromObject = JSONArray.fromObject(object);
		return fromObject.toString();
	}

	public static Object jsonStringToBean(String str, Class beanClass) {
		JSONObject fromObject = JSONObject.fromObject(str);
		return JSONObject.toBean(fromObject, beanClass);
	}

	public static List jsonStringToList(String str, Class beanClass) {
		JSONArray fromObject = JSONArray.fromObject(str);
		return (List) JSONArray.toCollection(fromObject, beanClass);
	}
}
