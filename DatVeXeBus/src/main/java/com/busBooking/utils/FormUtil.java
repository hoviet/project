package com.busBooking.utils;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;
import org.apache.commons.beanutils.BeanUtils;

public class FormUtil {

	public static <T> T toModel(Class<T> clazz, HttpServletRequest req) {
		T object = null;
		try {
			object = clazz.newInstance();
			BeanUtils.populate(object, req.getParameterMap());
		} catch (InstantiationException | IllegalAccessException | InvocationTargetException e) {
			System.out.print(e.getMessage());
		}
		return object;
	}
}
