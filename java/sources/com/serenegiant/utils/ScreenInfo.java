package com.serenegiant.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class ScreenInfo {
    @SuppressLint({"NewApi"})
    public static JSONObject get(Activity activity) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            Display defaultDisplay = activity.getWindowManager().getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            try {
                jSONObject.put("widthPixels", displayMetrics.widthPixels);
            } catch (Exception e2) {
                jSONObject.put("widthPixels", e2.getMessage());
            }
            try {
                jSONObject.put("heightPixels", displayMetrics.heightPixels);
            } catch (Exception e3) {
                jSONObject.put("heightPixels", e3.getMessage());
            }
            try {
                jSONObject.put("density", displayMetrics.density);
            } catch (Exception e4) {
                jSONObject.put("density", e4.getMessage());
            }
            try {
                jSONObject.put("densityDpi", displayMetrics.densityDpi);
            } catch (Exception e5) {
                jSONObject.put("densityDpi", e5.getMessage());
            }
            try {
                jSONObject.put("scaledDensity", displayMetrics.scaledDensity);
            } catch (Exception e6) {
                jSONObject.put("scaledDensity", e6.getMessage());
            }
            try {
                jSONObject.put("xdpi", displayMetrics.xdpi);
            } catch (Exception e7) {
                jSONObject.put("xdpi", e7.getMessage());
            }
            try {
                jSONObject.put("ydpi", displayMetrics.ydpi);
            } catch (Exception e8) {
                jSONObject.put("ydpi", e8.getMessage());
            }
            try {
                Point point = new Point();
                if (BuildCheck.isAndroid4_2()) {
                    defaultDisplay.getRealSize(point);
                    jSONObject.put("width", point.x);
                    jSONObject.put("height", point.y);
                } else {
                    jSONObject.put("width", defaultDisplay.getWidth());
                    jSONObject.put("height", defaultDisplay.getHeight());
                }
            } catch (Exception e9) {
                jSONObject.put("size", e9.getMessage());
            }
        } catch (Exception e10) {
            jSONObject.put("EXCEPTION", e10.getMessage());
        }
        return jSONObject;
    }
}
