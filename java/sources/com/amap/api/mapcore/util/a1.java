package com.amap.api.mapcore.util;

import android.content.Context;
import com.amap.api.maps.AMapException;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a1<T, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected T f10431a;
    protected int b = 3;
    protected Context c;

    public a1(Context context, T t) {
        c(context, t);
    }

    private void c(Context context, T t) {
        this.c = context;
        this.f10431a = t;
    }

    protected abstract String a();

    protected abstract JSONObject b(d5.a aVar);

    protected abstract V d(JSONObject jSONObject) throws AMapException;

    protected abstract Map<String, String> e();

    public V f() throws AMapException {
        if (this.f10431a != null) {
            return g();
        }
        return null;
    }

    protected V g() throws AMapException {
        int i = 0;
        V vD = null;
        d5.a aVarA = null;
        while (i < this.b) {
            try {
                aVarA = d5.a(this.c, r3.u0(), a(), e());
                vD = d(b(aVarA));
                i = this.b;
            } catch (Throwable th) {
                e6.r(th, "AbstractProtocalHandler", "getDataMayThrow AMapException");
                th.printStackTrace();
                i++;
                if (i < this.b) {
                    continue;
                } else {
                    if (aVarA != null && aVarA.f10661a != null) {
                        throw new AMapException(aVarA.f10661a);
                    }
                    vD = null;
                }
            }
        }
        return vD;
    }
}
