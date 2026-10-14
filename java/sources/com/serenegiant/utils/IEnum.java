package com.serenegiant.utils;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class IEnum {

    public interface EnumInterface {
        int id();

        String label();

        String name();

        int ordinal();
    }

    public interface EnumInterfaceEx extends EnumInterface {
        void put(String str, JSONObject jSONObject) throws JSONException;

        void put(JSONObject jSONObject) throws JSONException;
    }

    public static <E extends EnumInterface> E as(Class<E> cls, int i) throws IllegalArgumentException {
        for (E e2 : cls.getEnumConstants()) {
            if (e2.id() == i) {
                return e2;
            }
        }
        throw new IllegalArgumentException();
    }

    public static <E extends EnumInterface> String identity(Class<E> cls, String str) {
        String strSubstring = null;
        if (!TextUtils.isEmpty(str)) {
            String upperCase = str.toUpperCase();
            for (E e2 : cls.getEnumConstants()) {
                if (upperCase.startsWith(e2.name().toUpperCase())) {
                    strSubstring = str.substring(e2.name().length() + 1);
                }
            }
        }
        return strSubstring;
    }

    public static JSONObject put(JSONObject jSONObject, String str, EnumInterface enumInterface) throws JSONException {
        jSONObject.put(str, enumInterface.label());
        return jSONObject;
    }

    public static <E extends EnumInterface> E as(Class<E> cls, String str) throws IllegalArgumentException {
        if (!TextUtils.isEmpty(str)) {
            for (E e2 : cls.getEnumConstants()) {
                if (str.equalsIgnoreCase(e2.label())) {
                    return e2;
                }
            }
            str.toUpperCase();
            for (E e3 : cls.getEnumConstants()) {
                if (str.startsWith(e3.name().toUpperCase())) {
                    return e3;
                }
            }
        }
        throw new IllegalArgumentException();
    }

    public static <E extends EnumInterface> E as(Class<E> cls, int i, String str) throws IllegalArgumentException {
        try {
            return (E) as(cls, i);
        } catch (IllegalArgumentException unused) {
            return (E) as(cls, str);
        }
    }

    public static <E extends EnumInterface> E as(Class<E> cls, String str, int i) throws IllegalArgumentException {
        try {
            return (E) as(cls, str);
        } catch (IllegalArgumentException unused) {
            return (E) as(cls, i);
        }
    }
}
