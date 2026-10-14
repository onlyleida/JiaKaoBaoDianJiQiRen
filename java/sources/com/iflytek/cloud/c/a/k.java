package com.iflytek.cloud.c.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.RequestListener;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.WakeuperListener;
import com.iflytek.cloud.WakeuperResult;
import com.iflytek.cloud.msc.util.FileUtil;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.cloud.util.FileDownloadListener;
import com.iflytek.cloud.util.ResourceUtil;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class k extends com.iflytek.cloud.a.f.e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f12330e = "respath";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f12331f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f12332g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f12333h;
    private String i;
    private String j;
    private String k;
    private String l;
    private boolean m;
    private com.iflytek.cloud.a.d.d n;
    private com.iflytek.cloud.msc.util.b o;

    private final class a implements FileDownloadListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private FileDownloadListener f12334a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f12337f;
        private final int b = 0;
        private final int c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f12335d = 2;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f12336e = 3;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Handler f12338g = new HandlerC0240a(Looper.getMainLooper());

        /* JADX INFO: renamed from: com.iflytek.cloud.c.a.k$a$a, reason: collision with other inner class name */
        class HandlerC0240a extends Handler {
            HandlerC0240a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (a.this.f12334a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    a.this.f12334a.onStart();
                } else if (i == 1) {
                    a.this.f12334a.onProgress(message.arg1);
                } else if (i == 2) {
                    a.this.f12334a.onCompleted((String) message.obj, null);
                } else if (i == 3) {
                    a.this.f12334a.onCompleted(null, (SpeechError) message.obj);
                }
                super.handleMessage(message);
            }
        }

        public a(boolean z, FileDownloadListener fileDownloadListener) {
            this.f12334a = null;
            this.f12337f = false;
            this.f12337f = z;
            this.f12334a = fileDownloadListener;
        }

        @Override // com.iflytek.cloud.util.FileDownloadListener
        public void onCompleted(String str, SpeechError speechError) {
            com.iflytek.cloud.msc.util.log.a.a("DownloadonFinish", null);
            if (speechError != null) {
                DebugLog.LogD("onCompleted:errorcode:" + speechError.getErrorCode());
                this.f12338g.sendMessage(this.f12338g.obtainMessage(3, speechError));
                return;
            }
            DebugLog.LogD("onCompleted:filePath:" + str);
            if (!this.f12337f) {
                if (!TextUtils.isEmpty(str)) {
                    k.this.o.b("ivw_config_path", str);
                    k.this.o.b("cfg_threshold", k.this.o.a("cfg_threstemp", (String) null));
                }
                k.this.a(false);
            }
            this.f12338g.sendMessage(this.f12338g.obtainMessage(2, str));
        }

        @Override // com.iflytek.cloud.util.FileDownloadListener
        public void onProgress(int i) {
            this.f12338g.sendMessage(this.f12338g.obtainMessage(1, i, 0, null));
        }

        @Override // com.iflytek.cloud.util.FileDownloadListener
        public void onStart() {
            com.iflytek.cloud.msc.util.log.a.a("DownloadonStart", null);
            DebugLog.LogD("onStart");
            this.f12338g.sendMessage(this.f12338g.obtainMessage(0, null));
        }
    }

    private final class b implements WakeuperListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WakeuperListener f12341a;
        private Handler b = new a(Looper.getMainLooper());

        class a extends Handler {
            a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Message message2;
                if (b.this.f12341a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    b.this.f12341a.onError((SpeechError) message.obj);
                } else if (i != 2) {
                    if (i == 4) {
                        b.this.f12341a.onResult((WakeuperResult) message.obj);
                    } else if (i == 5) {
                        b.this.f12341a.onVolumeChanged(message.arg1);
                    } else if (i == 6 && (message2 = (Message) message.obj) != null) {
                        b.this.f12341a.onEvent(message2.what, message2.arg1, message2.arg2, (Bundle) message2.obj);
                    }
                } else if (!(b.this.f12341a instanceof b)) {
                    b.this.f12341a.onBeginOfSpeech();
                }
                super.handleMessage(message);
            }
        }

        public b(WakeuperListener wakeuperListener) {
            this.f12341a = null;
            this.f12341a = wakeuperListener;
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onBeginOfSpeech() {
            DebugLog.LogD("onBeginOfSpeech");
            this.b.sendMessage(this.b.obtainMessage(2, 0, 0, null));
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onError(SpeechError speechError) {
            DebugLog.LogE("error:" + speechError.getErrorCode());
            if (!k.this.f()) {
                k.this.a(true);
                return;
            }
            a();
            this.b.sendMessage(this.b.obtainMessage(0, speechError));
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onEvent(int i, int i2, int i3, Bundle bundle) {
            Message messageObtain = Message.obtain();
            messageObtain.what = i;
            messageObtain.arg1 = i2;
            messageObtain.arg2 = i3;
            messageObtain.obj = bundle;
            this.b.sendMessage(this.b.obtainMessage(6, 0, 0, messageObtain));
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onResult(WakeuperResult wakeuperResult) {
            if (!((com.iflytek.cloud.a.f.d) k.this).mSessionParams.a(SpeechConstant.KEEP_ALIVE, true)) {
                a();
            }
            this.b.sendMessage(this.b.obtainMessage(4, 1, 0, wakeuperResult));
        }

        @Override // com.iflytek.cloud.WakeuperListener
        public void onVolumeChanged(int i) {
            DebugLog.LogD("onVolumeChanged");
            this.b.sendMessage(this.b.obtainMessage(5, i, 0, null));
        }

        protected void a() {
            com.iflytek.cloud.msc.util.g.b(((com.iflytek.cloud.a.f.e) k.this).f12265a, Boolean.valueOf(k.this.f12331f), null);
        }
    }

    private class c implements RequestListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RequestListener f12343a;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f12345e;
        private final int b = 0;
        private final int c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f12344d = 2;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Handler f12346f = new a(Looper.getMainLooper());

        class a extends Handler {
            a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (c.this.f12343a == null) {
                    return;
                }
                int i = message.what;
                if (i == 0) {
                    c.this.f12343a.onEvent(message.arg1, (Bundle) message.obj);
                } else if (i == 1) {
                    c.this.f12343a.onBufferReceived((byte[]) message.obj);
                } else if (i == 2) {
                    c.this.f12343a.onCompleted((SpeechError) message.obj);
                }
                super.handleMessage(message);
            }
        }

        public c(boolean z, RequestListener requestListener) {
            this.f12343a = null;
            this.f12345e = false;
            this.f12345e = z;
            this.f12343a = requestListener;
        }

        @Override // com.iflytek.cloud.RequestListener
        public void onBufferReceived(byte[] bArr) {
            DebugLog.LogD("onCompleted");
            try {
                if (!this.f12345e && k.this.h()) {
                    JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                    String string = jSONObject.getString("dlurl");
                    String string2 = jSONObject.getString("md5");
                    String strSubstring = string.substring(string.lastIndexOf(File.separator) + 1, string.lastIndexOf("."));
                    DebugLog.LogD("resName:" + strSubstring);
                    String resFilePath = FileUtil.getResFilePath(((com.iflytek.cloud.a.f.e) k.this).f12265a, strSubstring);
                    DebugLog.LogD("auto download path:" + resFilePath);
                    k.this.a(string, resFilePath, string2, this.f12345e, null);
                    k.this.o.b("cfg_threstemp", jSONObject.getString("thresholder"));
                }
            } catch (Exception unused) {
                onCompleted(new SpeechError(ErrorCode.ERROR_INVALID_DATA));
            }
            this.f12346f.sendMessage(this.f12346f.obtainMessage(1, bArr));
        }

        @Override // com.iflytek.cloud.RequestListener
        public void onCompleted(SpeechError speechError) {
            com.iflytek.cloud.msc.util.log.a.a("RequestResult", null);
            this.f12346f.sendMessage(this.f12346f.obtainMessage(2, speechError));
        }

        @Override // com.iflytek.cloud.RequestListener
        public void onEvent(int i, Bundle bundle) {
            com.iflytek.cloud.msc.util.log.a.a("RequestResult", null);
            this.f12346f.sendMessage(this.f12346f.obtainMessage(0, i, 0, bundle));
        }
    }

    public k(Context context) {
        super(context);
        this.f12331f = false;
        this.f12332g = null;
        this.f12333h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = false;
        this.n = null;
        this.o = null;
        this.o = com.iflytek.cloud.msc.util.b.a(this.f12265a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        int iA = this.mSessionParams.a(SpeechConstant.IVW_NET_MODE, 0);
        return 2 == iA || (4 == iA && com.iflytek.cloud.msc.util.j.b(this.f12265a));
    }

    @Override // com.iflytek.cloud.a.f.e
    public void cancel(boolean z) {
        synchronized (this.b) {
            com.iflytek.cloud.a.d.d dVar = this.n;
            if (dVar != null) {
                dVar.a();
                this.n = null;
            }
            com.iflytek.cloud.msc.util.g.b(this.f12265a, Boolean.valueOf(this.f12331f), null);
            super.cancel(z);
        }
    }

    @Override // com.iflytek.cloud.a.f.e, com.iflytek.cloud.a.f.d
    public boolean destroy() {
        boolean zDestroy;
        synchronized (this.b) {
            com.iflytek.cloud.a.d.d dVar = this.n;
            if (dVar != null) {
                dVar.a();
                this.n = null;
            }
            zDestroy = super.destroy();
        }
        return zDestroy;
    }

    public boolean isListening() {
        boolean zC;
        synchronized (this.b) {
            zC = c();
        }
        return zC;
    }

    public int startListening(WakeuperListener wakeuperListener) {
        int iA;
        synchronized (this.b) {
            try {
                this.f12332g = this.mSessionParams.e("ivw_res_path");
                this.j = this.mSessionParams.e("ivw_threshold");
                this.f12333h = null;
                if (!TextUtils.isEmpty(this.f12332g)) {
                    int iIndexOf = this.f12332g.indexOf(VoiceWakeuperAidl.PARAMS_SEPARATE);
                    if (iIndexOf <= 0 || this.f12332g.length() <= iIndexOf) {
                        this.i = this.f12332g;
                    } else {
                        this.f12333h = this.f12332g.substring(0, iIndexOf);
                        this.i = this.f12332g.substring(iIndexOf + 1);
                    }
                }
                if (h()) {
                    this.k = ResourceUtil.generateResourcePath(this.f12265a, ResourceUtil.RESOURCE_TYPE.path, this.o.a("ivw_config_path", (String) null));
                    com.iflytek.cloud.msc.util.b bVar = this.o;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long jA = bVar.a("ivw_query_last_time", 0L);
                    long jA2 = this.mSessionParams.a("ivw_query_period", 86400000L);
                    DebugLog.LogD("query ivw res period: " + jA2);
                    if (jCurrentTimeMillis - jA >= jA2) {
                        String str = g() ? this.k : this.i;
                        DebugLog.LogD("begin resource query res path: " + str);
                        a(str, false, null);
                        bVar.b("ivw_query_last_time", jCurrentTimeMillis);
                    } else if (jCurrentTimeMillis == jA) {
                        bVar.b("ivw_query_last_time", jCurrentTimeMillis);
                    }
                }
                iA = a(wakeuperListener);
            } catch (Throwable th) {
                DebugLog.LogE(th);
                iA = ErrorCode.ERROR_UNKNOWN;
            }
        }
        return iA;
    }

    public void stopListening() {
        synchronized (this.b) {
            if (this.c != null) {
                ((com.iflytek.cloud.a.d.c) this.c).a(true);
            }
        }
    }

    public int writeAudio(byte[] bArr, int i, int i2) {
        synchronized (this.b) {
            if (this.c == null) {
                DebugLog.LogD("writeAudio error, no active session.");
                return ErrorCode.ERROR_ENGINE_CALL_FAIL;
            }
            if (bArr != null && bArr.length > 0) {
                if (bArr.length < i2 + i) {
                    DebugLog.LogD("writeAudio error,buffer length < length.");
                    return 10109;
                }
                if (-1 != ((com.iflytek.cloud.a.d.c) this.c).getAudioSource()) {
                    return 10106;
                }
                return ((com.iflytek.cloud.a.d.c) this.c).a(bArr, i, i2);
            }
            DebugLog.LogD("writeAudio error,buffer is null.");
            return 10109;
        }
    }

    private synchronized void b(boolean z) {
        this.m = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean f() {
        return this.m;
    }

    private boolean g() {
        if (TextUtils.isEmpty(this.k)) {
            return false;
        }
        if (TextUtils.isEmpty(this.f12332g)) {
            return true;
        }
        return com.iflytek.cloud.a.d.d.b(com.iflytek.cloud.a.d.d.b(this.k, ""), com.iflytek.cloud.a.d.d.b(this.i, ""));
    }

    public int a(String str, boolean z, RequestListener requestListener) {
        synchronized (this.b) {
            if (TextUtils.isEmpty(str)) {
                DebugLog.LogE("respath is null. please set respath before startlisten");
                return ErrorCode.ERROR_IVW_INVALID_RESOURCE;
            }
            String strGenerateResourcePath = !z ? ResourceUtil.generateResourcePath(this.f12265a, ResourceUtil.RESOURCE_TYPE.path, this.o.a("ivw_config_path", (String) null)) : null;
            com.iflytek.cloud.a.d.d dVar = this.n;
            if (dVar != null) {
                dVar.a();
                this.n = null;
            }
            this.n = new com.iflytek.cloud.a.d.d(this.f12265a);
            JSONObject jSONObjectC = com.iflytek.cloud.a.d.d.c(str, strGenerateResourcePath);
            if (jSONObjectC == null) {
                DebugLog.LogE("ivw invalid resource");
                return ErrorCode.ERROR_IVW_INVALID_RESOURCE;
            }
            String str2 = (String) jSONObjectC.remove(f12330e);
            if (!TextUtils.isEmpty(str2) && !str2.equals(str)) {
                this.k = str2;
                this.l = this.o.a("cfg_threshold", (String) null);
            } else {
                this.k = null;
                this.o.a("ivw_config_path");
                this.o.a("cfg_threshold");
            }
            com.iflytek.cloud.msc.util.log.a.a("SendRequest", null);
            DebugLog.LogD(jSONObjectC.toString());
            return this.n.a(jSONObjectC, new c(z, requestListener));
        }
    }

    public int a(String str, String str2, String str3, boolean z, FileDownloadListener fileDownloadListener) {
        synchronized (this.b) {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                com.iflytek.cloud.msc.util.log.a.a("CreateDownload", null);
                com.iflytek.cloud.a.d.d dVar = this.n;
                if (dVar != null) {
                    dVar.a();
                    this.n = null;
                }
                com.iflytek.cloud.a.d.d dVar2 = new com.iflytek.cloud.a.d.d(this.f12265a);
                this.n = dVar2;
                return dVar2.a(str, str2, str3, new a(z, fileDownloadListener));
            }
            return ErrorCode.ERROR_INVALID_PARAM;
        }
    }

    private int a(WakeuperListener wakeuperListener) {
        int errorCode;
        String str;
        synchronized (this.b) {
            errorCode = 0;
            try {
                if (h() && g()) {
                    DebugLog.LogD("ivw use resource from server");
                    if (TextUtils.isEmpty(this.f12333h)) {
                        str = this.k;
                    } else {
                        str = this.f12333h + VoiceWakeuperAidl.PARAMS_SEPARATE + this.k;
                    }
                    this.mSessionParams.b("ivw_res_path", str);
                    this.mSessionParams.b("ivw_threshold", (String) null);
                    b(false);
                } else {
                    this.mSessionParams.b("ivw_res_path", this.f12332g);
                    this.mSessionParams.b("ivw_threshold", this.j);
                    b(true);
                }
                this.f12331f = this.mSessionParams.a(SpeechConstant.KEY_REQUEST_FOCUS, false);
                if (this.c != null && this.c.isRunning()) {
                    ((com.iflytek.cloud.a.d.c) this.c).cancel(false);
                }
                if (this.mSessionParams.a(SpeechConstant.IVW_CHANNEL_NUM, 0) == 0) {
                    this.c = new com.iflytek.cloud.a.d.c(this.f12265a, this.mSessionParams, a("wakeuper"));
                } else {
                    this.c = new com.iflytek.cloud.a.d.a(this.f12265a, this.mSessionParams, a("wakeuper"));
                }
                com.iflytek.cloud.msc.util.g.a(this.f12265a, Boolean.valueOf(this.f12331f), null);
                ((com.iflytek.cloud.a.d.c) this.c).a(new b(wakeuperListener));
            } catch (SpeechError e2) {
                errorCode = e2.getErrorCode();
                DebugLog.LogE(e2);
            } catch (Throwable th) {
                errorCode = ErrorCode.ERROR_UNKNOWN;
                DebugLog.LogE(th);
            }
        }
        return errorCode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        DebugLog.LogD("restart wake ,isError:" + z);
        synchronized (this.b) {
            try {
                if (z) {
                    this.k = null;
                    a(((com.iflytek.cloud.a.d.c) this.c).a());
                } else if (this.c.isRunning()) {
                    this.k = ResourceUtil.generateResourcePath(this.f12265a, ResourceUtil.RESOURCE_TYPE.path, this.o.a("ivw_config_path", (String) null));
                    this.l = this.o.a("cfg_threshold", (String) null);
                    a(((com.iflytek.cloud.a.d.c) this.c).a());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
