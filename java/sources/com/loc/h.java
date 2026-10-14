package com.loc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClient;
import com.amap.api.location.AMapLocationClientOption;
import com.amap.api.location.AMapLocationListener;
import com.amap.api.maps.model.MyLocationStyle;
import com.iflytek.cloud.SpeechUtility;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class h {
    a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f12944d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WebView f12946f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object f12943a = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AMapLocationClient f12945e = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f12947g = "AMap.Geolocation.cbk";
    AMapLocationClientOption b = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f12948h = false;

    class a implements AMapLocationListener {
        a() {
        }

        @Override // com.amap.api.location.AMapLocationListener
        public final void onLocationChanged(AMapLocation aMapLocation) {
            if (h.this.f12948h) {
                h.this.b(h.b(aMapLocation));
            }
        }
    }

    public h(Context context, WebView webView) {
        this.f12946f = null;
        this.c = null;
        this.f12944d = context.getApplicationContext();
        this.f12946f = webView;
        this.c = new a();
    }

    private void a(String str) {
        boolean z;
        boolean z2;
        AMapLocationClientOption aMapLocationClientOption;
        AMapLocationClientOption.AMapLocationMode aMapLocationMode;
        if (this.b == null) {
            this.b = new AMapLocationClientOption();
        }
        int iOptInt = 5;
        long jOptLong = 30000;
        boolean z3 = true;
        try {
            JSONObject jSONObject = new JSONObject(str);
            jOptLong = jSONObject.optLong("to", 30000L);
            z = jSONObject.optInt("useGPS", 1) == 1;
            try {
                z2 = jSONObject.optInt("watch", 0) == 1;
                try {
                    iOptInt = jSONObject.optInt("interval", 5);
                    String strOptString = jSONObject.optString("callback", null);
                    if (TextUtils.isEmpty(strOptString)) {
                        strOptString = "AMap.Geolocation.cbk";
                    }
                    this.f12947g = strOptString;
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                z2 = false;
            }
        } catch (Throwable unused3) {
            z = false;
        }
        try {
            this.b.setHttpTimeOut(jOptLong);
            if (z) {
                aMapLocationClientOption = this.b;
                aMapLocationMode = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy;
            } else {
                aMapLocationClientOption = this.b;
                aMapLocationMode = AMapLocationClientOption.AMapLocationMode.Battery_Saving;
            }
            aMapLocationClientOption.setLocationMode(aMapLocationMode);
            AMapLocationClientOption aMapLocationClientOption2 = this.b;
            if (z2) {
                z3 = false;
            }
            aMapLocationClientOption2.setOnceLocation(z3);
            if (z2) {
                this.b.setInterval(iOptInt * 1000);
            }
        } catch (Throwable unused4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(AMapLocation aMapLocation) {
        String locationDetail;
        JSONObject jSONObject = new JSONObject();
        String str = MyLocationStyle.ERROR_INFO;
        try {
            if (aMapLocation != null) {
                if (aMapLocation.getErrorCode() == 0) {
                    jSONObject.put(MyLocationStyle.ERROR_CODE, 0);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("x", aMapLocation.getLongitude());
                    jSONObject2.put("y", aMapLocation.getLatitude());
                    jSONObject2.put("precision", aMapLocation.getAccuracy());
                    jSONObject2.put("type", aMapLocation.getLocationType());
                    jSONObject2.put("country", aMapLocation.getCountry());
                    jSONObject2.put("province", aMapLocation.getProvince());
                    jSONObject2.put("city", aMapLocation.getCity());
                    jSONObject2.put("cityCode", aMapLocation.getCityCode());
                    jSONObject2.put("district", aMapLocation.getDistrict());
                    jSONObject2.put("adCode", aMapLocation.getAdCode());
                    jSONObject2.put("street", aMapLocation.getStreet());
                    jSONObject2.put("streetNum", aMapLocation.getStreetNum());
                    jSONObject2.put("floor", aMapLocation.getFloor());
                    jSONObject2.put("address", aMapLocation.getAddress());
                    jSONObject.put(SpeechUtility.TAG_RESOURCE_RESULT, jSONObject2);
                } else {
                    jSONObject.put(MyLocationStyle.ERROR_CODE, aMapLocation.getErrorCode());
                    jSONObject.put(MyLocationStyle.ERROR_INFO, aMapLocation.getErrorInfo());
                    str = "locationDetail";
                    locationDetail = aMapLocation.getLocationDetail();
                }
                return jSONObject.toString();
            }
            jSONObject.put(MyLocationStyle.ERROR_CODE, -1);
            locationDetail = "unknownError";
            jSONObject.put(str, locationDetail);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void b(final String str) {
        try {
            WebView webView = this.f12946f;
            if (webView != null) {
                if (Build.VERSION.SDK_INT < 19) {
                    webView.post(new Runnable() { // from class: com.loc.h.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            h.this.f12946f.loadUrl("javascript:" + h.this.f12947g + "('" + str + "')");
                        }
                    });
                    return;
                }
                webView.evaluateJavascript("javascript:" + this.f12947g + "('" + str + "')", new ValueCallback<String>() { // from class: com.loc.h.1
                    @Override // android.webkit.ValueCallback
                    public final /* bridge */ /* synthetic */ void onReceiveValue(String str2) {
                    }
                });
            }
        } catch (Throwable th) {
            fi.a(th, "H5LocationClient", "callbackJs()");
        }
    }

    public final void a() {
        if (this.f12946f == null || this.f12944d == null || Build.VERSION.SDK_INT < 17 || this.f12948h) {
            return;
        }
        try {
            this.f12946f.getSettings().setJavaScriptEnabled(true);
            this.f12946f.addJavascriptInterface(this, "AMapAndroidLoc");
            if (!TextUtils.isEmpty(this.f12946f.getUrl())) {
                this.f12946f.reload();
            }
            if (this.f12945e == null) {
                AMapLocationClient aMapLocationClient = new AMapLocationClient(this.f12944d);
                this.f12945e = aMapLocationClient;
                aMapLocationClient.setLocationListener(this.c);
            }
            this.f12948h = true;
        } catch (Throwable unused) {
        }
    }

    public final void b() {
        synchronized (this.f12943a) {
            this.f12948h = false;
            AMapLocationClient aMapLocationClient = this.f12945e;
            if (aMapLocationClient != null) {
                aMapLocationClient.unRegisterLocationListener(this.c);
                this.f12945e.stopLocation();
                this.f12945e.onDestroy();
                this.f12945e = null;
            }
            this.b = null;
        }
    }

    @JavascriptInterface
    public final void getLocation(String str) {
        synchronized (this.f12943a) {
            if (this.f12948h) {
                a(str);
                AMapLocationClient aMapLocationClient = this.f12945e;
                if (aMapLocationClient != null) {
                    aMapLocationClient.setLocationOption(this.b);
                    this.f12945e.stopLocation();
                    this.f12945e.startLocation();
                }
            }
        }
    }

    @JavascriptInterface
    public final void stopLocation() {
        AMapLocationClient aMapLocationClient;
        if (this.f12948h && (aMapLocationClient = this.f12945e) != null) {
            aMapLocationClient.stopLocation();
        }
    }
}
