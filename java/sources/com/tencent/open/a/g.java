package com.tencent.open.a;

import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.speech.UtilityConfig;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.j;
import com.tencent.open.utils.l;
import java.io.IOException;
import java.io.Serializable;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static g f14080a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected HandlerThread f14082e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Handler f14083f;
    protected Random b = new Random();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected List<Serializable> f14081d = Collections.synchronizedList(new ArrayList());
    protected List<Serializable> c = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected Executor f14084g = j.b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected Executor f14085h = j.b();

    private g() {
        this.f14082e = null;
        if (this.f14082e == null) {
            HandlerThread handlerThread = new HandlerThread("opensdk.report.handlerthread", 10);
            this.f14082e = handlerThread;
            handlerThread.start();
        }
        if (!this.f14082e.isAlive() || this.f14082e.getLooper() == null) {
            return;
        }
        this.f14083f = new Handler(this.f14082e.getLooper()) { // from class: com.tencent.open.a.g.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 1000) {
                    g.this.b();
                } else if (i == 1001) {
                    g.this.e();
                }
                super.handleMessage(message);
            }
        };
    }

    public static synchronized g a() {
        if (f14080a == null) {
            f14080a = new g();
        }
        return f14080a;
    }

    protected void b() {
        this.f14085h.execute(new Runnable() { // from class: com.tencent.open.a.g.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Bundle bundleC = g.this.c();
                    if (bundleC == null) {
                        return;
                    }
                    int iA = com.tencent.open.utils.g.a(com.tencent.open.utils.f.a(), (String) null).a("Common_HttpRetryCount");
                    if (iA == 0) {
                        iA = 3;
                    }
                    SLog.d("openSDK_LOG.ReportManager", "-->doReportCgi, retryCount: " + iA);
                    boolean z = false;
                    int i = 0;
                    do {
                        i++;
                        try {
                            try {
                                try {
                                    HttpClient httpClient = HttpUtils.getHttpClient(com.tencent.open.utils.f.a(), null, "https://wspeed.qq.com/w.cgi");
                                    HttpPost httpPost = new HttpPost("https://wspeed.qq.com/w.cgi");
                                    httpPost.addHeader(HttpHeaders.ACCEPT_ENCODING, "gzip");
                                    httpPost.setHeader(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
                                    httpPost.setEntity(new ByteArrayEntity(l.i(HttpUtils.encodeUrl(bundleC))));
                                    int statusCode = httpClient.execute(httpPost).getStatusLine().getStatusCode();
                                    SLog.d("openSDK_LOG.ReportManager", "-->doReportCgi, statusCode: " + statusCode);
                                    if (statusCode != 200) {
                                        break;
                                    }
                                    f.a().b("report_cgi");
                                    z = true;
                                    break;
                                } catch (Exception e2) {
                                    SLog.e("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception", e2);
                                }
                            } catch (SocketTimeoutException e3) {
                                SLog.e("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception", e3);
                            }
                        } catch (ConnectTimeoutException e4) {
                            SLog.e("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception", e4);
                        }
                    } while (i < iA);
                    if (!z) {
                        f.a().a("report_cgi", g.this.c);
                    }
                    g.this.c.clear();
                } catch (Exception e5) {
                    SLog.e("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception out.", e5);
                }
            }
        });
    }

    protected Bundle c() {
        if (this.c.size() == 0) {
            return null;
        }
        b bVar = (b) this.c.get(0);
        if (bVar == null) {
            SLog.d("openSDK_LOG.ReportManager", "-->prepareCgiData, the 0th cgireportitem is null.");
            return null;
        }
        String str = bVar.f14076a.get("appid");
        List<Serializable> listA = f.a().a("report_cgi");
        if (listA != null) {
            this.c.addAll(listA);
        }
        SLog.d("openSDK_LOG.ReportManager", "-->prepareCgiData, mCgiList size: " + this.c.size());
        if (this.c.size() == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        try {
            bundle.putString("appid", str);
            bundle.putString("releaseversion", Constants.SDK_VERSION_REPORT);
            bundle.putString(UtilityConfig.KEY_DEVICE_INFO, Build.DEVICE);
            bundle.putString("qua", Constants.SDK_QUA);
            bundle.putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,touin,deviceinfo");
            for (int i = 0; i < this.c.size(); i++) {
                b bVar2 = (b) this.c.get(i);
                bundle.putString(i + "_1", bVar2.f14076a.get("apn"));
                bundle.putString(i + "_2", bVar2.f14076a.get("frequency"));
                bundle.putString(i + "_3", bVar2.f14076a.get("commandid"));
                bundle.putString(i + "_4", bVar2.f14076a.get("resultCode"));
                bundle.putString(i + "_5", bVar2.f14076a.get("timeCost"));
                bundle.putString(i + "_6", bVar2.f14076a.get("reqSize"));
                bundle.putString(i + "_7", bVar2.f14076a.get("rspSize"));
                bundle.putString(i + "_8", bVar2.f14076a.get("detail"));
                bundle.putString(i + "_9", bVar2.f14076a.get("uin"));
                bundle.putString(i + "_10", c.e(com.tencent.open.utils.f.a()) + "&" + bVar2.f14076a.get("deviceInfo"));
            }
            SLog.v("openSDK_LOG.ReportManager", "-->prepareCgiData, end. params: " + bundle.toString());
            return bundle;
        } catch (Exception e2) {
            SLog.e("openSDK_LOG.ReportManager", "-->prepareCgiData, exception.", e2);
            return null;
        }
    }

    protected Bundle d() {
        List<Serializable> listA = f.a().a("report_via");
        if (listA != null) {
            this.f14081d.addAll(listA);
        }
        SLog.d("openSDK_LOG.ReportManager", "-->prepareViaData, mViaList size: " + this.f14081d.size());
        if (this.f14081d.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (Serializable serializable : this.f14081d) {
            JSONObject jSONObject = new JSONObject();
            b bVar = (b) serializable;
            for (String str : bVar.f14076a.keySet()) {
                try {
                    String str2 = bVar.f14076a.get(str);
                    if (str2 == null) {
                        str2 = "";
                    }
                    jSONObject.put(str, str2);
                } catch (JSONException e2) {
                    SLog.e("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", e2);
                }
            }
            jSONArray.put(jSONObject);
        }
        SLog.v("openSDK_LOG.ReportManager", "-->prepareViaData, JSONArray array: " + jSONArray.toString());
        Bundle bundle = new Bundle();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("data", jSONArray);
            bundle.putString("data", jSONObject2.toString());
            return bundle;
        } catch (JSONException e3) {
            SLog.e("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", e3);
            return null;
        }
    }

    protected void e() {
        this.f14084g.execute(new Runnable() { // from class: com.tencent.open.a.g.5
            @Override // java.lang.Runnable
            public void run() {
                int i;
                try {
                    Bundle bundleD = g.this.d();
                    if (bundleD == null) {
                        return;
                    }
                    SLog.v("openSDK_LOG.ReportManager", "-->doReportVia, params: " + bundleD.toString());
                    int iA = e.a();
                    int i2 = 0;
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    boolean z = false;
                    int errorCodeFromException = 0;
                    long j = 0;
                    long j2 = 0;
                    do {
                        int i3 = i2 + 1;
                        try {
                            try {
                                try {
                                    l.a aVarOpenUrl2 = HttpUtils.openUrl2(com.tencent.open.utils.f.a(), "https://appsupport.qq.com/cgi-bin/appstage/mstats_batch_report", Constants.HTTP_POST, bundleD);
                                    try {
                                        i = l.d(aVarOpenUrl2.f14174a).getInt(SpeechUtility.TAG_RESOURCE_RET);
                                    } catch (JSONException unused) {
                                        i = -4;
                                    }
                                    if (i == 0 || !TextUtils.isEmpty(aVarOpenUrl2.f14174a)) {
                                        i3 = iA;
                                        z = true;
                                    }
                                    j = aVarOpenUrl2.b;
                                    j2 = aVarOpenUrl2.c;
                                    i2 = i3;
                                } catch (JSONException unused2) {
                                    i2 = i3;
                                    errorCodeFromException = -4;
                                    j = 0;
                                    j2 = 0;
                                }
                            } catch (SocketTimeoutException unused3) {
                                jElapsedRealtime = SystemClock.elapsedRealtime();
                                i2 = i3;
                                errorCodeFromException = -8;
                                j = 0;
                                j2 = 0;
                            } catch (IOException e2) {
                                errorCodeFromException = HttpUtils.getErrorCodeFromException(e2);
                                i2 = i3;
                                j = 0;
                                j2 = 0;
                            }
                        } catch (HttpUtils.HttpStatusException e3) {
                            try {
                                errorCodeFromException = Integer.parseInt(e3.getMessage().replace(HttpUtils.HttpStatusException.ERROR_INFO, ""));
                            } catch (Exception unused4) {
                            }
                        } catch (HttpUtils.NetworkUnavailableException unused5) {
                            g.this.f14081d.clear();
                            SLog.d("openSDK_LOG.ReportManager", "doReportVia, NetworkUnavailableException.");
                            return;
                        } catch (ConnectTimeoutException unused6) {
                            jElapsedRealtime = SystemClock.elapsedRealtime();
                            i2 = i3;
                            errorCodeFromException = -7;
                            j = 0;
                            j2 = 0;
                        } catch (Exception unused7) {
                            i2 = iA;
                            errorCodeFromException = -6;
                            j = 0;
                            j2 = 0;
                        }
                    } while (i2 < iA);
                    g.this.a("mapp_apptrace_sdk", jElapsedRealtime, j, j2, errorCodeFromException, null, false);
                    if (z) {
                        f.a().b("report_via");
                    } else {
                        f.a().a("report_via", g.this.f14081d);
                    }
                    g.this.f14081d.clear();
                    SLog.d("openSDK_LOG.ReportManager", "-->doReportVia, uploadSuccess: " + z);
                } catch (Exception e4) {
                    SLog.e("openSDK_LOG.ReportManager", "-->doReportVia, exception in serial executor.", e4);
                }
            }
        });
    }

    public void a(final Bundle bundle, String str, final boolean z) {
        if (bundle == null) {
            return;
        }
        SLog.v("openSDK_LOG.ReportManager", "-->reportVia, bundle: " + bundle.toString());
        if (a("report_via", str) || z) {
            this.f14084g.execute(new Runnable() { // from class: com.tencent.open.a.g.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strK = l.k(c.b(com.tencent.open.utils.f.a()));
                        String strK2 = l.k(c.c(com.tencent.open.utils.f.a()));
                        String strK3 = l.k(c.a());
                        String strK4 = l.k(c.d(com.tencent.open.utils.f.a()));
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("uin", Constants.DEFAULT_UIN);
                        bundle2.putString("imei", strK);
                        bundle2.putString("imsi", strK2);
                        bundle2.putString("android_id", strK4);
                        bundle2.putString("mac", strK3);
                        bundle2.putString(Constants.PARAM_PLATFORM, "1");
                        bundle2.putString("os_ver", Build.VERSION.RELEASE);
                        bundle2.putString("position", "");
                        bundle2.putString("network", a.a(com.tencent.open.utils.f.a()));
                        bundle2.putString(SpeechConstant.LANGUAGE, c.b());
                        bundle2.putString("resolution", c.a(com.tencent.open.utils.f.a()));
                        bundle2.putString("apn", a.b(com.tencent.open.utils.f.a()));
                        bundle2.putString("model_name", Build.MODEL);
                        bundle2.putString("timezone", TimeZone.getDefault().getID());
                        bundle2.putString("sdk_ver", Constants.SDK_VERSION);
                        bundle2.putString("qz_ver", l.d(com.tencent.open.utils.f.a(), Constants.PACKAGE_QZONE));
                        bundle2.putString("qq_ver", l.c(com.tencent.open.utils.f.a(), "com.tencent.mobileqq"));
                        bundle2.putString("qua", l.e(com.tencent.open.utils.f.a(), com.tencent.open.utils.f.b()));
                        bundle2.putString("packagename", com.tencent.open.utils.f.b());
                        bundle2.putString("app_ver", l.d(com.tencent.open.utils.f.a(), com.tencent.open.utils.f.b()));
                        Bundle bundle3 = bundle;
                        if (bundle3 != null) {
                            bundle2.putAll(bundle3);
                        }
                        g.this.f14081d.add(new b(bundle2));
                        int size = g.this.f14081d.size();
                        int iA = com.tencent.open.utils.g.a(com.tencent.open.utils.f.a(), (String) null).a("Agent_ReportTimeInterval");
                        if (iA == 0) {
                            iA = 10000;
                        }
                        if (!g.this.a("report_via", size) && !z) {
                            if (g.this.f14083f.hasMessages(1001)) {
                                return;
                            }
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 1001;
                            g.this.f14083f.sendMessageDelayed(messageObtain, iA);
                            return;
                        }
                        g.this.e();
                        g.this.f14083f.removeMessages(1001);
                    } catch (Exception e2) {
                        SLog.e("openSDK_LOG.ReportManager", "--> reporVia, exception in sub thread.", e2);
                    }
                }
            });
        }
    }

    public void a(String str, long j, long j2, long j3, int i) {
        a(str, j, j2, j3, i, "", false);
    }

    public void a(final String str, final long j, final long j2, final long j3, final int i, final String str2, final boolean z) {
        SLog.v("openSDK_LOG.ReportManager", "-->reportCgi, command: " + str + " | startTime: " + j + " | reqSize:" + j2 + " | rspSize: " + j3 + " | responseCode: " + i + " | detail: " + str2);
        if (a("report_cgi", "" + i) || z) {
            this.f14085h.execute(new Runnable() { // from class: com.tencent.open.a.g.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
                        Bundle bundle = new Bundle();
                        String strA = a.a(com.tencent.open.utils.f.a());
                        bundle.putString("apn", strA);
                        bundle.putString("appid", "1000067");
                        bundle.putString("commandid", str);
                        bundle.putString("detail", str2);
                        StringBuilder sb = new StringBuilder();
                        sb.append("network=");
                        sb.append(strA);
                        sb.append('&');
                        sb.append("sdcard=");
                        int i2 = 1;
                        sb.append(Environment.getExternalStorageState().equals("mounted") ? 1 : 0);
                        sb.append('&');
                        sb.append("wifi=");
                        sb.append(a.e(com.tencent.open.utils.f.a()));
                        bundle.putString("deviceInfo", sb.toString());
                        int iA = 100 / g.this.a(i);
                        if (iA > 0) {
                            i2 = iA > 100 ? 100 : iA;
                        }
                        bundle.putString("frequency", i2 + "");
                        bundle.putString("reqSize", j2 + "");
                        bundle.putString("resultCode", i + "");
                        bundle.putString("rspSize", j3 + "");
                        bundle.putString("timeCost", jElapsedRealtime + "");
                        bundle.putString("uin", Constants.DEFAULT_UIN);
                        g.this.c.add(new b(bundle));
                        int size = g.this.c.size();
                        int iA2 = com.tencent.open.utils.g.a(com.tencent.open.utils.f.a(), (String) null).a("Agent_ReportTimeInterval");
                        if (iA2 == 0) {
                            iA2 = 10000;
                        }
                        if (g.this.a("report_cgi", size) || z) {
                            g.this.b();
                            g.this.f14083f.removeMessages(1000);
                        } else if (!g.this.f14083f.hasMessages(1000)) {
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 1000;
                            g.this.f14083f.sendMessageDelayed(messageObtain, iA2);
                        }
                    } catch (Exception e2) {
                        SLog.e("openSDK_LOG.ReportManager", "--> reportCGI, exception in sub thread.", e2);
                    }
                }
            });
        }
    }

    protected boolean a(String str, String str2) {
        int iA;
        SLog.d("openSDK_LOG.ReportManager", "-->availableFrequency, report: " + str + " | ext: " + str2);
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        int i = 100;
        if (str.equals("report_cgi")) {
            try {
                iA = a(Integer.parseInt(str2));
                if (this.b.nextInt(100) < iA) {
                    z = true;
                }
            } catch (Exception unused) {
                return false;
            }
        } else {
            if (str.equals("report_via")) {
                iA = e.a(str2);
                if (this.b.nextInt(100) < iA) {
                    i = iA;
                    z = true;
                }
            }
            SLog.d("openSDK_LOG.ReportManager", "-->availableFrequency, result: " + z + " | frequency: " + i);
            return z;
        }
        i = iA;
        SLog.d("openSDK_LOG.ReportManager", "-->availableFrequency, result: " + z + " | frequency: " + i);
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c A[PHI: r0
      0x001c: PHI (r0v9 int) = (r0v6 int), (r0v12 int) binds: [B:11:0x0034, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    protected boolean a(String str, int i) {
        int iA;
        int i2 = 5;
        if (str.equals("report_cgi")) {
            iA = com.tencent.open.utils.g.a(com.tencent.open.utils.f.a(), (String) null).a("Common_CGIReportMaxcount");
            if (iA != 0) {
                i2 = iA;
            }
        } else if (str.equals("report_via")) {
            iA = com.tencent.open.utils.g.a(com.tencent.open.utils.f.a(), (String) null).a("Agent_ReportBatchCount");
            if (iA != 0) {
                i2 = iA;
            }
        } else {
            i2 = 0;
        }
        SLog.d("openSDK_LOG.ReportManager", "-->availableCount, report: " + str + " | dataSize: " + i + " | maxcount: " + i2);
        return i >= i2;
    }

    protected int a(int i) {
        if (i == 0) {
            int iA = com.tencent.open.utils.g.a(com.tencent.open.utils.f.a(), (String) null).a("Common_CGIReportFrequencySuccess");
            if (iA == 0) {
                return 10;
            }
            return iA;
        }
        int iA2 = com.tencent.open.utils.g.a(com.tencent.open.utils.f.a(), (String) null).a("Common_CGIReportFrequencyFailed");
        if (iA2 == 0) {
            return 100;
        }
        return iA2;
    }

    public void a(final String str, final String str2, final Bundle bundle, final boolean z) {
        j.a(new Runnable() { // from class: com.tencent.open.a.g.6
            /* JADX WARN: Code duplicated, block: B:101:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:121:0x0135 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:131:? A[LOOP:0: B:21:0x0096->B:131:?, LOOP_END, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:85:0x0137 A[Catch: Exception -> 0x015a, TRY_ENTER, TryCatch #12 {Exception -> 0x015a, blocks: (B:3:0x0004, B:5:0x0008, B:7:0x000e, B:10:0x0015, B:12:0x003e, B:13:0x0042, B:15:0x0050, B:19:0x0086, B:85:0x0137, B:86:0x013d, B:35:0x00d6, B:71:0x011a, B:95:0x0153, B:94:0x0150, B:16:0x0064, B:18:0x0072, B:96:0x0154, B:89:0x0145, B:91:0x014b), top: B:111:0x0004, inners: #0 }] */
            /* JADX WARN: Code duplicated, block: B:86:0x013d A[Catch: Exception -> 0x015a, TRY_LEAVE, TryCatch #12 {Exception -> 0x015a, blocks: (B:3:0x0004, B:5:0x0008, B:7:0x000e, B:10:0x0015, B:12:0x003e, B:13:0x0042, B:15:0x0050, B:19:0x0086, B:85:0x0137, B:86:0x013d, B:35:0x00d6, B:71:0x011a, B:95:0x0153, B:94:0x0150, B:16:0x0064, B:18:0x0072, B:96:0x0154, B:89:0x0145, B:91:0x014b), top: B:111:0x0004, inners: #0 }] */
            /* JADX WARN: Code duplicated, block: B:91:0x014b A[Catch: Exception -> 0x014f, TRY_LEAVE, TryCatch #0 {Exception -> 0x014f, blocks: (B:89:0x0145, B:91:0x014b), top: B:101:0x0145, outer: #12 }] */
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                HttpUriRequest httpGet;
                HttpResponse httpResponseExecute;
                HttpEntity entity;
                String str3 = "-->ReportCenter httpRequest consumeContent Exception:";
                try {
                    if (bundle == null) {
                        SLog.e("openSDK_LOG.ReportManager", "-->httpRequest, params is null!");
                        return;
                    }
                    int iA = e.a();
                    if (iA == 0) {
                        iA = 3;
                    }
                    SLog.d("openSDK_LOG.ReportManager", "-->httpRequest, retryCount: " + iA);
                    HttpResponse httpResponse = null;
                    HttpClient httpClient = HttpUtils.getHttpClient(com.tencent.open.utils.f.a(), null, str);
                    String strEncodeUrl = HttpUtils.encodeUrl(bundle);
                    if (z) {
                        strEncodeUrl = URLEncoder.encode(strEncodeUrl);
                    }
                    if (str2.toUpperCase().equals(Constants.HTTP_GET)) {
                        StringBuffer stringBuffer = new StringBuffer(str);
                        stringBuffer.append(strEncodeUrl);
                        httpGet = new HttpGet(stringBuffer.toString());
                    } else if (!str2.toUpperCase().equals(Constants.HTTP_POST)) {
                        SLog.e("openSDK_LOG.ReportManager", "-->httpRequest unkonw request method return.");
                        return;
                    } else {
                        HttpPost httpPost = new HttpPost(str);
                        httpPost.setEntity(new ByteArrayEntity(l.i(strEncodeUrl)));
                        httpGet = httpPost;
                    }
                    httpGet.addHeader(HttpHeaders.ACCEPT_ENCODING, "gzip");
                    httpGet.addHeader(HttpHeaders.CONTENT_TYPE, "application/x-www-form-urlencoded");
                    int i = 0;
                    boolean z2 = false;
                    while (true) {
                        i++;
                        try {
                            try {
                                httpResponseExecute = httpClient.execute(httpGet);
                                try {
                                    int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
                                    SLog.d("openSDK_LOG.ReportManager", "-->httpRequest, statusCode: " + statusCode);
                                    if (statusCode != 200) {
                                        SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest : HttpStatuscode != 200");
                                    } else {
                                        try {
                                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread success");
                                            z2 = true;
                                        } catch (SocketTimeoutException e2) {
                                            e = e2;
                                            z2 = true;
                                            try {
                                                SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest SocketTimeoutException:", e);
                                                if (httpResponseExecute != null) {
                                                    try {
                                                        HttpEntity entity2 = httpResponseExecute.getEntity();
                                                        if (entity2 != null) {
                                                            entity2.consumeContent();
                                                        }
                                                    } catch (Exception e3) {
                                                        e = e3;
                                                        SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest consumeContent Exception:", e);
                                                        if (i >= iA) {
                                                            if (z2) {
                                                                str3 = "-->ReportCenter httpRequest Thread request success";
                                                                SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request success");
                                                            } else {
                                                                str3 = "-->ReportCenter httpRequest Thread request failed";
                                                                SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request failed");
                                                            }
                                                            return;
                                                        }
                                                    }
                                                }
                                                if (i >= iA) {
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                httpResponse = httpResponseExecute;
                                                if (httpResponse != null) {
                                                    try {
                                                        entity = httpResponse.getEntity();
                                                        if (entity != null) {
                                                            entity.consumeContent();
                                                        }
                                                    } catch (Exception e4) {
                                                        SLog.e("openSDK_LOG.ReportManager", str3, e4);
                                                    }
                                                }
                                                throw th;
                                            }
                                        } catch (ConnectTimeoutException e5) {
                                            e = e5;
                                            z2 = true;
                                            SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest ConnectTimeoutException:", e);
                                            if (httpResponseExecute != null) {
                                                try {
                                                    HttpEntity entity3 = httpResponseExecute.getEntity();
                                                    if (entity3 != null) {
                                                        entity3.consumeContent();
                                                    }
                                                } catch (Exception e6) {
                                                    e = e6;
                                                    SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest consumeContent Exception:", e);
                                                    if (i >= iA) {
                                                        if (z2) {
                                                            str3 = "-->ReportCenter httpRequest Thread request success";
                                                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request success");
                                                        } else {
                                                            str3 = "-->ReportCenter httpRequest Thread request failed";
                                                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request failed");
                                                        }
                                                        return;
                                                    }
                                                }
                                            }
                                            if (i >= iA) {
                                            }
                                        } catch (Exception e7) {
                                            e = e7;
                                            httpResponse = httpResponseExecute;
                                            z2 = true;
                                            SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Exception:", e);
                                            if (httpResponse != null) {
                                                try {
                                                    HttpEntity entity4 = httpResponse.getEntity();
                                                    if (entity4 != null) {
                                                        entity4.consumeContent();
                                                    }
                                                } catch (Exception e8) {
                                                    e = e8;
                                                    SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest consumeContent Exception:", e);
                                                }
                                            }
                                        }
                                    }
                                    if (httpResponseExecute != null) {
                                        try {
                                            HttpEntity entity5 = httpResponseExecute.getEntity();
                                            if (entity5 != null) {
                                                entity5.consumeContent();
                                            }
                                        } catch (Exception e9) {
                                            e = e9;
                                            SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest consumeContent Exception:", e);
                                        }
                                    }
                                } catch (SocketTimeoutException e10) {
                                    e = e10;
                                } catch (ConnectTimeoutException e11) {
                                    e = e11;
                                } catch (Exception e12) {
                                    e = e12;
                                    httpResponse = httpResponseExecute;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (httpResponse != null) {
                                    entity = httpResponse.getEntity();
                                    if (entity != null) {
                                        entity.consumeContent();
                                    }
                                }
                                throw th;
                            }
                        } catch (SocketTimeoutException e13) {
                            e = e13;
                            httpResponseExecute = null;
                        } catch (ConnectTimeoutException e14) {
                            e = e14;
                            httpResponseExecute = null;
                        } catch (Exception e15) {
                            e = e15;
                        }
                        if (z2) {
                            str3 = "-->ReportCenter httpRequest Thread request success";
                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request success");
                        } else {
                            str3 = "-->ReportCenter httpRequest Thread request failed";
                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request failed");
                        }
                        return;
                    }
                } catch (Exception e16) {
                    SLog.e("openSDK_LOG.ReportManager", "-->httpRequest, exception in serial executor:", e16);
                }
            }
        });
    }
}
