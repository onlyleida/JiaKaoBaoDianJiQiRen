package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.amap.api.maps.model.CustomMapStyleOptions;
import com.amap.api.maps.model.MyTrafficStyle;
import com.autonavi.amap.mapcore.AMapEngineUtils;
import com.autonavi.base.amap.api.mapcore.IAMapDelegate;
import com.autonavi.base.amap.mapcore.FileUtil;
import com.autonavi.base.amap.mapcore.MapConfig;
import com.autonavi.base.amap.mapcore.tools.GLFileUtil;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b0 implements j2.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IAMapDelegate f10482a;
    private CustomMapStyleOptions b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f10487h;
    private boolean n;
    private boolean o;
    private j2 s;
    private j2 t;
    private boolean w;
    private a y;
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10483d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10484e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f10485f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10486g = 1;
    private byte[] i = null;
    private byte[] j = null;
    private byte[] k = null;
    private byte[] l = null;
    private byte[] m = null;
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private byte[] u = null;
    private byte[] v = null;
    private MyTrafficStyle x = new MyTrafficStyle();

    public interface a {
        void a(byte[] bArr);
    }

    public b0(IAMapDelegate iAMapDelegate, Context context, boolean z) {
        this.n = false;
        this.o = false;
        this.w = false;
        this.f10482a = iAMapDelegate;
        this.f10487h = context;
        this.n = false;
        this.o = false;
        this.w = z;
    }

    private void d(String str, boolean z) {
        int iB = !TextUtils.isEmpty(str) ? p2.b(str) : Integer.MIN_VALUE;
        IAMapDelegate iAMapDelegate = this.f10482a;
        if (iAMapDelegate == null || iAMapDelegate.getGLMapEngine() == null) {
            return;
        }
        if (this.k == null) {
            this.k = FileUtil.readFileContentsFromAssets(this.f10487h, AMapEngineUtils.MAP_MAP_ASSETS_NAME + File.separator + AMapEngineUtils.MAP_MAP_ASSETS_BACKGROUND_NAME);
        }
        byte[] bArr = this.k;
        if (bArr != null) {
            if (z) {
                boolean z2 = iB == Integer.MIN_VALUE;
                this.f10482a.getGLMapEngine().setBackgroundTexture(this.f10486g, r3.X((byte[]) bArr.clone(), 0, iB, z2));
            }
            iB = 0;
            this.f10482a.getGLMapEngine().setBackgroundTexture(this.f10486g, r3.X((byte[]) bArr.clone(), 0, iB, z2));
        }
    }

    public static byte[] e(byte[] bArr) {
        GZIPInputStream gZIPInputStream;
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            try {
                byte[] bArr2 = new byte[256];
                while (true) {
                    int i = gZIPInputStream.read(bArr2);
                    if (i < 0) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        GLFileUtil.closeQuietly(byteArrayOutputStream);
                        GLFileUtil.closeQuietly(byteArrayInputStream);
                        GLFileUtil.closeQuietly(gZIPInputStream);
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i);
                }
            } catch (Throwable th) {
                th = th;
                try {
                    r3.J(th);
                    th.printStackTrace();
                    return null;
                } finally {
                    GLFileUtil.closeQuietly(byteArrayOutputStream);
                    GLFileUtil.closeQuietly(byteArrayInputStream);
                    GLFileUtil.closeQuietly(gZIPInputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            gZIPInputStream = null;
        }
    }

    private void g(byte[] bArr) {
        n2 n2VarC;
        JSONObject jSONObjectOptJSONObject;
        if (bArr == null || (n2VarC = p2.c(bArr)) == null || n2VarC.a() == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(n2VarC.a());
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("bg");
            String strOptString = null;
            boolean zOptBoolean = true;
            if (jSONObjectOptJSONObject2 != null) {
                zOptBoolean = jSONObjectOptJSONObject2.optBoolean("visible", true);
                strOptString = jSONObjectOptJSONObject2.optString("lineColor", null);
            }
            d(strOptString, zOptBoolean);
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("traffic");
            if (jSONObjectOptJSONObject3 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject3.optJSONObject("multiFillColors")) == null) {
                return;
            }
            int iB = p2.b(jSONObjectOptJSONObject.optString("smooth"));
            int iB2 = p2.b(jSONObjectOptJSONObject.optString("slow"));
            int iB3 = p2.b(jSONObjectOptJSONObject.optString("congested"));
            int iB4 = p2.b(jSONObjectOptJSONObject.optString("seriousCongested"));
            this.x.setSmoothColor(iB);
            this.x.setSlowColor(iB2);
            this.x.setCongestedColor(iB3);
            this.x.setSeriousCongestedColor(iB4);
            IAMapDelegate iAMapDelegate = this.f10482a;
            if (iAMapDelegate == null || iAMapDelegate.getGLMapEngine() == null) {
                return;
            }
            this.f10482a.getGLMapEngine().setTrafficStyle(this.f10486g, this.x.getSmoothColor(), this.x.getSlowColor(), this.x.getCongestedColor(), this.x.getSeriousCongestedColor(), true);
        } catch (Throwable th) {
            e6.r(th, "AMapCustomStyleManager", "setExtraStyle");
            r3.J(th);
        }
    }

    private boolean i(byte[] bArr) {
        if (bArr == null) {
            return true;
        }
        try {
            if (bArr.length < 8) {
                return false;
            }
            if (((bArr[4] & UnsignedBytes.MAX_VALUE) | ((bArr[7] << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) | ((bArr[6] << Ascii.DLE) & 16711680) | ((bArr[5] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK)) != 2000) {
                return false;
            }
        } catch (Throwable th) {
            e6.r(th, "AMapCustomStyleManager", "checkData");
            r3.J(th);
        }
        return true;
    }

    private void l() {
        IAMapDelegate iAMapDelegate = this.f10482a;
        if (iAMapDelegate != null && iAMapDelegate.getGLMapEngine() != null && this.k != null) {
            this.f10482a.getGLMapEngine().setBackgroundTexture(this.f10486g, this.k);
        }
        IAMapDelegate iAMapDelegate2 = this.f10482a;
        if (iAMapDelegate2 != null && iAMapDelegate2.getGLMapEngine() != null) {
            this.f10482a.getGLMapEngine().setTrafficStyle(this.f10486g, 0, 0, 0, 0, false);
        }
        this.r = false;
    }

    private void m() {
        if (this.w) {
            if (this.j == null) {
                this.j = e(FileUtil.readFileContentsFromAssets(this.f10487h, AMapEngineUtils.MAP_MAP_ASSETS_NAME + File.separator + AMapEngineUtils.MAP_MAP_ASSETS_STYLE_DATA_ABROAD));
            }
        } else if (this.j == null) {
            this.j = e(FileUtil.readFileContentsFromAssets(this.f10487h, AMapEngineUtils.MAP_MAP_ASSETS_NAME + File.separator + AMapEngineUtils.MAP_MAP_ASSETS_STYLE_DATA));
        }
        this.f10482a.getGLMapEngine().setCustomStyleData(this.f10486g, this.j, this.i);
        this.q = false;
    }

    private void n() {
        if (this.p) {
            if (this.l == null) {
                this.l = FileUtil.readFileContentsFromAssets(this.f10487h, AMapEngineUtils.MAP_MAP_ASSETS_NAME + File.separator + AMapEngineUtils.MAP_MAP_ASSETS_ICON_5_NAME_FOR_CUSTOM);
            }
            this.p = false;
            this.f10482a.getGLMapEngine().setCustomStyleTexture(this.f10486g, this.l);
        }
    }

    private void o() {
        CustomMapStyleOptions customMapStyleOptions = this.b;
        if (customMapStyleOptions != null) {
            customMapStyleOptions.setStyleId(null);
            this.b.setStyleDataPath(null);
            this.b.setStyleData(null);
            this.b.setStyleTexturePath(null);
            this.b.setStyleTextureData(null);
            this.b.setStyleExtraData(null);
            this.b.setStyleExtraPath(null);
        }
    }

    public void a() {
        IAMapDelegate iAMapDelegate;
        if (this.b == null || this.o) {
            return;
        }
        try {
            MapConfig mapConfig = this.f10482a.getMapConfig();
            if (mapConfig == null) {
                return;
            }
            synchronized (this) {
                if (mapConfig.isHideLogoEnable() && (iAMapDelegate = this.f10482a) != null && iAMapDelegate.getUiSettings() != null) {
                    if (this.f10482a.getUiSettings().isLogoEnable()) {
                        if (!this.b.isEnable()) {
                            this.f10482a.getUiSettings().setLogoEnable(true);
                        } else if (this.q) {
                            this.f10482a.getUiSettings().setLogoEnable(false);
                        }
                    } else if (!this.q) {
                        this.f10482a.getUiSettings().setLogoEnable(true);
                    }
                }
                if (this.c) {
                    if (!this.b.isEnable()) {
                        this.f10482a.getGLMapEngine().setNativeMapModeAndStyle(this.f10486g, mapConfig.getMapStyleMode(), mapConfig.getMapStyleTime(), mapConfig.getMapStyleState(), false, false, null);
                        this.q = false;
                        if (mapConfig.isCustomStyleEnable()) {
                            if (mapConfig.getMapStyleMode() == 0 && mapConfig.getMapStyleTime() == 0 && mapConfig.getMapStyleState() == 0) {
                                m();
                            }
                            n();
                            if (this.r) {
                                l();
                            }
                            mapConfig.setCustomStyleEnable(false);
                        }
                        this.c = false;
                        return;
                    }
                    this.f10482a.getGLMapEngine().setNativeMapModeAndStyle(this.f10486g, 0, 0, 0, false, false, null);
                    mapConfig.setCustomStyleEnable(true);
                    this.c = false;
                }
                if (this.f10484e) {
                    String styleTexturePath = this.b.getStyleTexturePath();
                    if (this.b.getStyleTextureData() == null && !TextUtils.isEmpty(styleTexturePath)) {
                        this.b.setStyleTextureData(FileUtil.readFileContents(styleTexturePath));
                    }
                    if (this.b.getStyleTextureData() == null || !mapConfig.isProFunctionAuthEnable()) {
                        n();
                    } else {
                        this.p = true;
                        this.f10482a.getGLMapEngine().setCustomStyleTexture(this.f10486g, this.b.getStyleTextureData());
                        mapConfig.setUseProFunction(true);
                    }
                    this.f10484e = false;
                }
                if (this.f10483d) {
                    String styleDataPath = this.b.getStyleDataPath();
                    if (this.b.getStyleData() == null && !TextUtils.isEmpty(styleDataPath)) {
                        this.b.setStyleData(FileUtil.readFileContents(styleDataPath));
                    }
                    if (this.b.getStyleData() != null || this.u != null) {
                        if (this.m == null) {
                            this.m = e(FileUtil.readFileContentsFromAssets(this.f10487h, AMapEngineUtils.MAP_MAP_ASSETS_NAME + File.separator + AMapEngineUtils.MAP_MAP_ASSETS_STYLE_DATA_0_FOR_TEXTURE));
                        }
                        byte[] styleData = this.u;
                        if (styleData == null) {
                            styleData = this.b.getStyleData();
                        }
                        if (i(styleData)) {
                            this.f10482a.getGLMapEngine().setCustomStyleData(this.f10486g, styleData, this.m);
                            this.q = true;
                            IAMapDelegate iAMapDelegate2 = this.f10482a;
                            if (iAMapDelegate2 != null) {
                                iAMapDelegate2.resetRenderTime();
                            }
                        } else {
                            t2.a();
                        }
                    } else if (this.q) {
                        this.c = true;
                        this.b.setEnable(false);
                    }
                    this.f10483d = false;
                }
                if (this.f10485f) {
                    String styleExtraPath = this.b.getStyleExtraPath();
                    if (this.b.getStyleExtraData() == null && !TextUtils.isEmpty(styleExtraPath)) {
                        this.b.setStyleExtraData(FileUtil.readFileContents(styleExtraPath));
                    }
                    if (this.b.getStyleExtraData() != null || this.v != null) {
                        byte[] styleExtraData = this.v;
                        if (styleExtraData == null) {
                            styleExtraData = this.b.getStyleExtraData();
                        }
                        if (styleExtraData != null) {
                            g(styleExtraData);
                            this.r = true;
                        }
                    }
                    this.f10485f = false;
                }
            }
        } catch (Throwable th) {
            e6.r(th, "AMapCustomStyleManager", "updateStyle");
            r3.J(th);
        }
    }

    public void b(a aVar) {
        this.y = aVar;
    }

    public void c(CustomMapStyleOptions customMapStyleOptions) {
        IAMapDelegate iAMapDelegate;
        if (this.b == null || customMapStyleOptions == null) {
            return;
        }
        synchronized (this) {
            if (!this.n) {
                this.n = true;
                if (this.b.isEnable()) {
                    this.c = true;
                }
            }
            if (this.b.isEnable() != customMapStyleOptions.isEnable()) {
                this.b.setEnable(customMapStyleOptions.isEnable());
                this.c = true;
                p3.i(this.f10487h, customMapStyleOptions.isEnable());
            }
            if (this.b.isEnable()) {
                if (!TextUtils.equals(this.b.getStyleId(), customMapStyleOptions.getStyleId())) {
                    this.b.setStyleId(customMapStyleOptions.getStyleId());
                    String styleId = this.b.getStyleId();
                    if (!TextUtils.isEmpty(styleId) && (iAMapDelegate = this.f10482a) != null && iAMapDelegate.getMapConfig() != null && this.f10482a.getMapConfig().isProFunctionAuthEnable()) {
                        if (this.s == null) {
                            if (this.w) {
                                this.s = new j2(this.f10487h, this, 2, "abroad_sdk_json_sdk_700_zip");
                            } else {
                                this.s = new j2(this.f10487h, this, 1, "sdk_700");
                            }
                        }
                        this.s.b(styleId);
                        this.s.c();
                        if (this.t == null) {
                            this.t = new j2(this.f10487h, this, 0, null);
                        }
                        this.t.b(styleId);
                        this.t.c();
                    }
                }
                if (!TextUtils.equals(this.b.getStyleDataPath(), customMapStyleOptions.getStyleDataPath())) {
                    this.b.setStyleDataPath(customMapStyleOptions.getStyleDataPath());
                    this.f10483d = true;
                }
                if (this.b.getStyleData() != customMapStyleOptions.getStyleData()) {
                    this.b.setStyleData(customMapStyleOptions.getStyleData());
                    this.f10483d = true;
                }
                if (!TextUtils.equals(this.b.getStyleTexturePath(), customMapStyleOptions.getStyleTexturePath())) {
                    this.b.setStyleTexturePath(customMapStyleOptions.getStyleTexturePath());
                    this.f10484e = true;
                }
                if (this.b.getStyleTextureData() != customMapStyleOptions.getStyleTextureData()) {
                    this.b.setStyleTextureData(customMapStyleOptions.getStyleTextureData());
                    this.f10484e = true;
                }
                if (!TextUtils.equals(this.b.getStyleExtraPath(), customMapStyleOptions.getStyleExtraPath())) {
                    this.b.setStyleExtraPath(customMapStyleOptions.getStyleExtraPath());
                    this.f10485f = true;
                }
                if (this.b.getStyleExtraData() != customMapStyleOptions.getStyleExtraData()) {
                    this.b.setStyleExtraData(customMapStyleOptions.getStyleExtraData());
                    this.f10485f = true;
                }
                p3.g(this.f10487h, true);
            } else {
                o();
                p3.g(this.f10487h, false);
            }
        }
    }

    public void f() {
        if (this.b == null) {
            return;
        }
        synchronized (this) {
            IAMapDelegate iAMapDelegate = this.f10482a;
            if (iAMapDelegate != null && iAMapDelegate.getMapConfig() != null && !this.f10482a.getMapConfig().isProFunctionAuthEnable()) {
                this.b.setStyleId(null);
                this.u = null;
                this.v = null;
            }
            this.f10484e = true;
            this.f10483d = true;
            if (this.r) {
                this.f10485f = true;
            }
            this.c = true;
        }
    }

    public void h() {
        if (this.b == null) {
            this.b = new CustomMapStyleOptions();
        }
    }

    public boolean j() {
        return this.b != null;
    }

    public void k() {
        synchronized (this) {
            CustomMapStyleOptions customMapStyleOptions = this.b;
            if (customMapStyleOptions != null) {
                customMapStyleOptions.setEnable(false);
                o();
                this.c = true;
            }
        }
    }

    @Override // com.amap.api.mapcore.util.j2.a
    public void a(byte[] bArr, int i) {
        MapConfig mapConfig;
        a aVar;
        if (this.b != null) {
            synchronized (this) {
                IAMapDelegate iAMapDelegate = this.f10482a;
                if (iAMapDelegate != null && (mapConfig = iAMapDelegate.getMapConfig()) != null && mapConfig.isProFunctionAuthEnable()) {
                    mapConfig.setUseProFunction(true);
                    if (i == 1) {
                        this.u = bArr;
                        this.f10483d = true;
                    } else if (i == 0) {
                        this.v = bArr;
                        this.f10485f = true;
                    } else if (i == 2) {
                        String str = this.b.getStyleId() + "_sdk_700.data";
                        String str2 = this.b.getStyleId() + "_abroad_sdk.json";
                        Map<String, byte[]> mapUncompressToByteWithKeys = FileUtil.uncompressToByteWithKeys(bArr, new String[]{str, str2});
                        if (mapUncompressToByteWithKeys != null) {
                            byte[] bArr2 = mapUncompressToByteWithKeys.get(str);
                            if (bArr2 != null) {
                                this.u = bArr2;
                                this.f10483d = true;
                            }
                            byte[] bArr3 = mapUncompressToByteWithKeys.get(str2);
                            if (bArr3 != null && (aVar = this.y) != null) {
                                aVar.a(bArr3);
                            }
                        }
                    }
                }
            }
        }
    }
}
