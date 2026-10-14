package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Handler;
import com.amap.api.maps.model.LatLng;
import com.amap.api.trace.TraceLocation;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class x4 extends v4<List<TraceLocation>, List<LatLng>> implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<TraceLocation> f11338h;
    private Handler i;
    private int j;
    private int k;
    private String l;

    public x4(Context context, Handler handler, List<TraceLocation> list, int i, String str, int i2, int i3) {
        super(context, list);
        this.i = null;
        this.j = 0;
        this.k = 0;
        this.f11338h = list;
        this.i = handler;
        this.k = i2;
        this.j = i3;
        this.l = str;
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getIPV6URL() {
        return r3.B(getURL());
    }

    @Override // com.amap.api.mapcore.util.k7
    public String getURL() {
        String str = "key=" + c5.j(this.f11235f);
        String strA = f5.a();
        return "http://restapi.amap.com/v4/grasproad/driving?" + str + ("&ts=" + strA) + ("&scode=" + f5.d(this.f11235f, strA, str));
    }

    @Override // com.amap.api.mapcore.util.k7
    public boolean isSupportIPV6() {
        return true;
    }

    @Override // com.amap.api.mapcore.util.v4
    protected String l() {
        JSONArray jSONArray = new JSONArray();
        long j = 0;
        for (int i = 0; i < this.f11338h.size(); i++) {
            TraceLocation traceLocation = this.f11338h.get(i);
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("x", traceLocation.getLongitude());
                jSONObject.put("y", traceLocation.getLatitude());
                jSONObject.put("ag", (int) traceLocation.getBearing());
                long time = traceLocation.getTime();
                if (i == 0) {
                    if (time == 0) {
                        time = (System.currentTimeMillis() - 10000) / 1000;
                    }
                    jSONObject.put("tm", time / 1000);
                } else if (time != 0) {
                    long j2 = time - j;
                    if (j2 < 1000) {
                        jSONObject.put("tm", 1);
                    } else {
                        jSONObject.put("tm", j2 / 1000);
                    }
                } else {
                    jSONObject.put("tm", 1);
                }
                j = time;
                jSONObject.put("sp", (int) traceLocation.getSpeed());
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            jSONArray.put(jSONObject);
        }
        this.f11236g = getURL() + "&" + jSONArray.toString();
        return jSONArray.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amap.api.mapcore.util.u4
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public List<LatLng> g(String str) throws ft {
        JSONArray jSONArrayOptJSONArray;
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("data") && (jSONArrayOptJSONArray = jSONObject.optJSONObject("data").optJSONArray("points")) != null && jSONArrayOptJSONArray.length() != 0) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    arrayList.add(new LatLng(Double.parseDouble(jSONObjectOptJSONObject.optString("y")), Double.parseDouble(jSONObjectOptJSONObject.optString("x"))));
                }
                return arrayList;
            }
            return arrayList;
        } catch (JSONException e2) {
            e2.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        new ArrayList();
        try {
            try {
                z4.b().e(this.l, this.j, i());
                z4.b().a(this.l).b(this.i);
            } catch (ft e2) {
                z4.b().c(this.i, this.k, e2.a());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
