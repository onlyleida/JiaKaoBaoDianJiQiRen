package com.loc;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.math3.optimization.direct.CMAESOptimizer;

/* JADX INFO: loaded from: classes4.dex */
public final class e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static boolean f12754g = false;
    private List<Messenger> B;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Context f12757e;
    private boolean t = false;
    private boolean u = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f12755a = null;
    b b = null;
    private long v = 0;
    private long w = 0;
    private en x = null;
    AMapLocation c = null;
    private long y = 0;
    private int z = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    a f12756d = null;
    private i A = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ei f12758f = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    HashMap<Messenger, Long> f12759h = new HashMap<>();
    fn i = null;
    long j = 0;
    long k = 0;
    String l = null;
    private boolean C = true;
    private String D = "";
    AMapLocationClientOption m = null;
    AMapLocationClientOption n = new AMapLocationClientOption();
    ServerSocket o = null;
    boolean p = false;
    Socket q = null;
    boolean r = false;
    c s = null;
    private final int E = 5000;
    private String F = "jsonp1";

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Bundle data;
            Messenger messenger;
            try {
                data = message.getData();
                try {
                    messenger = message.replyTo;
                    if (data != null) {
                        try {
                            if (!data.isEmpty()) {
                                if (!e.this.a(data.getString("c"))) {
                                    if (message.what == 1) {
                                        fn.a((String) null, 2102);
                                        en enVarB = e.b("invalid handlder scode!!!#1002");
                                        eh ehVar = new eh();
                                        ehVar.f("#1002");
                                        ehVar.e("conitue");
                                        e.this.a(messenger, enVarB, enVarB.k(), ehVar);
                                        return;
                                    }
                                    return;
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            try {
                                fi.a(th, "ApsServiceCore", "ActionHandler handlerMessage");
                            } catch (Throwable th2) {
                                fi.a(th2, "actionHandler", "handleMessage");
                                return;
                            }
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    messenger = null;
                }
            } catch (Throwable th4) {
                th = th4;
                data = null;
                messenger = null;
            }
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        if (data != null && !data.isEmpty()) {
                            e.this.a((Bundle) null);
                            e.this.c();
                        }
                        return;
                    }
                    if (i == 3) {
                        if (data != null && !data.isEmpty()) {
                            e.this.a((Bundle) null);
                            e.this.d();
                        }
                        return;
                    }
                    switch (i) {
                        case 9:
                            e.this.a(data);
                            e.this.i();
                            break;
                        case 10:
                            e.this.a(data);
                            e.this.a(messenger, data);
                            break;
                        case 11:
                            e.this.e();
                            break;
                        case 12:
                            e.this.a(messenger);
                            break;
                        case 13:
                            Messenger messenger2 = message.replyTo;
                            if (messenger2 != null && e.this.B != null && !e.this.B.contains(messenger2)) {
                                e.this.B.add(messenger2);
                                if (e.this.B.size() == 1) {
                                    e.this.h();
                                }
                            }
                            break;
                        case 14:
                            Messenger messenger3 = message.replyTo;
                            if (messenger3 != null && e.this.B != null && e.this.B.contains(messenger3)) {
                                e.this.B.remove(messenger3);
                            }
                            if (e.this.B != null && e.this.B.size() == 0) {
                                e.this.f12758f.g();
                            }
                            break;
                    }
                } else {
                    e.this.a(data);
                    e.this.c(messenger, data);
                }
            } else {
                e.this.a(data);
                e.this.b(messenger, data);
            }
            super.handleMessage(message);
        }
    }

    class b extends HandlerThread {
        public b(String str) {
            super(str);
        }

        @Override // android.os.HandlerThread
        protected final void onLooperPrepared() {
            try {
                try {
                    e.this.A = new i(e.this.f12757e);
                } catch (Throwable th) {
                    fi.a(th, "APSManager$ActionThread", "init 2");
                }
                try {
                    fh.b(e.this.f12757e);
                    fh.a(e.this.f12757e);
                } catch (Throwable th2) {
                    fi.a(th2, "APSManager$ActionThread", "init 3");
                }
                e.this.f12758f = new ei(false);
                super.onLooperPrepared();
            } catch (Throwable th3) {
                fi.a(th3, "APSManager$ActionThread", "onLooperPrepared");
            }
        }

        @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                super.run();
            } catch (Throwable th) {
                fi.a(th, "APSManager$ActionThread", "run");
            }
        }
    }

    class c extends Thread {
        c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            ServerSocket serverSocket;
            try {
                e eVar = e.this;
                if (!eVar.p) {
                    eVar.p = true;
                    eVar.o = new ServerSocket(43689);
                }
                while (true) {
                    e eVar2 = e.this;
                    if (!eVar2.p || (serverSocket = eVar2.o) == null) {
                        break;
                    }
                    eVar2.q = serverSocket.accept();
                    e eVar3 = e.this;
                    eVar3.a(eVar3.q);
                }
            } catch (Throwable th) {
                fi.a(th, "ApsServiceCore", "run");
            }
            super.run();
        }
    }

    public e(Context context) {
        this.f12757e = null;
        this.f12757e = context;
    }

    private static en a(int i, String str) {
        try {
            en enVar = new en("");
            enVar.setErrorCode(i);
            enVar.setLocationDetail(str);
            return enVar;
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "newInstanceAMapLoc");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Bundle bundle) {
        try {
            if (this.t) {
                return;
            }
            fi.a(this.f12757e);
            if (bundle != null) {
                this.n = fi.a(bundle.getBundle("optBundle"));
            }
            this.f12758f.a(this.f12757e);
            this.f12758f.a();
            a(this.n);
            this.f12758f.b();
            this.t = true;
            this.C = true;
            this.D = "";
            List<Messenger> list = this.B;
            if (list == null || list.size() <= 0) {
                return;
            }
            h();
        } catch (Throwable th) {
            this.C = false;
            th.printStackTrace();
            this.D = th.getMessage();
            fi.a(th, "ApsServiceCore", "init");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Messenger messenger) {
        this.f12759h.remove(messenger);
    }

    private static void a(Messenger messenger, int i, Bundle bundle) {
        if (messenger != null) {
            try {
                Message messageObtain = Message.obtain();
                messageObtain.setData(bundle);
                messageObtain.what = i;
                messenger.send(messageObtain);
            } catch (Throwable th) {
                fi.a(th, "ApsServiceCore", "sendMessage");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Messenger messenger, AMapLocation aMapLocation, String str, eh ehVar) {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(AMapLocation.class.getClassLoader());
        bundle.putParcelable("loc", aMapLocation);
        bundle.putString("nb", str);
        bundle.putParcelable("statics", ehVar);
        this.f12759h.put(messenger, Long.valueOf(fp.b()));
        a(messenger, 1, bundle);
    }

    private void a(AMapLocationClientOption aMapLocationClientOption) {
        try {
            ei eiVar = this.f12758f;
            if (eiVar != null) {
                eiVar.a(aMapLocationClientOption);
            }
            if (aMapLocationClientOption != null) {
                f12754g = aMapLocationClientOption.isKillProcess();
                if (this.m != null && (aMapLocationClientOption.isOffset() != this.m.isOffset() || aMapLocationClientOption.isNeedAddress() != this.m.isNeedAddress() || aMapLocationClientOption.isLocationCacheEnable() != this.m.isLocationCacheEnable() || this.m.getGeoLanguage() != aMapLocationClientOption.getGeoLanguage())) {
                    this.w = 0L;
                    this.c = null;
                }
                this.m = aMapLocationClientOption;
            }
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "setExtra");
        }
    }

    private void a(BufferedReader bufferedReader) throws Exception {
        String[] strArrSplit;
        String[] strArrSplit2;
        String[] strArrSplit3;
        String line = bufferedReader.readLine();
        int iE = CMAESOptimizer.DEFAULT_MAXITERATIONS;
        if (line != null && line.length() > 0 && (strArrSplit = line.split(" ")) != null && strArrSplit.length > 1 && (strArrSplit2 = strArrSplit[1].split("\\?")) != null && strArrSplit2.length > 1 && (strArrSplit3 = strArrSplit2[1].split("&")) != null && strArrSplit3.length > 0) {
            for (String str : strArrSplit3) {
                String[] strArrSplit4 = str.split("=");
                if (strArrSplit4 != null && strArrSplit4.length > 1) {
                    if ("to".equals(strArrSplit4[0])) {
                        iE = fp.e(strArrSplit4[1]);
                    }
                    if ("callback".equals(strArrSplit4[0])) {
                        this.F = strArrSplit4[1];
                    }
                }
            }
        }
        fi.i = iE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Socket socket) {
        BufferedReader bufferedReader;
        if (socket == null) {
            return;
        }
        try {
            int i = fi.i;
            String str = null;
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream(), "UTF-8"));
                try {
                    a(bufferedReader);
                    String strG = g();
                    fi.i = i;
                    try {
                        c(strG);
                        try {
                            bufferedReader.close();
                            socket.close();
                        } catch (Throwable th) {
                            fi.a(th, "apm", "inSocetLn part3");
                        }
                    } catch (Throwable th2) {
                        try {
                            fi.a(th2, "apm", "inSocetLn part2");
                            try {
                                bufferedReader.close();
                                socket.close();
                            } catch (Throwable th3) {
                                fi.a(th3, "apm", "inSocetLn part3");
                            }
                        } catch (Throwable th4) {
                            try {
                                bufferedReader.close();
                                socket.close();
                            } catch (Throwable th5) {
                                fi.a(th5, "apm", "inSocetLn part3");
                            }
                            throw th4;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                    try {
                        str = this.F + "&&" + this.F + "({'package':'" + this.f12755a + "','error_code':1,'error':'params error'})";
                        fi.a(th, "apm", "inSocetLn");
                        fi.i = i;
                        try {
                            c(str);
                            try {
                                bufferedReader.close();
                                socket.close();
                            } catch (Throwable th7) {
                                fi.a(th7, "apm", "inSocetLn part3");
                            }
                        } catch (Throwable th8) {
                            try {
                                fi.a(th8, "apm", "inSocetLn part2");
                                try {
                                    bufferedReader.close();
                                    socket.close();
                                } catch (Throwable th9) {
                                    fi.a(th9, "apm", "inSocetLn part3");
                                }
                            } catch (Throwable th10) {
                                try {
                                    bufferedReader.close();
                                    socket.close();
                                } catch (Throwable th11) {
                                    fi.a(th11, "apm", "inSocetLn part3");
                                }
                                throw th10;
                            }
                        }
                    } catch (Throwable th12) {
                        fi.i = i;
                        try {
                            c(str);
                            try {
                                bufferedReader.close();
                                socket.close();
                            } catch (Throwable th13) {
                                th = th13;
                                fi.a(th, "apm", "inSocetLn part3");
                                throw th12;
                            }
                        } catch (Throwable th14) {
                            try {
                                fi.a(th14, "apm", "inSocetLn part2");
                                try {
                                    bufferedReader.close();
                                    socket.close();
                                } catch (Throwable th15) {
                                    th = th15;
                                    fi.a(th, "apm", "inSocetLn part3");
                                    throw th12;
                                }
                            } catch (Throwable th16) {
                                try {
                                    bufferedReader.close();
                                    socket.close();
                                } catch (Throwable th17) {
                                    fi.a(th17, "apm", "inSocetLn part3");
                                }
                                throw th16;
                            }
                        }
                        throw th12;
                    }
                }
            } catch (Throwable th18) {
                th = th18;
                bufferedReader = null;
            }
        } catch (Throwable th19) {
            fi.a(th19, "apm", "inSocetLn part4");
        }
    }

    private AMapLocationClientOption b(Bundle bundle) {
        AMapLocationClientOption aMapLocationClientOptionA = fi.a(bundle.getBundle("optBundle"));
        a(aMapLocationClientOptionA);
        try {
            String string = bundle.getString("d");
            if (!TextUtils.isEmpty(string)) {
                n.a(string);
            }
        } catch (Throwable th) {
            try {
                fi.a(th, "APSManager", "doLocation setUmidToken");
            } catch (Throwable th2) {
                fi.a(th2, "APSManager", "parseBundle");
            }
        }
        return aMapLocationClientOptionA;
    }

    static /* synthetic */ en b(String str) {
        return a(10, str);
    }

    private void b(Messenger messenger) {
        try {
            this.f12758f.e();
            if (fh.k()) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("installMockApp", true);
                a(messenger, 9, bundle);
            }
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "initAuth");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Messenger messenger, Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.isEmpty() || this.u) {
                    return;
                }
                this.u = true;
                b(messenger);
            } catch (Throwable th) {
                fi.a(th, "ApsServiceCore", "doInitAuth");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Messenger messenger, Bundle bundle) {
        String str;
        i iVar;
        if (bundle != null) {
            try {
                if (bundle.isEmpty()) {
                    return;
                }
                eh ehVar = new eh();
                ehVar.e("conitue");
                AMapLocationClientOption aMapLocationClientOptionB = b(bundle);
                if (this.f12759h.containsKey(messenger) && !aMapLocationClientOptionB.isOnceLocation()) {
                    if (fp.b() - this.f12759h.get(messenger).longValue() < 800) {
                        return;
                    }
                }
                AMapLocation aMapLocationA = null;
                if (!this.C) {
                    this.x = a(9, "init error : " + this.D + "#0901");
                    ehVar.f("#0901");
                    en enVar = this.x;
                    a(messenger, enVar, enVar.k(), ehVar);
                    fn.a((String) null, 2091);
                    return;
                }
                long jB = fp.b();
                if (fp.a(this.x) && jB - this.w < 600) {
                    en enVar2 = this.x;
                    a(messenger, enVar2, enVar2.k(), ehVar);
                    this.f12758f.a(this.x, 3);
                    return;
                }
                ehVar.c(fp.b());
                try {
                    en enVarA = this.f12758f.a(ehVar);
                    this.x = enVarA;
                    if (enVarA.getLocationType() == 6 || this.x.getLocationType() == 5) {
                        this.f12758f.a(this.x, 2);
                    } else if (this.x.getLocationType() == 2) {
                        this.f12758f.a(this.x, 3);
                    } else if (this.x.getLocationType() == 4) {
                        this.f12758f.a(this.x, 4);
                    }
                    this.x = this.f12758f.a(this.x);
                } catch (Throwable th) {
                    fn.a((String) null, 2081);
                    ehVar.f("#0801");
                    this.x = a(8, "loc error : " + th.getMessage() + "#0801");
                    fi.a(th, "ApsServiceCore", "run part2");
                }
                if (fp.a(this.x)) {
                    this.w = fp.b();
                }
                if (this.x == null) {
                    this.x = a(8, "loc is null#0801");
                    ehVar.f("#0801");
                }
                en enVar3 = this.x;
                if (enVar3 != null) {
                    String strK = enVar3.k();
                    aMapLocationA = this.x.m123clone();
                    str = strK;
                } else {
                    str = null;
                }
                try {
                    if (aMapLocationClientOptionB.isLocationCacheEnable() && (iVar = this.A) != null) {
                        aMapLocationA = iVar.a(aMapLocationA, str, aMapLocationClientOptionB.getLastLocationLifeCycle());
                    }
                } catch (Throwable th2) {
                    fi.a(th2, "ApsServiceCore", "fixLastLocation");
                }
                a(messenger, aMapLocationA, str, ehVar);
            } catch (Throwable th3) {
                fi.a(th3, "ApsServiceCore", "doLocation");
            }
        }
    }

    private void c(String str) throws IOException {
        PrintStream printStream = new PrintStream(this.q.getOutputStream(), true, "UTF-8");
        printStream.println("HTTP/1.0 200 OK");
        printStream.println("Content-Length:" + str.getBytes("UTF-8").length);
        printStream.println();
        printStream.println(str);
        printStream.close();
    }

    public static void f() {
        f12754g = false;
    }

    private String g() {
        StringBuilder sb;
        String str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (fp.e(this.f12757e)) {
            sb = new StringBuilder();
            sb.append(this.F);
            sb.append("&&");
            sb.append(this.F);
            sb.append("({'package':'");
            sb.append(this.f12755a);
            str = "','error_code':36,'error':'app is background'})";
        } else {
            en enVar = this.x;
            if (enVar == null || jCurrentTimeMillis - enVar.getTime() > DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
                try {
                    this.x = this.f12758f.a(new eh());
                } catch (Throwable th) {
                    fi.a(th, "ApsServiceCore", "getSocketLocResult");
                }
            }
            en enVar2 = this.x;
            if (enVar2 == null) {
                sb = new StringBuilder();
                sb.append(this.F);
                sb.append("&&");
                sb.append(this.F);
                sb.append("({'package':'");
                sb.append(this.f12755a);
                str = "','error_code':8,'error':'unknown error'})";
            } else if (enVar2.getErrorCode() != 0) {
                sb = new StringBuilder();
                sb.append(this.F);
                sb.append("&&");
                sb.append(this.F);
                sb.append("({'package':'");
                sb.append(this.f12755a);
                sb.append("','error_code':");
                sb.append(this.x.getErrorCode());
                sb.append(",'error':'");
                sb.append(this.x.getErrorInfo());
                str = "'})";
            } else {
                sb = new StringBuilder();
                sb.append(this.F);
                sb.append("&&");
                sb.append(this.F);
                sb.append("({'package':'");
                sb.append(this.f12755a);
                sb.append("','error_code':0,'error':'','location':{'y':");
                sb.append(this.x.getLatitude());
                sb.append(",'precision':");
                sb.append(this.x.getAccuracy());
                sb.append(",'x':");
                sb.append(this.x.getLongitude());
                str = "},'version_code':'5.6.2','version':'5.6.2'})";
            }
        }
        sb.append(str);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        try {
            ei eiVar = this.f12758f;
            if (eiVar == null || eiVar == null) {
                return;
            }
            eiVar.a(this.f12756d);
            this.f12758f.f();
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "startColl");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        try {
            fh.c(this.f12757e);
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "doCallOtherSer");
        }
    }

    public final void a() {
        try {
            this.i = new fn();
            b bVar = new b("amapLocCoreThread");
            this.b = bVar;
            bVar.setPriority(5);
            this.b.start();
            this.f12756d = new a(this.b.getLooper());
            this.B = new ArrayList();
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "onCreate");
        }
    }

    public final void a(Intent intent) {
        a aVar;
        if (!"true".equals(intent.getStringExtra("as")) || (aVar = this.f12756d) == null) {
            return;
        }
        aVar.sendEmptyMessageDelayed(9, 100L);
    }

    final void a(Messenger messenger, Bundle bundle) {
        float fA;
        if (bundle != null) {
            try {
                if (!bundle.isEmpty() && fh.h()) {
                    double d2 = bundle.getDouble("lat");
                    double d3 = bundle.getDouble("lon");
                    float f2 = bundle.getFloat("radius");
                    long j = bundle.getLong("time");
                    b(bundle);
                    AMapLocation aMapLocation = new AMapLocation("gps");
                    aMapLocation.setLatitude(d2);
                    aMapLocation.setLocationType(1);
                    aMapLocation.setLongitude(d3);
                    aMapLocation.setAccuracy(f2);
                    aMapLocation.setTime(j);
                    this.f12758f.a(aMapLocation);
                    AMapLocationClientOption aMapLocationClientOption = this.m;
                    if (aMapLocationClientOption == null || aMapLocationClientOption.isNeedAddress()) {
                        AMapLocation aMapLocation2 = this.c;
                        if (aMapLocation2 != null) {
                            fA = fp.a(new double[]{d2, d3, aMapLocation2.getLatitude(), this.c.getLongitude()});
                            if (fA < fh.i() * 3) {
                                Bundle bundle2 = new Bundle();
                                bundle2.setClassLoader(AMapLocation.class.getClassLoader());
                                bundle2.putInt("I_MAX_GEO_DIS", fh.i() * 3);
                                bundle2.putInt("I_MIN_GEO_DIS", fh.i());
                                bundle2.putParcelable("loc", this.c);
                                a(messenger, 6, bundle2);
                            }
                        } else {
                            fA = -1.0f;
                        }
                        if (fA == -1.0f || fA > fh.i()) {
                            a(bundle);
                            this.c = this.f12758f.a(d2, d3);
                        }
                    }
                }
            } catch (Throwable th) {
                fi.a(th, "ApsServiceCore", "doLocationGeo");
            }
        }
    }

    public final boolean a(String str) {
        if (TextUtils.isEmpty(this.l)) {
            this.l = fi.b(this.f12757e);
        }
        return !TextUtils.isEmpty(str) && str.equals(this.l);
    }

    public final Handler b() {
        return this.f12756d;
    }

    public final void b(Intent intent) {
        String stringExtra = intent.getStringExtra("a");
        if (!TextUtils.isEmpty(stringExtra)) {
            l.a(this.f12757e, stringExtra);
        }
        String stringExtra2 = intent.getStringExtra("b");
        this.f12755a = stringExtra2;
        k.a(stringExtra2);
        String stringExtra3 = intent.getStringExtra("d");
        if (TextUtils.isEmpty(stringExtra3)) {
            return;
        }
        n.a(stringExtra3);
    }

    public final void c() {
        try {
            if (this.r) {
                return;
            }
            c cVar = new c();
            this.s = cVar;
            cVar.start();
            this.r = true;
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "startSocket");
        }
    }

    public final void d() {
        try {
            Socket socket = this.q;
            if (socket != null) {
                socket.close();
            }
        } catch (Throwable th) {
            fi.a(th, "ApsServiceCore", "doStopScocket 1");
        }
        try {
            ServerSocket serverSocket = this.o;
            if (serverSocket != null) {
                serverSocket.close();
            }
        } catch (Throwable th2) {
            fi.a(th2, "ApsServiceCore", "doStopScocket 2");
        }
        try {
            c cVar = this.s;
            if (cVar != null) {
                cVar.interrupt();
            }
        } catch (Throwable unused) {
        }
        this.s = null;
        this.o = null;
        this.p = false;
        this.r = false;
    }

    public final void e() {
        try {
            HashMap<Messenger, Long> map = this.f12759h;
            if (map != null) {
                map.clear();
                this.f12759h = null;
            }
            try {
                List<Messenger> list = this.B;
                if (list != null) {
                    list.clear();
                }
            } catch (Throwable th) {
                fi.a(th, "apm", "des1");
            }
            i iVar = this.A;
            if (iVar != null) {
                iVar.c();
                this.A = null;
            }
            d();
            this.t = false;
            this.u = false;
            this.f12758f.d();
            a aVar = this.f12756d;
            if (aVar != null) {
                aVar.removeCallbacksAndMessages(null);
            }
            this.f12756d = null;
            b bVar = this.b;
            if (bVar != null) {
                if (Build.VERSION.SDK_INT >= 18) {
                    try {
                        fl.a(bVar, (Class<?>) HandlerThread.class, "quitSafely", new Object[0]);
                    } catch (Throwable unused) {
                        this.b.quit();
                    }
                } else {
                    bVar.quit();
                }
            }
            this.b = null;
            if (this.i != null && this.j != 0 && this.k != 0) {
                long jB = fp.b() - this.j;
                fn.a(this.f12757e, this.i.c(this.f12757e), this.i.d(this.f12757e), this.k, jB);
                this.i.e(this.f12757e);
            }
            fn.a(this.f12757e);
            am.b();
            if (f12754g) {
                Process.killProcess(Process.myPid());
            }
        } catch (Throwable th2) {
            fi.a(th2, "apm", "tdest");
        }
    }
}
