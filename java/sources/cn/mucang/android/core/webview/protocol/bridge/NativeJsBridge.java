package cn.mucang.android.core.webview.protocol.bridge;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import cn.mucang.android.core.api.ImageUploadResult;
import cn.mucang.android.core.api.upload.FileUploadApi;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.webview.core.MucangWebView;
import cn.mucang.sundial.library.device.BaseCamera;
import com.alibaba.fastjson.JSONObject;
import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.ResultCode;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class NativeJsBridge extends k0 {
    private static final String ALBUM = "/native/album";
    private static final String CHECK_APP = "/checkApp";
    private static final String HAS_NAV_PROTOCOL = "/native/hasNavProtocol";
    private static final String KEY_DATA = "data";
    private static final String OPEN_APP = "/openApp";
    private static final String SAVE_IMAGE = "/native/saveImage";
    private static final String UPLOAD_FILE = "/native/uploadFile";
    private static final String UPLOAD_IMAGE = "/native/uploadImage";

    public NativeJsBridge(MucangWebView mucangWebView, cn.mucang.android.core.webview.core.d dVar) {
        super(mucangWebView, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String c(Map map) {
        saveImage(map);
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0044  */
    static /* synthetic */ String d(Map map) {
        boolean zJ;
        String str = (String) map.get("package");
        String str2 = (String) map.get("scheme");
        if (n0.g(str2)) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str2));
            if (n0.g(str)) {
                intent.setPackage(str);
            }
            Activity activityI = MucangConfig.i();
            if (activityI != null) {
                try {
                    activityI.startActivity(intent);
                    zJ = true;
                } catch (Exception unused) {
                    zJ = false;
                }
            } else {
                zJ = false;
            }
        } else if (n0.g(str)) {
            zJ = cn.mucang.android.core.utils.d.j(str);
        } else {
            zJ = false;
        }
        return zJ ? cn.mucang.android.core.webview.core.d.k("") : cn.mucang.android.core.webview.core.d.f("", 0);
    }

    static /* synthetic */ String e(Map map) {
        return cn.mucang.android.core.utils.d.e((String) map.get("package")) ? cn.mucang.android.core.webview.core.d.k("") : cn.mucang.android.core.webview.core.d.f("", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String g(Map map) {
        String str = (String) map.get("bucket");
        String str2 = (String) map.get("contentType");
        String str3 = (String) map.get("type");
        String str4 = (String) map.get("sign");
        String str5 = (String) map.get("server");
        String str6 = (String) map.get("path");
        if (n0.e(str) || n0.e(str2) || n0.e(str4) || n0.e(str6)) {
            return cn.mucang.android.core.webview.core.d.f(ResultCode.MSG_ERROR_INVALID_PARAM, 0);
        }
        File file = new File(cn.mucang.android.core.webview.protocol.e.a.l(str6));
        if (!file.exists()) {
            return cn.mucang.android.core.webview.core.d.f("文件未找到", 0);
        }
        uploadFile((String) map.get(k0.KEY_CALLBACK_NAME), str5, str, str2, str3, str4, file);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String hasNavProtocol(Map<String, String> map) {
        String str = map == null ? null : map.get("protocol");
        boolean z = str != null && f.a.a.a.activity.h.c(str);
        HashMap map2 = new HashMap();
        map2.put(SpeechUtility.TAG_RESOURCE_RESULT, Boolean.valueOf(z));
        return cn.mucang.android.core.webview.core.d.j(map2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(Map map, boolean z) {
        saveImageCallback(z, (String) map.get(k0.KEY_CALLBACK_NAME), (String) map.get("___key_web_view_tag"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(final Map map) {
        cn.mucang.android.core.webview.protocol.d.a.e((String) map.get("data"), new cn.mucang.android.core.webview.protocol.d.a.InterfaceC0090a() { // from class: cn.mucang.android.core.webview.protocol.bridge.t
            @Override // cn.mucang.android.core.webview.protocol.d.a.InterfaceC0090a
            public final void a(boolean z) {
                this.f2883a.k(map, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(final Activity activity, final Map map) {
        if (Build.VERSION.SDK_INT >= 29 || cn.mucang.android.core.utils.z.a("android.permission.WRITE_EXTERNAL_STORAGE")) {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.webview.protocol.bridge.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2880a.m(map);
                }
            });
        } else {
            new androidx.appcompat.app.c.a(activity).setMessage("为了保存图片，请授予读写手机存储的权限").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.core.webview.protocol.bridge.j
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    cn.mucang.android.core.utils.z.c(activity);
                }
            }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(String str, long j, long j2, boolean z) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("completedCount", (Object) Long.valueOf(j));
        jSONObject.put("totalCount", (Object) Long.valueOf(j2));
        this.webView.getProtocolHandler().c(str, cn.mucang.android.core.webview.core.d.j(jSONObject, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void s(String str, String str2, String str3, String str4, File file, String str5, final String str6) {
        try {
            Uri uri = Uri.parse(str);
            String str7 = uri.getScheme() + "://" + uri.getHost();
            this.webView.getProtocolHandler().c(str6, cn.mucang.android.core.webview.core.d.j(new FileUploadApi(str7, str.replace(str7, ""), str2, str3, str4).uploadGeneral(file, str5, new cn.mucang.android.core.http.c.b() { // from class: cn.mucang.android.core.webview.protocol.bridge.o
                @Override // cn.mucang.android.core.http.c.b
                public final void a(long j, long j2, boolean z) {
                    this.f2873a.q(str6, j, j2, z);
                }
            }), null));
        } catch (Exception unused) {
            this.webView.getProtocolHandler().c(str6, cn.mucang.android.core.webview.core.d.f("error", 0));
        }
    }

    private void saveImage(final Map<String, String> map) {
        final Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing()) {
            return;
        }
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.core.webview.protocol.bridge.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f2871a.o(activityI, map);
            }
        });
    }

    private void saveImageCallback(boolean z, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            buildCallbackData(jSONObject, Boolean.valueOf(z), true, 0, "");
            cn.mucang.android.core.webview.c.b().c(cn.mucang.android.core.utils.y.g(str2), str, jSONObject.toJSONString());
            this.webView.getProtocolHandler().c(str, jSONObject.toString());
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.c("默认替换", e2);
        }
    }

    private void uploadFile(final String str, final String str2, final String str3, final String str4, final String str5, final String str6, final File file) {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.webview.protocol.bridge.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f2874a.s(str2, str3, str4, str6, file, str5, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:33:0x00ce  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [cn.mucang.android.core.webview.protocol.bridge.NativeJsBridge, cn.mucang.android.core.webview.protocol.bridge.j0] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v8 */
    public String uploadImage(Map<String, String> map) throws Throwable {
        File file;
        String str = map.get("data");
        JSONObject jSONObject = new JSONObject();
        if (n0.e(str)) {
            buildCallbackData(jSONObject, "", false, 0, "");
            return jSONObject.toString();
        }
        int iH = cn.mucang.android.core.utils.y.h(map.get("size"), 300);
        if (iH > 10240) {
            iH = 10240;
        }
        String str2 = map.get("bucket");
        String str3 = map.get("sign");
        if (n0.e(str2)) {
            str2 = "mcweb-image";
        }
        if (n0.e(str3)) {
            str3 = "V4cRZaKuTForV8Agl";
        }
        ?? r4 = 0;
        boolean z = false;
        File file2 = null;
        String path = null;
        file = null;
        file2 = null;
        File file3 = null;
        try {
            try {
                boolean zC = cn.mucang.android.core.webview.protocol.d.a.c(str);
                try {
                    if (zC) {
                        androidx.core.util.d<String, byte[]> dVarB = cn.mucang.android.core.webview.protocol.d.a.b(str.replace("\"", ""));
                        if (dVarB != null) {
                            String str4 = dVarB.f1148a;
                            if (str4 == null) {
                                str4 = BaseCamera.SUFFIX_JPEG;
                            } else if (!str4.startsWith(".")) {
                                str4 = "." + str4;
                            }
                            file = new File(MucangConfig.getContext().getCacheDir(), System.currentTimeMillis() + str4);
                            try {
                                cn.mucang.android.core.utils.j.t(dVarB.b, file);
                                path = file.getPath();
                            } catch (Exception e2) {
                                e = e2;
                                file3 = file;
                                z = zC;
                                cn.mucang.android.core.utils.t.c("e", e);
                                if (z && file3 != null && file3.exists()) {
                                    file3.delete();
                                }
                            } catch (Throwable th) {
                                th = th;
                                file2 = file;
                                r4 = zC;
                                if (r4 != 0 && file2 != null && file2.exists()) {
                                    file2.delete();
                                }
                                throw th;
                            }
                        } else {
                            file = null;
                        }
                    } else if (str.startsWith("http")) {
                        path = Uri.parse(str).getPath();
                        file = null;
                    } else {
                        file = null;
                    }
                    if (path == null) {
                        buildCallbackData(jSONObject, "", false, 0, "");
                        String string = jSONObject.toString();
                        if (zC && file != null && file.exists()) {
                            file.delete();
                        }
                        return string;
                    }
                    if (path.startsWith("/content:")) {
                        path = path.substring(1);
                    }
                    f.a.a.a.t.b bVar = new f.a.a.a.t.b(str2, str3);
                    f.a.a.a.t.a aVarB = bVar.b();
                    aVarB.d(iH * 1024);
                    bVar.d(aVarB);
                    ImageUploadResult imageUploadResultE = bVar.e(path);
                    if (imageUploadResultE == null) {
                        if (zC && file != null && file.exists()) {
                            file.delete();
                        }
                        file2 = null;
                        r4 = "";
                        buildCallbackData(jSONObject, "", false, 0, "");
                        return jSONObject.toString();
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("url", (Object) imageUploadResultE.getUrl());
                    buildCallbackData(jSONObject, jSONObject2, true, 0, "");
                    String string2 = jSONObject.toString();
                    if (zC && file != null && file.exists()) {
                        file.delete();
                    }
                    return string2;
                } catch (Exception e3) {
                    e = e3;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    @Override // cn.mucang.android.core.webview.protocol.bridge.k0
    protected void addFunction() {
        this.bridge.a(HAS_NAV_PROTOCOL, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.s
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2882a.hasNavProtocol(map);
            }
        });
        this.bridge.a(SAVE_IMAGE, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.u
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2884a.c(map);
            }
        });
        this.bridge.a(UPLOAD_IMAGE, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.l
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2870a.uploadImage(map);
            }
        });
        this.bridge.a(OPEN_APP, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.n
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return NativeJsBridge.d(map);
            }
        });
        this.bridge.a(CHECK_APP, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.r
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return NativeJsBridge.e(map);
            }
        });
        this.bridge.a(UPLOAD_FILE, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.k
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2869a.g(map);
            }
        });
    }
}
