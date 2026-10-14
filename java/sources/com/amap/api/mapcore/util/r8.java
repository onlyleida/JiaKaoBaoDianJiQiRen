package com.amap.api.mapcore.util;

import android.content.Context;
import com.autonavi.amap.api.mapcore.IGLMapState;
import com.autonavi.amap.mapcore.interfaces.IMapConfig;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public interface r8 {
    Object a(String str);

    void a();

    void a(String str, Object obj);

    String b();

    void b(IGLMapState iGLMapState, IMapConfig iMapConfig);

    void c(GL10 gl10, int i, int i2);

    void d(Context context, IAMapDelegate iAMapDelegate, boolean z);

    void e(JSONObject jSONObject);

    void f(GL10 gl10, EGLConfig eGLConfig);
}
