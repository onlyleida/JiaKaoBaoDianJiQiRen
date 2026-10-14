package com.loc;

import com.amap.api.maps.model.MyLocationStyle;
import java.util.Objects;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class et {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12846a = 0;
    public double b = 0.0d;
    public double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f12847d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12848e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12849f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12850g = 63;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12851h = 0;

    public final String a() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            jSONObject.put("time", this.f12847d);
            jSONObject.put("lon", this.c);
            jSONObject.put("lat", this.b);
            jSONObject.put("radius", this.f12848e);
            jSONObject.put(MyLocationStyle.LOCATION_TYPE, this.f12846a);
            jSONObject.put("reType", this.f12850g);
            jSONObject.put("reSubType", this.f12851h);
        } catch (Throwable unused) {
            jSONObject = null;
        }
        return jSONObject == null ? "" : jSONObject.toString();
    }

    public final void a(JSONObject jSONObject) {
        try {
            this.b = jSONObject.optDouble("lat", this.b);
            this.c = jSONObject.optDouble("lon", this.c);
            this.f12846a = jSONObject.optInt(MyLocationStyle.LOCATION_TYPE, this.f12846a);
            this.f12850g = jSONObject.optInt("reType", this.f12850g);
            this.f12851h = jSONObject.optInt("reSubType", this.f12851h);
            this.f12848e = jSONObject.optInt("radius", this.f12848e);
            this.f12847d = jSONObject.optLong("time", this.f12847d);
        } catch (Throwable th) {
            fi.a(th, "CoreUtil", "transformLocation");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && et.class == obj.getClass()) {
            et etVar = (et) obj;
            if (this.f12846a == etVar.f12846a && Double.compare(etVar.b, this.b) == 0 && Double.compare(etVar.c, this.c) == 0 && this.f12847d == etVar.f12847d && this.f12848e == etVar.f12848e && this.f12849f == etVar.f12849f && this.f12850g == etVar.f12850g && this.f12851h == etVar.f12851h) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f12846a), Double.valueOf(this.b), Double.valueOf(this.c), Long.valueOf(this.f12847d), Integer.valueOf(this.f12848e), Integer.valueOf(this.f12849f), Integer.valueOf(this.f12850g), Integer.valueOf(this.f12851h));
    }
}
