package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
@i6(a = "update_item", b = true)
public class m0 extends p0 {
    private String n = "";
    private Context o;

    public m0() {
    }

    public static String k(JSONObject jSONObject, String str) throws JSONException {
        return (jSONObject == null || !jSONObject.has(str) || "[]".equals(jSONObject.getString(str))) ? "" : jSONObject.optString(str).trim();
    }

    protected void l() {
        this.f11058d = r3.p0(this.o) + this.m + ".zip.tmp";
    }

    public void m(String str) {
        this.n = str;
    }

    public String n() {
        return this.n;
    }

    public void o(String str) {
        JSONObject jSONObject;
        if (str != null) {
            try {
                if ("".equals(str) || (jSONObject = new JSONObject(str).getJSONObject("file")) == null) {
                    return;
                }
                this.f11057a = jSONObject.optString("title");
                this.c = jSONObject.optString("code");
                this.b = jSONObject.optString("url");
                this.f11058d = jSONObject.optString("fileName");
                this.f11060f = jSONObject.optLong("lLocalLength");
                this.f11061g = jSONObject.optLong("lRemoteLength");
                this.l = jSONObject.optInt("mState");
                this.f11059e = jSONObject.optString("version");
                this.f11062h = jSONObject.optString("localPath");
                this.n = jSONObject.optString("vMapFileNames");
                this.i = jSONObject.optInt("isSheng");
                this.j = jSONObject.optInt("mCompleteCode");
                this.k = jSONObject.optString("mCityCode");
                String strK = k(jSONObject, "pinyin");
                this.m = strK;
                if ("".equals(strK)) {
                    String str2 = this.b;
                    String strSubstring = str2.substring(str2.lastIndexOf("/") + 1);
                    this.m = strSubstring.substring(0, strSubstring.lastIndexOf("."));
                }
            } catch (Throwable th) {
                e6.r(th, "UpdateItem", "readFileToJSONObject");
                th.printStackTrace();
            }
        }
    }

    public void p() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("title", this.f11057a);
            jSONObject2.put("code", this.c);
            jSONObject2.put("url", this.b);
            jSONObject2.put("fileName", this.f11058d);
            jSONObject2.put("lLocalLength", this.f11060f);
            jSONObject2.put("lRemoteLength", this.f11061g);
            jSONObject2.put("mState", this.l);
            jSONObject2.put("version", this.f11059e);
            jSONObject2.put("localPath", this.f11062h);
            String str = this.n;
            if (str != null) {
                jSONObject2.put("vMapFileNames", str);
            }
            jSONObject2.put("isSheng", this.i);
            jSONObject2.put("mCompleteCode", this.j);
            jSONObject2.put("mCityCode", this.k);
            jSONObject2.put("pinyin", this.m);
            jSONObject.put("file", jSONObject2);
            File file = new File(this.f11058d + ".dt");
            file.delete();
            OutputStreamWriter outputStreamWriter = null;
            try {
                try {
                    OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(file, true), "utf-8");
                    try {
                        outputStreamWriter2.write(jSONObject.toString());
                        try {
                            outputStreamWriter2.close();
                        } catch (IOException e2) {
                            e = e2;
                            e.printStackTrace();
                        }
                    } catch (IOException e3) {
                        e = e3;
                        outputStreamWriter = outputStreamWriter2;
                        e6.r(e, "UpdateItem", "saveJSONObjectToFile");
                        e.printStackTrace();
                        if (outputStreamWriter != null) {
                            try {
                                outputStreamWriter.close();
                            } catch (IOException e4) {
                                e = e4;
                                e.printStackTrace();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        outputStreamWriter = outputStreamWriter2;
                        if (outputStreamWriter != null) {
                            try {
                                outputStreamWriter.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e6) {
                e = e6;
            }
        } catch (Throwable th3) {
            e6.r(th3, "UpdateItem", "saveJSONObjectToFile parseJson");
            th3.printStackTrace();
        }
    }

    public m0(OfflineMapCity offlineMapCity, Context context) {
        this.o = context;
        this.f11057a = offlineMapCity.getCity();
        this.c = offlineMapCity.getAdcode();
        this.b = offlineMapCity.getUrl();
        this.f11061g = offlineMapCity.getSize();
        this.f11059e = offlineMapCity.getVersion();
        this.k = offlineMapCity.getCode();
        this.i = 0;
        this.l = offlineMapCity.getState();
        this.j = offlineMapCity.getcompleteCode();
        this.m = offlineMapCity.getPinyin();
        l();
    }

    public m0(OfflineMapProvince offlineMapProvince, Context context) {
        this.o = context;
        this.f11057a = offlineMapProvince.getProvinceName();
        this.c = offlineMapProvince.getProvinceCode();
        this.b = offlineMapProvince.getUrl();
        this.f11061g = offlineMapProvince.getSize();
        this.f11059e = offlineMapProvince.getVersion();
        this.i = 1;
        this.l = offlineMapProvince.getState();
        this.j = offlineMapProvince.getcompleteCode();
        this.m = offlineMapProvince.getPinyin();
        l();
    }
}
