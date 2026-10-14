package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.autonavi.amap.mapcore.Inner_3dMap_location;
import com.google.android.exoplayer2.C;
import com.tencent.open.SocialConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class kj extends Inner_3dMap_location {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f10973a;
    private String b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f10974d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f10975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private JSONObject f10976f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f10977g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f10978h;
    private String i;
    private String j;

    public kj(String str) {
        super(str);
        this.f10973a = null;
        this.b = "";
        this.f10974d = "";
        this.f10975e = "new";
        this.f10976f = null;
        this.f10977g = "";
        this.f10978h = true;
        this.i = "";
        this.j = null;
    }

    public final String b() {
        return this.f10973a;
    }

    public final void c(String str) {
        this.f10973a = str;
    }

    public final String d() {
        return this.b;
    }

    public final void e(String str) {
        this.b = str;
    }

    public final int f() {
        return this.c;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002d  */
    public final void g(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            i = -1;
        } else if (getProvider().equals("gps")) {
            this.c = 0;
            return;
        } else if (str.equals("0")) {
            this.c = 0;
            return;
        } else if (str.equals("1")) {
            i = 1;
        } else {
            i = -1;
        }
        this.c = i;
    }

    public final String h() {
        return this.f10974d;
    }

    public final void i(String str) {
        this.f10974d = str;
    }

    public final JSONObject j() {
        return this.f10976f;
    }

    public final void k(String str) {
        this.desc = str;
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_location
    public final void setFloor(String str) {
        if (!TextUtils.isEmpty(str)) {
            str = str.replace("F", "");
            try {
                Integer.parseInt(str);
            } catch (Throwable th) {
                b9.b(th, "MapLocationModel", "setFloor");
                str = null;
            }
        }
        this.floor = str;
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_location
    public final JSONObject toJson(int i) {
        try {
            JSONObject json = super.toJson(i);
            if (i == 1) {
                json.put("retype", this.f10974d);
                json.put(C.CENC_TYPE_cens, this.i);
                json.put("poiid", this.buildingId);
                json.put("floor", this.floor);
                json.put("coord", this.c);
                json.put("mcell", this.f10977g);
                json.put(SocialConstants.PARAM_APP_DESC, this.desc);
                json.put("address", getAddress());
                if (this.f10976f != null && g9.j(json, "offpct")) {
                    json.put("offpct", this.f10976f.getString("offpct"));
                }
            } else if (i != 2 && i != 3) {
                return json;
            }
            json.put("type", this.f10975e);
            json.put("isReversegeo", this.f10978h);
            return json;
        } catch (Throwable th) {
            b9.b(th, "MapLocationModel", "toStr");
            return null;
        }
    }

    @Override // com.autonavi.amap.mapcore.Inner_3dMap_location
    public final String toStr(int i) {
        JSONObject json;
        try {
            json = super.toJson(i);
            json.put("nb", this.j);
        } catch (Throwable th) {
            b9.b(th, "MapLocationModel", "toStr part2");
            json = null;
        }
        if (json == null) {
            return null;
        }
        return json.toString();
    }
}
