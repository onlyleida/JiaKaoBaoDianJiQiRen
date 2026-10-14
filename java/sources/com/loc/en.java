package com.loc;

import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.google.android.exoplayer2.C;
import com.tencent.open.SocialConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class en extends AMapLocation {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f12812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f12813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f12814f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f12815g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f12816h;
    private int i;
    private String j;
    private int k;
    private String l;
    private JSONObject m;
    private String n;
    private String o;
    private String p;

    public en(String str) {
        super(str);
        this.f12812d = "";
        this.f12815g = null;
        this.f12816h = "";
        this.j = "";
        this.k = 0;
        this.l = "new";
        this.m = null;
        this.n = "";
        this.f12813e = true;
        this.f12814f = String.valueOf(AMapLocationClientOption.GeoLanguage.DEFAULT);
        this.o = "";
        this.p = null;
    }

    private void i(String str) {
        this.n = str;
    }

    private void j(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (String str2 : str.split("\\*")) {
            if (!TextUtils.isEmpty(str2)) {
                String[] strArrSplit = str2.split(",");
                setLongitude(fp.c(strArrSplit[0]));
                setLatitude(fp.c(strArrSplit[1]));
                setAccuracy(fp.e(strArrSplit[2]));
                break;
            }
        }
        this.o = str;
    }

    public final String a() {
        return this.f12815g;
    }

    public final void a(int i) {
        this.k = i;
    }

    public final void a(String str) {
        this.f12815g = str;
    }

    public final void a(JSONObject jSONObject) {
        this.m = jSONObject;
    }

    public final void a(boolean z) {
        this.f12813e = z;
    }

    public final String b() {
        return this.f12816h;
    }

    public final void b(String str) {
        this.f12816h = str;
    }

    public final void b(JSONObject jSONObject) {
        try {
            fi.a(this, jSONObject);
            e(jSONObject.optString("type", this.l));
            d(jSONObject.optString("retype", this.j));
            j(jSONObject.optString(C.CENC_TYPE_cens, this.o));
            g(jSONObject.optString(SocialConstants.PARAM_APP_DESC, this.f12812d));
            c(jSONObject.optString("coord", String.valueOf(this.i)));
            i(jSONObject.optString("mcell", this.n));
            a(jSONObject.optBoolean("isReversegeo", this.f12813e));
            f(jSONObject.optString("geoLanguage", this.f12814f));
            if (fp.a(jSONObject, "poiid")) {
                setBuildingId(jSONObject.optString("poiid"));
            }
            if (fp.a(jSONObject, "pid")) {
                setBuildingId(jSONObject.optString("pid"));
            }
            if (fp.a(jSONObject, "floor")) {
                setFloor(jSONObject.optString("floor"));
            }
            if (fp.a(jSONObject, "flr")) {
                setFloor(jSONObject.optString("flr"));
            }
        } catch (Throwable th) {
            fi.a(th, "AmapLoc", "AmapLoc");
        }
    }

    public final int c() {
        return this.i;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    public final void c(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            i = -1;
        } else if (str.equals("0")) {
            i = 0;
        } else if (str.equals("1")) {
            i = 1;
        } else {
            i = -1;
        }
        this.i = i;
        super.setCoordType(this.i == 0 ? AMapLocation.COORD_TYPE_WGS84 : AMapLocation.COORD_TYPE_GCJ02);
    }

    public final String d() {
        return this.j;
    }

    public final void d(String str) {
        this.j = str;
    }

    public final String e() {
        return this.l;
    }

    public final void e(String str) {
        this.l = str;
    }

    public final JSONObject f() {
        return this.m;
    }

    public final void f(String str) {
        this.f12814f = str;
    }

    public final String g() {
        return this.n;
    }

    public final void g(String str) {
        this.f12812d = str;
    }

    public final en h() {
        String strG = g();
        if (TextUtils.isEmpty(strG)) {
            return null;
        }
        String[] strArrSplit = strG.split(",");
        if (strArrSplit.length != 3) {
            return null;
        }
        en enVar = new en("");
        enVar.setProvider(getProvider());
        enVar.setLongitude(fp.c(strArrSplit[0]));
        enVar.setLatitude(fp.c(strArrSplit[1]));
        enVar.setAccuracy(fp.d(strArrSplit[2]));
        enVar.setCityCode(getCityCode());
        enVar.setAdCode(getAdCode());
        enVar.setCountry(getCountry());
        enVar.setProvince(getProvince());
        enVar.setCity(getCity());
        enVar.setTime(getTime());
        enVar.e(e());
        enVar.c(String.valueOf(c()));
        if (fp.a(enVar)) {
            return enVar;
        }
        return null;
    }

    public final void h(String str) {
        this.p = str;
    }

    public final boolean i() {
        return this.f12813e;
    }

    public final String j() {
        return this.f12814f;
    }

    public final String k() {
        return this.p;
    }

    public final int l() {
        return this.k;
    }

    @Override // com.amap.api.location.AMapLocation
    public final JSONObject toJson(int i) {
        try {
            JSONObject json = super.toJson(i);
            if (i == 1) {
                json.put("retype", this.j);
                json.put(C.CENC_TYPE_cens, this.o);
                json.put("coord", this.i);
                json.put("mcell", this.n);
                json.put(SocialConstants.PARAM_APP_DESC, this.f12812d);
                json.put("address", getAddress());
                if (this.m != null && fp.a(json, "offpct")) {
                    json.put("offpct", this.m.getString("offpct"));
                }
            } else if (i != 2 && i != 3) {
                return json;
            }
            json.put("type", this.l);
            json.put("isReversegeo", this.f12813e);
            json.put("geoLanguage", this.f12814f);
            return json;
        } catch (Throwable th) {
            fi.a(th, "AmapLoc", "toStr");
            return null;
        }
    }

    @Override // com.amap.api.location.AMapLocation
    public final String toStr() {
        return toStr(1);
    }

    @Override // com.amap.api.location.AMapLocation
    public final String toStr(int i) {
        JSONObject json;
        try {
            json = toJson(i);
            json.put("nb", this.p);
        } catch (Throwable th) {
            fi.a(th, "AMapLocation", "toStr part2");
            json = null;
        }
        if (json == null) {
            return null;
        }
        return json.toString();
    }
}
