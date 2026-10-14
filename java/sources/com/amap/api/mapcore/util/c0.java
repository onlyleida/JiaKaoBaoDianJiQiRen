package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;

/* JADX INFO: loaded from: classes5.dex */
public class c0 {
    public static String n = "";
    public static boolean o = false;
    private static volatile c0 p = null;
    public static String q = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f10534a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f10535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private l0 f10536e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r0 f10537f;
    public g0 k;
    i0 l;
    private boolean b = true;
    List<az> c = new Vector();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ExecutorService f10538g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ExecutorService f10539h = null;
    private ExecutorService i = null;
    e j = null;
    f0 m = null;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f10540a;

        a(String str) {
            this.f10540a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            az azVarJ = c0.this.J(this.f10540a);
            if (azVarJ != null) {
                try {
                    if (!azVarJ.v().equals(azVarJ.f10472h) && !azVarJ.v().equals(azVarJ.j)) {
                        String pinyin = azVarJ.getPinyin();
                        if (pinyin.length() > 0) {
                            String strN = c0.this.f10537f.n(pinyin);
                            if (strN == null) {
                                strN = azVarJ.getVersion();
                            }
                            if (c0.q.length() > 0 && strN != null && c0.this.l(c0.q, strN)) {
                                azVarJ.C();
                            }
                        }
                    }
                    if (c0.this.f10535d != null) {
                        synchronized (c0.this) {
                            try {
                                c0.this.f10535d.b(azVarJ);
                            } catch (Throwable th) {
                                e6.r(th, "OfflineDownloadManager", "checkUpdatefinally");
                            }
                        }
                        return;
                    }
                    return;
                } catch (Exception unused) {
                    if (c0.this.f10535d != null) {
                        synchronized (c0.this) {
                            try {
                                c0.this.f10535d.b(azVarJ);
                            } catch (Throwable th2) {
                                e6.r(th2, "OfflineDownloadManager", "checkUpdatefinally");
                            }
                            return;
                        }
                    }
                    return;
                } catch (Throwable th3) {
                    if (c0.this.f10535d != null) {
                        synchronized (c0.this) {
                            try {
                                c0.this.f10535d.b(azVarJ);
                            } catch (Throwable th4) {
                                e6.r(th4, "OfflineDownloadManager", "checkUpdatefinally");
                            }
                        }
                    }
                    throw th3;
                }
            }
            c0.this.N();
            d0 d0VarF = new e0(c0.this.f10534a, c0.q).f();
            if (c0.this.f10535d != null) {
                if (d0VarF == null) {
                    if (c0.this.f10535d != null) {
                        synchronized (c0.this) {
                            try {
                                c0.this.f10535d.b(azVarJ);
                            } catch (Throwable th5) {
                                e6.r(th5, "OfflineDownloadManager", "checkUpdatefinally");
                            }
                        }
                        return;
                    }
                    return;
                }
                if (d0VarF.c()) {
                    c0.this.m();
                }
            }
            if (c0.this.f10535d != null) {
                synchronized (c0.this) {
                    try {
                        c0.this.f10535d.b(azVarJ);
                    } catch (Throwable th6) {
                        e6.r(th6, "OfflineDownloadManager", "checkUpdatefinally");
                    }
                }
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ az f10541a;
        final /* synthetic */ boolean b;

        b(az azVar, boolean z) {
            this.f10541a = azVar;
            this.b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f10541a.v().equals(this.f10541a.f10470f)) {
                    if (c0.this.f10535d != null) {
                        c0.this.f10535d.c(this.f10541a);
                        return;
                    }
                    return;
                }
                if (this.f10541a.getState() != 7 && this.f10541a.getState() != -1) {
                    c0.this.l.a(this.f10541a);
                    if (c0.this.f10535d != null) {
                        c0.this.f10535d.c(this.f10541a);
                        return;
                    }
                    return;
                }
                c0.this.l.a(this.f10541a);
                if (!this.b || c0.this.f10535d == null) {
                    return;
                }
                c0.this.f10535d.c(this.f10541a);
            } catch (Throwable th) {
                e6.r(th, "requestDelete", "removeExcecRunnable");
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ az f10542a;

        c(az azVar) {
            this.f10542a = azVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (c0.this.b) {
                    c0.this.N();
                    d0 d0VarF = new e0(c0.this.f10534a, c0.q).f();
                    if (d0VarF != null) {
                        c0.this.b = false;
                        if (d0VarF.c()) {
                            c0.this.m();
                        }
                    }
                }
                this.f10542a.setVersion(c0.q);
                this.f10542a.y();
            } catch (AMapException e2) {
                e2.printStackTrace();
            } catch (Throwable th) {
                e6.r(th, "OfflineDownloadManager", "startDownloadRunnable");
            }
        }
    }

