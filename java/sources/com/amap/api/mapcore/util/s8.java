package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import com.autonavi.amap.api.mapcore.IGLMapState;
import com.autonavi.amap.mapcore.interfaces.IMapConfig;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.util.ArrayList;
import java.util.List;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class s8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static List<r8> f11176a = new ArrayList();

    public s8(Context context, IAMapDelegate iAMapDelegate, boolean z) {
        synchronized (s8.class) {
            for (r8 r8Var : f11176a) {
                if (r8Var != null) {
                    r8Var.d(context, iAMapDelegate, z);
                }
            }
        }
    }

    public Object a(String str) {
        Object objA;
        synchronized (s8.class) {
            for (r8 r8Var : f11176a) {
                if (r8Var != null && (objA = r8Var.a(str)) != null) {
                    return objA;
                }
            }
            return null;
        }
    }

    public void b() {
        synchronized (s8.class) {
            for (r8 r8Var : f11176a) {
                if (r8Var != null) {
                    r8Var.a();
                }
            }
            f11176a.clear();
        }
    }

    public void c(IGLMapState iGLMapState, IMapConfig iMapConfig) {
        synchronized (s8.class) {
            for (r8 r8Var : f11176a) {
                if (r8Var != null) {
                    r8Var.b(iGLMapState, iMapConfig);
                }
            }
        }
    }

    public void d(String str, Object obj) {
        synchronized (s8.class) {
            for (r8 r8Var : f11176a) {
                if (r8Var != null) {
                    r8Var.a(str, obj);
                }
            }
        }
    }

    public void e(GL10 gl10, int i, int i2) {
        synchronized (s8.class) {
            for (r8 r8Var : f11176a) {
                if (r8Var != null) {
                    r8Var.c(gl10, i, i2);
                }
            }
        }
    }

    public void f(GL10 gl10, EGLConfig eGLConfig) {
        synchronized (s8.class) {
            for (r8 r8Var : f11176a) {
                if (r8Var != null) {
                    r8Var.f(gl10, eGLConfig);
                }
            }
        }
    }

    public void g(JSONObject jSONObject) {
        synchronized (s8.class) {
            for (r8 r8Var : f11176a) {
                if (r8Var != null) {
                    r8Var.e(jSONObject);
                }
            }
        }
    }

    public String h() {
        String string;
        synchronized (s8.class) {
            StringBuffer stringBuffer = new StringBuffer();
            for (r8 r8Var : f11176a) {
                if (r8Var != null) {
                    String strB = r8Var.b();
                    if (!TextUtils.isEmpty(strB)) {
                        stringBuffer.append(strB);
                        if (!strB.endsWith(VoiceWakeuperAidl.PARAMS_SEPARATE)) {
                            stringBuffer.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                        }
                    }
                }
            }
            string = stringBuffer.toString();
        }
        return string;
    }
}