    public interface d {
        void a();

        void a(az azVar);

        void b(az azVar);

        void c(az azVar);
    }

    class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                message.getData();
                Object obj = message.obj;
                if (obj instanceof az) {
                    az azVar = (az) obj;
                    z0.h("OfflineMapHandler handleMessage CitObj  name: " + azVar.getCity() + " complete: " + azVar.getcompleteCode() + " status: " + azVar.getState());
                    if (c0.this.f10535d != null) {
                        c0.this.f10535d.a(azVar);
                    }
                } else {
                    z0.h("Do not callback by CityObject! ");
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private c0(Context context) {
        this.f10534a = context;
    }

    public static void D() {
        p = null;
        o = true;
    }

    private void E(az azVar) throws AMapException {
        N();
        if (azVar == null) {
            throw new AMapException(AMapException.ERROR_INVALID_PARAMETER);
        }
        if (this.i == null) {
            this.i = new ThreadPoolExecutor(1, 2, 1, TimeUnit.SECONDS, new LinkedBlockingQueue(), new e3("AMapOfflineDownload"), new ThreadPoolExecutor.AbortPolicy());
        }
        try {
            this.i.execute(new c(azVar));
        } catch (Throwable th) {
            e6.r(th, "startDownload", "downloadExcecRunnable");
        }
    }

    public static void G(String str) {
        n = str;
    }

    private void H() {
        try {
            m0 m0VarA = this.f10537f.a("000001");
            if (m0VarA != null) {
                this.f10537f.m("000001");
                m0VarA.a("100000");
                this.f10537f.e(m0VarA);
            }
        } catch (Throwable th) {
            e6.r(th, "OfflineDownloadManager", "changeBadCase");
        }
    }

    private void I(String str) throws JSONException {
        g0 g0Var;
        List<OfflineMapProvince> listF = z0.f(str, this.f10534a.getApplicationContext());
        if (listF == null || listF.size() == 0 || (g0Var = this.k) == null) {
            return;
        }
        g0Var.i(listF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public az J(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        synchronized (this.c) {
            for (az azVar : this.c) {
                if (str.equals(azVar.getCity()) || str.equals(azVar.getPinyin())) {
                    return azVar;
                }
            }
            return null;
        }
    }

    private void K() {
        if ("".equals(r3.p0(this.f10534a))) {
            return;
        }
        File file = new File(r3.p0(this.f10534a) + "offlinemapv4.png");
        String strD = !file.exists() ? z0.d(this.f10534a, "offlinemapv4.png") : z0.n(file);
        if (strD != null) {
            try {
                I(strD);
            } catch (JSONException e2) {
                if (file.exists()) {
                    file.delete();
                }
                e6.r(e2, "MapDownloadManager", "paseJson io");
                e2.printStackTrace();
            }
        }
    }

    private az L(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        synchronized (this.c) {
            for (az azVar : this.c) {
                if (str.equals(azVar.getCode())) {
                    return azVar;
                }
            }
            return null;
        }
    }

    private void M() {
        for (m0 m0Var : this.f10537f.c()) {
            if (m0Var != null && m0Var.b() != null && m0Var.f().length() >= 1) {
                int i = m0Var.l;
                if (i != 4 && i != 7 && i >= 0) {
                    m0Var.l = 3;
                }
                az azVarJ = J(m0Var.b());
                if (azVarJ != null) {
                    String strD = m0Var.d();
                    if (strD == null || !l(q, strD)) {
                        azVarJ.q(m0Var.l);
                        azVarJ.setCompleteCode(m0Var.i());
                    } else {
                        azVarJ.q(7);
                    }
                    if (m0Var.d().length() > 0) {
                        azVarJ.setVersion(m0Var.d());
                    }
                    List<String> listJ = this.f10537f.j(m0Var.f());
                    StringBuffer stringBuffer = new StringBuffer();
                    Iterator<String> it = listJ.iterator();
                    while (it.hasNext()) {
                        stringBuffer.append(it.next());
                        stringBuffer.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                    }
                    azVarJ.t(stringBuffer.toString());
                    g0 g0Var = this.k;
                    if (g0Var != null) {
                        g0Var.c(azVarJ);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() throws AMapException {
        if (!r3.t0(this.f10534a)) {
            throw new AMapException(AMapException.ERROR_CONNECTION);
        }
    }

    public static c0 b(Context context) {
        if (p == null) {
            synchronized (c0.class) {
                if (p == null && !o) {
                    p = new c0(context.getApplicationContext());
                }
            }
        }
        return p;
    }

    private void f(az azVar, boolean z) {
        if (this.l == null) {
            this.l = new i0(this.f10534a);
        }
        if (this.f10539h == null) {
            this.f10539h = new ThreadPoolExecutor(1, 2, 1, TimeUnit.SECONDS, new LinkedBlockingQueue(), new e3("AMapOfflineRemove"), new ThreadPoolExecutor.AbortPolicy());
        }
        try {
            this.f10539h.execute(new b(azVar, z));
        } catch (Throwable th) {
            e6.r(th, "requestDelete", "removeExcecRunnable");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l(String str, String str2) {
        for (int i = 0; i < str2.length(); i++) {
            try {
                if (str.charAt(i) > str2.charAt(i)) {
                    return true;
                }
                if (str.charAt(i) < str2.charAt(i)) {
                    return false;
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public void A(String str) throws AMapException {
        az azVarL = L(str);
        if (azVarL == null) {
            throw new AMapException(AMapException.ERROR_INVALID_PARAMETER);
        }
        E(azVarL);
    }

    public String C(String str) {
        az azVarJ;
        return (str == null || (azVarJ = J(str)) == null) ? "" : azVarJ.getAdcode();
    }

    public void F() {
        synchronized (this) {
            this.f10535d = null;
        }
    }

    public void d() {
        this.f10537f = r0.b(this.f10534a.getApplicationContext());
        H();
        e eVar = new e(this.f10534a.getMainLooper());
        this.j = eVar;
        this.k = new g0(this.f10534a, eVar);
        this.f10536e = l0.a(1);
        G(r3.p0(this.f10534a));
        try {
            K();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        synchronized (this.c) {
            Iterator<OfflineMapProvince> it = this.k.b().iterator();
            while (it.hasNext()) {
                for (OfflineMapCity offlineMapCity : it.next().getCityList()) {
                    if (offlineMapCity != null) {
                        this.c.add(new az(this.f10534a, offlineMapCity));
                    }
                }
            }
        }
        f0 f0Var = new f0(this.f10534a);
        this.m = f0Var;
        f0Var.start();
    }

    public void e(az azVar) {
        f(azVar, false);
    }

    public void g(d dVar) {
        this.f10535d = dVar;
    }

    public void h(String str) {
        try {
            if (str == null) {
                d dVar = this.f10535d;
                if (dVar != null) {
                    dVar.b(null);
                    return;
                }
                return;
            }
            if (this.f10538g == null) {
                this.f10538g = new ThreadPoolExecutor(1, 2, 1, TimeUnit.SECONDS, new LinkedBlockingQueue(), new e3("AMapOfflineCheckUpdate"), new ThreadPoolExecutor.AbortPolicy());
            }
            this.f10538g.execute(new a(str));
        } catch (Throwable th) {
            e6.r(th, "OfflineDownloadManager", "checkUpdate");
        }
    }

    public void i(ArrayList<m0> arrayList) {
        M();
        d dVar = this.f10535d;
        if (dVar != null) {
            try {
                dVar.a();
            } catch (Throwable th) {
                e6.r(th, "OfflineDownloadManager", "verifyCallBack");
            }
        }
    }

    protected void m() throws AMapException {
        if (this.k == null) {
            return;
        }
        j0 j0Var = new j0(this.f10534a, "");
        j0Var.i(this.f10534a);
        List<OfflineMapProvince> listF = j0Var.f();
        if (this.c != null) {
            this.k.i(listF);
        }
        List<az> list = this.c;
        if (list != null) {
            synchronized (list) {
                Iterator<OfflineMapProvince> it = this.k.b().iterator();
                while (it.hasNext()) {
                    for (OfflineMapCity offlineMapCity : it.next().getCityList()) {
                        for (az azVar : this.c) {
                            if (offlineMapCity.getPinyin().equals(azVar.getPinyin())) {
                                String version = azVar.getVersion();
                                if (azVar.getState() == 4 && q.length() > 0 && l(q, version)) {
                                    azVar.C();
                                    azVar.setUrl(offlineMapCity.getUrl());
                                    azVar.G();
                                } else {
                                    azVar.setCity(offlineMapCity.getCity());
                                    azVar.setUrl(offlineMapCity.getUrl());
                                    azVar.G();
                                    azVar.setAdcode(offlineMapCity.getAdcode());
                                    azVar.setVersion(offlineMapCity.getVersion());
                                    azVar.setSize(offlineMapCity.getSize());
                                    azVar.setCode(offlineMapCity.getCode());
                                    azVar.setJianpin(offlineMapCity.getJianpin());
                                    azVar.setPinyin(offlineMapCity.getPinyin());
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public void n(az azVar) {
        try {
            l0 l0Var = this.f10536e;
            if (l0Var != null) {
                l0Var.e(azVar, this.f10534a, null);
            }
        } catch (gb e2) {
            e2.printStackTrace();
        }
    }

    public boolean p(String str) {
        return J(str) != null;
    }

    public void r() {
        synchronized (this.c) {
            for (az azVar : this.c) {
                if (azVar.v().equals(azVar.f10472h) || azVar.v().equals(azVar.f10471g)) {
                    w(azVar);
                    azVar.z();
                }
            }
        }
    }

    public void s(az azVar) {
        g0 g0Var = this.k;
        if (g0Var != null) {
            g0Var.c(azVar);
        }
        e eVar = this.j;
        if (eVar != null) {
            Message messageObtainMessage = eVar.obtainMessage();
            messageObtainMessage.obj = azVar;
            this.j.sendMessage(messageObtainMessage);
        }
    }

    public void t(String str) {
        az azVarJ = J(str);
        if (azVarJ != null) {
            w(azVarJ);
            f(azVarJ, true);
            return;
        }
        d dVar = this.f10535d;
        if (dVar != null) {
            try {
                dVar.c(azVarJ);
            } catch (Throwable th) {
                e6.r(th, "OfflineDownloadManager", "remove");
            }
        }
    }

    public void v() {
        synchronized (this.c) {
            for (az azVar : this.c) {
                if (azVar.v().equals(azVar.f10472h)) {
                    azVar.z();
                    break;
                }
            }
        }
    }

    public void w(az azVar) {
        l0 l0Var = this.f10536e;
        if (l0Var != null) {
            l0Var.d(azVar);
        }
    }

    public void x(String str) throws AMapException {
        az azVarJ = J(str);
        if (str == null || str.length() < 1 || azVarJ == null) {
            throw new AMapException(AMapException.ERROR_INVALID_PARAMETER);
        }
        E(azVarJ);
    }

    public void y() {
        ExecutorService executorService = this.f10538g;
        if (executorService != null && !executorService.isShutdown()) {
            this.f10538g.shutdownNow();
        }
        ExecutorService executorService2 = this.i;
        if (executorService2 != null && !executorService2.isShutdown()) {
            this.i.shutdownNow();
        }
        f0 f0Var = this.m;
        if (f0Var != null) {
            if (f0Var.isAlive()) {
                this.m.interrupt();
            }
            this.m = null;
        }
        e eVar = this.j;
        if (eVar != null) {
            eVar.removeCallbacksAndMessages(null);
            this.j = null;
        }
        l0 l0Var = this.f10536e;
        if (l0Var != null) {
            l0Var.f();
        }
        g0 g0Var = this.k;
        if (g0Var != null) {
            g0Var.w();
        }
        D();
        this.b = true;
        F();
    }

    public void z(az azVar) {
        l0 l0Var = this.f10536e;
        if (l0Var != null) {
            l0Var.g(azVar);
        }
    }
}
