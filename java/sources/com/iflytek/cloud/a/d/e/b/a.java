package com.iflytek.cloud.a.d.e.b;

import android.os.Environment;
import android.os.MemoryFile;
import android.text.TextUtils;
import com.iflytek.cloud.ErrorCode;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.msc.util.log.DebugLog;
import com.iflytek.msc.AIMIC;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes4.dex */
public class a extends com.iflytek.cloud.a.d.e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f12206a;
    private static final Object b = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f12210g;
    private final com.iflytek.cloud.a.d.e.b.c i;
    private final d j;
    private int k;
    private final b l;
    private int m;
    private final int n;
    private final int o;
    private final int p;
    private com.iflytek.cloud.a.d.e.b.b q;
    private final c r;
    private int s;
    private int t;
    private int u;
    private int v;
    private boolean w;
    private final int c = 49152;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f12207d = 491520;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f12208e = 983040;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f12209f = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final byte[] f12211h = new byte[256];

    private class c implements com.iflytek.cloud.a.d.e.b.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f12218a;
        private final int b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f12219d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final com.iflytek.cloud.a.d.e.b.c f12220e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final com.iflytek.cloud.a.d.e.b.c f12221f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private volatile com.iflytek.cloud.a.d.e.b.c f12222g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private volatile com.iflytek.cloud.a.d.e.b.c f12223h;
        private final String i;
        private Thread j;
        private boolean k;
        private boolean l;

        /* JADX INFO: renamed from: com.iflytek.cloud.a.d.e.b.a$c$a, reason: collision with other inner class name */
        class C0230a extends Thread {
            C0230a(String str) {
                super(str);
            }

            /* JADX WARN: Code duplicated, block: B:46:0x0105  */
            /* JADX WARN: Code duplicated, block: B:65:0x0140 A[Catch: all -> 0x013c, TRY_LEAVE, TryCatch #5 {all -> 0x013c, blocks: (B:61:0x0138, B:65:0x0140), top: B:82:0x0138 }] */
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Throwable th;
                MemoryFile memoryFile;
                RandomAccessFile randomAccessFile;
                SpeechError speechError;
                DebugLog.LogD("alsa data save thread enter");
                try {
                    memoryFile = new MemoryFile(null, 61952000);
                    try {
                        memoryFile.allowPurging(false);
                        int iIntValue = 0;
                        boolean z = false;
                        while (c.this.l) {
                            synchronized (c.this.f12223h) {
                                while (!c.this.f12223h.i()) {
                                    com.iflytek.cloud.a.d.e.b.c.a aVarK = c.this.f12223h.k();
                                    memoryFile.writeBytes((byte[]) aVarK.getKey(), 0, iIntValue, ((Integer) aVarK.getValue()).intValue());
                                    iIntValue += ((Integer) aVarK.getValue()).intValue();
                                    c.this.f12223h.a(aVarK);
                                }
                                c.this.f12223h.a();
                            }
                            if (61440000 <= iIntValue) {
                                z = true;
                                iIntValue = 0;
                            }
                            synchronized (this) {
                                if (c.this.f12223h.i()) {
                                    wait();
                                }
                            }
                        }
                        synchronized (c.this.f12223h) {
                            while (!c.this.f12223h.i()) {
                                try {
                                    com.iflytek.cloud.a.d.e.b.c.a aVarK2 = c.this.f12223h.k();
                                    memoryFile.writeBytes((byte[]) aVarK2.getKey(), 0, iIntValue, ((Integer) aVarK2.getValue()).intValue());
                                    iIntValue += ((Integer) aVarK2.getValue()).intValue();
                                    c.this.f12223h.a(aVarK2);
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                            c.this.f12223h.a();
                        }
                        randomAccessFile = new RandomAccessFile(c.this.i, "rw");
                        int i = z ? 61440000 - iIntValue : 0;
                        if (i > 0) {
                            try {
                                if (c.this.a(randomAccessFile, memoryFile, iIntValue, i)) {
                                    speechError = null;
                                } else {
                                    speechError = new SpeechError(ErrorCode.ERROR_UNKNOWN);
                                    DebugLog.LogE("save last memory file data failed!");
                                }
                                if (speechError == null && !c.this.a(randomAccessFile, memoryFile, 0, Math.min(61440000, iIntValue))) {
                                    speechError = new SpeechError(ErrorCode.ERROR_UNKNOWN);
                                    DebugLog.LogE("save current memory file data failed!");
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                DebugLog.LogE(th);
                                DebugLog.LogE("保存文件失败！");
                                speechError = new SpeechError(th, ErrorCode.ERROR_UNKNOWN);
                            }
                        } else {
                            speechError = null;
                            if (speechError == null) {
                                speechError = new SpeechError(ErrorCode.ERROR_UNKNOWN);
                                DebugLog.LogE("save current memory file data failed!");
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        randomAccessFile = null;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    memoryFile = null;
                    randomAccessFile = null;
                }
                if (memoryFile != null) {
                    try {
                        memoryFile.close();
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                    } catch (Throwable th6) {
                        DebugLog.LogE(th6);
                        DebugLog.LogE("关闭文件异常！");
                    }
                } else if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                c.this.j = null;
                if (speechError != null) {
                    a.this.l.a(speechError);
                }
                DebugLog.LogD("alsa data save thread exit");
            }
        }

        private c() {
            this.f12218a = 0;
            this.b = 49152;
            this.c = 512000;
            this.f12219d = 61440000;
            com.iflytek.cloud.a.d.e.b.c cVar = new com.iflytek.cloud.a.d.e.b.c(512000L, 49152, 0L, true, false);
            this.f12220e = cVar;
            com.iflytek.cloud.a.d.e.b.c cVar2 = new com.iflytek.cloud.a.d.e.b.c(512000L, 49152, 0L, true, false);
            this.f12221f = cVar2;
            this.f12222g = cVar;
            this.f12223h = cVar2;
            this.i = Environment.getExternalStorageDirectory().getPath() + "/aimic_alsa.pcm";
            this.j = null;
            this.k = false;
            this.l = false;
        }

        private void c() {
            C0230a c0230a = new C0230a("AlsaAudioSavingThread");
            this.j = c0230a;
            c0230a.start();
        }

        public void b() {
            this.l = false;
            if (a()) {
                a(0, true);
            }
        }

        @Override // com.iflytek.cloud.a.d.e.b.b.c
        public void a(byte[] bArr, int i) {
            if (a()) {
                b(bArr, i);
            }
            int iA = a.this.a(bArr, 0, i);
            this.f12218a = iA;
            if (iA != 0) {
                a.this.l.a(new SpeechError(this.f12218a));
            }
        }

        private void b(byte[] bArr, int i) {
            if (this.j == null) {
                File file = new File(this.i);
                if (file.exists()) {
                    file.delete();
                }
                this.f12220e.a();
                this.f12221f.a();
                this.f12222g = this.f12220e;
                this.f12223h = this.f12221f;
                this.l = true;
                c();
            }
            try {
                a(i, false);
                synchronized (this.f12222g) {
                    try {
                        this.f12222g.a(bArr, 0, i);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                DebugLog.LogE(th2);
                a.this.l.a(new SpeechError(th2, ErrorCode.ERROR_UNKNOWN));
            }
        }

        public void a(boolean z) {
            this.k = z;
        }

        private boolean a() {
            return this.k;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(RandomAccessFile randomAccessFile, MemoryFile memoryFile, int i, int i2) {
            try {
                if (randomAccessFile == null || memoryFile == null || i < 0 || i2 < 0) {
                    DebugLog.LogE("saveFileFromMemory error: arguments error");
                    return false;
                }
                int i3 = i2 + i;
                byte[] bArr = new byte[65536];
                while (i3 > i) {
                    int iMin = Math.min(65536, i3 - i);
                    if (memoryFile.readBytes(bArr, i, 0, iMin) != iMin) {
                        DebugLog.LogE("saveFileFromMemory error: read bytes length error!");
                        return false;
                    }
                    i += iMin;
                    randomAccessFile.write(bArr, 0, iMin);
                }
                return true;
            } catch (Throwable th) {
                DebugLog.LogE(th);
                return false;
            }
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0021 A[Catch: all -> 0x0077, TryCatch #3 {, blocks: (B:5:0x0005, B:14:0x0028, B:9:0x0017, B:11:0x0021, B:13:0x0026, B:12:0x0024), top: B:55:0x0005 }] */
        /* JADX WARN: Code duplicated, block: B:12:0x0024 A[Catch: all -> 0x0077, TryCatch #3 {, blocks: (B:5:0x0005, B:14:0x0028, B:9:0x0017, B:11:0x0021, B:13:0x0026, B:12:0x0024), top: B:55:0x0005 }] */
        private void a(int i, boolean z) {
            com.iflytek.cloud.a.d.e.b.c cVar;
            com.iflytek.cloud.a.d.e.b.c cVar2;
            synchronized (this.f12222g) {
                if (z) {
                    cVar = this.f12222g;
                    if (cVar.equals(this.f12221f)) {
                        cVar2 = this.f12220e;
                    } else {
                        cVar2 = this.f12221f;
                    }
                    this.f12222g = cVar2;
                } else if (this.f12222g.e() + ((long) i) >= 512000) {
                    cVar = this.f12222g;
                    if (cVar.equals(this.f12221f)) {
                        cVar2 = this.f12220e;
                    } else {
                        cVar2 = this.f12221f;
                    }
                    this.f12222g = cVar2;
                } else {
                    cVar = null;
                }
                throw th;
            }
            if (cVar != null) {
                synchronized (this.f12223h) {
                    this.f12223h = cVar;
                }
                Thread thread = this.j;
                if (thread != null) {
                    synchronized (thread) {
                        if (Thread.State.WAITING == this.j.getState()) {
                            this.j.notify();
                        }
                    }
                }
                synchronized (this.f12222g) {
                    if (0 != this.f12222g.e()) {
                        DebugLog.LogE("Error: buffer is not null when exchanged!");
                        a.this.l.a(new SpeechError(ErrorCode.ERROR_UNKNOWN));
                    }
                }
            }
        }
    }

    private class d extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f12225a;
        private final int b;
        private final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.iflytek.cloud.a.d.e.b.c f12226d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f12227e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final HashMap<Integer, Integer> f12228f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private SpeechError f12229g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f12230h;
        private boolean i;

        public d(String str) {
            super(str);
            this.f12225a = 1;
            this.b = 16;
            this.c = 1000;
            this.f12226d = a.this.i;
            this.f12227e = 10;
            HashMap<Integer, Integer> map = new HashMap<>();
            this.f12228f = map;
            this.f12229g = null;
            this.f12230h = System.currentTimeMillis();
            this.i = true;
            map.put(0, 1);
            map.put(1, 5);
            map.put(2, 10);
        }

        private void b(int i) {
            DebugLog.LogD("update priority enter, target priority: " + i + ", current priority: " + getPriority());
            if (i != getPriority()) {
                try {
                    LinkedList<ThreadGroup> linkedList = new LinkedList();
                    for (ThreadGroup threadGroup = getThreadGroup(); threadGroup != null; threadGroup = threadGroup.getParent()) {
                        DebugLog.LogD("thread group name: " + threadGroup.getName());
                        try {
                            if (i <= threadGroup.getMaxPriority()) {
                                DebugLog.LogD("get a thread group has target priority");
                                break;
                            } else {
                                threadGroup.checkAccess();
                                linkedList.addFirst(threadGroup);
                            }
                        } catch (Throwable th) {
                            DebugLog.LogE("exception while improve thread group priority");
                            DebugLog.LogE(th);
                        }
                    }
                    for (ThreadGroup threadGroup2 : linkedList) {
                        if (i > threadGroup2.getMaxPriority()) {
                            threadGroup2.setMaxPriority(i);
                        }
                    }
                    setPriority(i);
                    DebugLog.LogD("set thread priority to target, after that is: " + getPriority());
                } catch (Throwable th2) {
                    DebugLog.LogE("exception while set thread priority");
                    DebugLog.LogE(th2);
                }
            }
            DebugLog.LogD("update priority leave");
        }

        public SpeechError a() {
            return this.f12229g;
        }

        public void c() {
            this.f12229g = null;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i;
            Throwable th;
            int i2;
            int i3;
            UnsatisfiedLinkError e2;
            DebugLog.LogD("aimic audio writing thread enter");
            b(this.f12227e);
            int i4 = 0;
            while (true) {
                int i5 = 0;
                int iMin = 0;
                while (true) {
                    if (!a.this.i()) {
                        this.f12226d.a();
                        DebugLog.LogD("aimic audio writing thread exited");
                        return;
                    }
                    try {
                        com.iflytek.cloud.a.d.e.b.c.a aVarK = this.f12226d.k();
                        if (aVarK != null) {
                            i4++;
                            if (30 <= i4) {
                                try {
                                    DebugLog.LogD("current buf container size in aimic thread is " + this.f12226d.f());
                                    i4 = 0;
                                } catch (UnsatisfiedLinkError e3) {
                                    e2 = e3;
                                    i2 = iMin;
                                    i3 = i5;
                                    i = 0;
                                    DebugLog.LogE(e2);
                                    this.f12229g = new SpeechError(ErrorCode.ERROR_UNSATISFIED_LINK);
                                    i4 = i;
                                    i5 = i3;
                                    iMin = i2;
                                } catch (Throwable th2) {
                                    th = th2;
                                    i2 = iMin;
                                    i3 = i5;
                                    i = 0;
                                    DebugLog.LogE(th);
                                    this.f12229g = new SpeechError(ErrorCode.ERROR_UNKNOWN);
                                    i4 = i;
                                    i5 = i3;
                                    iMin = i2;
                                }
                            }
                            try {
                                int iAIMICAudioWrite = AIMIC.AIMICAudioWrite(AIMIC.getHandler(), (byte[]) aVarK.getKey(), 0, ((Integer) aVarK.getValue()).intValue());
                                this.f12226d.a(aVarK);
                                if (iAIMICAudioWrite == 0) {
                                    break;
                                }
                                DebugLog.LogE("AIMICAudioWrite error: " + iAIMICAudioWrite);
                                a.this.l.a(new SpeechError(iAIMICAudioWrite));
                                break;
                            } catch (UnsatisfiedLinkError e4) {
                                e = e4;
                                i3 = 0;
                                i2 = 0;
                                UnsatisfiedLinkError unsatisfiedLinkError = e;
                                i = i4;
                                e2 = unsatisfiedLinkError;
                                DebugLog.LogE(e2);
                                this.f12229g = new SpeechError(ErrorCode.ERROR_UNSATISFIED_LINK);
                                i4 = i;
                                i5 = i3;
                                iMin = i2;
                            } catch (Throwable th3) {
                                th = th3;
                                i3 = 0;
                                i2 = 0;
                                Throwable th4 = th;
                                i = i4;
                                th = th4;
                                DebugLog.LogE(th);
                                this.f12229g = new SpeechError(ErrorCode.ERROR_UNKNOWN);
                                i4 = i;
                                i5 = i3;
                                iMin = i2;
                            }
                        } else {
                            b();
                            if (1000 <= i5) {
                                try {
                                    synchronized (this) {
                                        try {
                                            if (this.f12226d.i()) {
                                                DebugLog.LogD("aimic audio writing will suspend");
                                                wait();
                                                DebugLog.LogD("aimic audio writing is waked");
                                            }
                                        } catch (Throwable th5) {
                                            throw th5;
                                        }
                                    }
                                    i5 = 0;
                                } catch (UnsatisfiedLinkError e5) {
                                    e = e5;
                                    i2 = iMin;
                                    i3 = 0;
                                    UnsatisfiedLinkError unsatisfiedLinkError2 = e;
                                    i = i4;
                                    e2 = unsatisfiedLinkError2;
                                    DebugLog.LogE(e2);
                                    this.f12229g = new SpeechError(ErrorCode.ERROR_UNSATISFIED_LINK);
                                    i4 = i;
                                    i5 = i3;
                                    iMin = i2;
                                } catch (Throwable th6) {
                                    th = th6;
                                    i2 = iMin;
                                    i3 = 0;
                                    Throwable th7 = th;
                                    i = i4;
                                    th = th7;
                                    DebugLog.LogE(th);
                                    this.f12229g = new SpeechError(ErrorCode.ERROR_UNKNOWN);
                                    i4 = i;
                                    i5 = i3;
                                    iMin = i2;
                                }
                            } else {
                                i5++;
                                iMin = Math.min(iMin + 1, 16);
                                Thread.sleep(iMin);
                            }
                        }
                    } catch (UnsatisfiedLinkError e6) {
                        int i6 = i5;
                        i = i4;
                        e2 = e6;
                        i2 = iMin;
                        i3 = i6;
                    } catch (Throwable th8) {
                        int i7 = i5;
                        i = i4;
                        th = th8;
                        i2 = iMin;
                        i3 = i7;
                    }
                    i4 = i;
                    i5 = i3;
                    iMin = i2;
                }
            }
        }

        public void a(int i) {
            Integer num = this.f12228f.get(Integer.valueOf(i));
            this.f12227e = num != null ? num.intValue() : this.f12227e;
            DebugLog.LogD("set priority, target aimic priority: " + i + ", real target priority: " + this.f12227e);
            b(this.f12227e);
        }

        private void b() {
            if (1 == a.this.k || 120000 < System.currentTimeMillis() - this.f12230h) {
                return;
            }
            long jC = this.f12226d.c();
            if (49152 < jC && jC + this.f12226d.e() > 491520) {
                boolean z = !this.i;
                this.i = z;
                if (!z) {
                    this.f12226d.b();
                }
            }
            this.f12230h = System.currentTimeMillis();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.iflytek.cloud.a.d.e.b.a$a] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    private a(String str) throws Throwable {
        int iIndexOf;
        int iAIMICNew = 0;
        this.f12210g = false;
        com.iflytek.cloud.a.d.e.b.c cVar = new com.iflytek.cloud.a.d.e.b.c(491520L, 49152, 245760L, false, false);
        this.i = cVar;
        d dVar = new d("AIMicAudioWritingThread");
        this.j = dVar;
        this.k = 2;
        String str2 = 0;
        str2 = 0;
        str2 = 0;
        b bVar = new b();
        this.l = bVar;
        this.m = 4000;
        this.n = 16000;
        this.o = 2;
        this.p = 1536;
        this.q = null;
        this.r = new c();
        this.s = 16000;
        this.t = 2;
        this.u = 1536;
        this.v = -3;
        this.w = false;
        DebugLog.LogD("aimic constructor enter: " + str);
        StringBuffer stringBuffer = new StringBuffer();
        if (!TextUtils.isEmpty(str)) {
            stringBuffer.append(str);
        }
        if (!AIMIC.isLoaded()) {
            if (str != null && (iIndexOf = str.indexOf(SpeechConstant.LIB_NAME)) >= 0 && iIndexOf < str.length()) {
                int iIndexOf2 = str.indexOf(44, iIndexOf);
                iIndexOf2 = iIndexOf2 < 0 ? str.length() : iIndexOf2;
                String strSubstring = str.substring(str.indexOf(61, iIndexOf) + 1, iIndexOf2);
                stringBuffer.delete(iIndexOf, iIndexOf2);
                str2 = strSubstring;
            }
            AIMIC.loadLibrary(str2);
        }
        if (!AIMIC.isValid() && (iAIMICNew = AIMIC.AIMICNew(com.iflytek.cloud.msc.util.d.a(stringBuffer.toString()), bVar)) != 0) {
            DebugLog.LogE("AIMICNew return error: " + iAIMICNew);
            AIMIC.AIMICDestroy(AIMIC.getHandler());
        }
        if (iAIMICNew != 0) {
            throw new SpeechError(iAIMICNew);
        }
        this.f12210g = true;
        dVar.start();
        int i = this.k;
        if (i == 0 || 2 == i) {
            cVar.a(491520L);
        }
        DebugLog.LogD("aimic constructor leave: " + iAIMICNew);
    }

    public static a h() {
        a aVar;
        DebugLog.LogD("aimic getAIMic enter");
        synchronized (b) {
            aVar = f12206a;
        }
        DebugLog.LogD("aimic getAIMic leave: " + aVar);
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        return this.f12210g;
    }

    private int j() {
        if (!i()) {
            return ErrorCode.ERROR_AIMIC_NOT_INIT;
        }
        com.iflytek.cloud.a.d.e.b.b bVarC = com.iflytek.cloud.a.d.e.b.b.c();
        this.q = bVarC;
        if (bVarC == null || bVarC.b() != this.t || this.q.f() != this.s || this.q.e() != this.u) {
            com.iflytek.cloud.a.d.e.b.b bVar = this.q;
            if (bVar != null) {
                bVar.h();
                this.q.a();
                this.q = null;
            }
            DebugLog.LogD("create new audio recorder");
            this.q = com.iflytek.cloud.a.d.e.b.b.a(this.t, this.s, this.u);
        }
        com.iflytek.cloud.a.d.e.b.b bVar2 = this.q;
        if (bVar2 == null) {
            return ErrorCode.ERROR_AIMIC_CREATE_HANDLE;
        }
        if (bVar2.g() && !this.r.equals(this.q.d())) {
            DebugLog.LogD("Current record listener is not this, recorder will be stoped.");
            this.q.h();
        }
        this.q.a(DebugLog.getShowLog() && DebugLog.a.detail.ordinal() >= DebugLog.getLogLevel().ordinal());
        if (this.q.g()) {
            DebugLog.LogD("audio recorder is recording.");
            return 0;
        }
        DebugLog.LogD("start audio recording.");
        return this.q.a(this.r);
    }

    private void k() {
        if (this.q != null) {
            DebugLog.LogD("stop audio record");
            this.q.h();
            this.r.b();
            this.q = null;
        }
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public int e() {
        int errorCode;
        DebugLog.LogD("aimic  reset enter");
        synchronized (this.f12209f) {
            try {
                try {
                    errorCode = i() ? AIMIC.AIMICResetEng(AIMIC.getHandler()) : ErrorCode.ERROR_AIMIC_NOT_INIT;
                } catch (Throwable th) {
                    DebugLog.LogE(th);
                    errorCode = ErrorCode.ERROR_UNKNOWN;
                }
            } catch (SpeechError e2) {
                DebugLog.LogE(e2);
                errorCode = e2.getErrorCode();
            } catch (UnsatisfiedLinkError e3) {
                DebugLog.LogE(e3);
                errorCode = ErrorCode.ERROR_UNSATISFIED_LINK;
            }
        }
        DebugLog.LogD("aimic  reset leave: " + errorCode);
        return errorCode;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public int f() {
        int iJ;
        DebugLog.LogD("aimic  startListening enter");
        synchronized (this.f12209f) {
            if (!this.w) {
                DebugLog.LogD("aimic  startListening clear old datas.");
                this.i.a();
            }
            if (i()) {
                int i = this.v;
                if (-3 == i) {
                    iJ = j();
                } else if (-1 != i) {
                    iJ = ErrorCode.ERROR_AIMIC_INVALID_PARA_VALUE;
                    DebugLog.LogE("startListening failed, invalid audio source: " + this.v);
                } else if (this.q != null) {
                    iJ = ErrorCode.ERROR_AIMIC_BUSY;
                    DebugLog.LogE("startListening failed, current internal recorder is not stoped!");
                } else {
                    iJ = 0;
                }
            } else {
                iJ = ErrorCode.ERROR_AIMIC_NOT_INIT;
            }
            this.w = iJ == 0;
        }
        DebugLog.LogD("aimic  startListening leave: " + iJ);
        return iJ;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void g() {
        DebugLog.LogD("aimic  stopListening enter");
        synchronized (this.f12209f) {
            b bVar = this.l;
            if (bVar == null || bVar.b()) {
                DebugLog.LogD("AIMic Listener is empty, audio recorder will stop recording.");
                k();
                this.w = false;
            }
        }
        DebugLog.LogD("aimic  stopListening leave");
    }

    private static class b implements AIMIC.Listener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashSet<com.iflytek.cloud.a.d.e.a.b> f12212a;
        private final HashSet<com.iflytek.cloud.a.d.e.a.InterfaceC0228a> b;
        private final Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Object f12213d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f12214e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f12215f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f12216g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final int f12217h;
        private final com.iflytek.cloud.a.d.e.b.c i;
        private final int j;
        private boolean k;
        private int l;

        private b() {
            this.f12212a = new HashSet<>();
            this.b = new HashSet<>();
            this.c = new Object();
            this.f12213d = new Object();
            this.f12214e = 32;
            this.f12215f = 4000;
            this.f12216g = 128000;
            this.f12217h = 512;
            this.i = new com.iflytek.cloud.a.d.e.b.c(128000L, 512, 0L, false, true);
            this.j = 1;
            this.k = true;
            this.l = 128000;
        }

        public void a() {
            HashSet<com.iflytek.cloud.a.d.e.a.b> hashSet = this.f12212a;
            if (hashSet != null) {
                hashSet.clear();
            }
            HashSet<com.iflytek.cloud.a.d.e.a.InterfaceC0228a> hashSet2 = this.b;
            if (hashSet2 != null) {
                hashSet2.clear();
            }
        }

        public boolean b() {
            HashSet<com.iflytek.cloud.a.d.e.a.InterfaceC0228a> hashSet;
            HashSet<com.iflytek.cloud.a.d.e.a.b> hashSet2 = this.f12212a;
            return (hashSet2 == null || hashSet2.isEmpty()) && ((hashSet = this.b) == null || hashSet.isEmpty());
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x009e */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x00ac, code lost:
        
            return;
         */
        @Override // com.iflytek.msc.AIMIC.Listener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onRecogAudio(byte[] r9, int r10, int r11, java.lang.Object r12) {
            /*
                r8 = this;
                java.lang.Object r0 = r8.f12213d     // Catch: java.lang.Throwable -> L9e
                monitor-enter(r0)     // Catch: java.lang.Throwable -> L9e
                boolean r1 = r8.k     // Catch: java.lang.Throwable -> L9b
                r2 = 0
                if (r1 == 0) goto L12
                java.util.HashSet<com.iflytek.cloud.a.d.e.a$a> r1 = r8.b     // Catch: java.lang.Throwable -> L9b
                boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L9b
                if (r1 == 0) goto L12
                r1 = 1
                goto L13
            L12:
                r1 = 0
            L13:
                r8.k = r1     // Catch: java.lang.Throwable -> L9b
                if (r1 == 0) goto L52
                com.iflytek.cloud.a.d.e.b.c r11 = r8.i     // Catch: java.lang.Throwable -> L9b
                long r11 = r11.e()     // Catch: java.lang.Throwable -> L9b
                long r3 = (long) r10     // Catch: java.lang.Throwable -> L9b
                long r3 = r3 + r11
                int r1 = r8.l     // Catch: java.lang.Throwable -> L9b
                long r5 = (long) r1     // Catch: java.lang.Throwable -> L9b
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 <= 0) goto L4c
                java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9b
                r9.<init>()     // Catch: java.lang.Throwable -> L9b
                r9.append(r11)     // Catch: java.lang.Throwable -> L9b
                java.lang.String r10 = " matched max buffering len: "
                r9.append(r10)     // Catch: java.lang.Throwable -> L9b
                int r10 = r8.l     // Catch: java.lang.Throwable -> L9b
                r9.append(r10)     // Catch: java.lang.Throwable -> L9b
                java.lang.String r10 = ", will be clean"
                r9.append(r10)     // Catch: java.lang.Throwable -> L9b
                java.lang.String r9 = r9.toString()     // Catch: java.lang.Throwable -> L9b
                com.iflytek.cloud.msc.util.log.DebugLog.LogD(r9)     // Catch: java.lang.Throwable -> L9b
                r8.k = r2     // Catch: java.lang.Throwable -> L9b
                com.iflytek.cloud.a.d.e.b.c r9 = r8.i     // Catch: java.lang.Throwable -> L9b
                r9.a()     // Catch: java.lang.Throwable -> L9b
                goto L99
            L4c:
                com.iflytek.cloud.a.d.e.b.c r11 = r8.i     // Catch: java.lang.Throwable -> L9b
                r11.a(r9, r2, r10)     // Catch: java.lang.Throwable -> L9b
                goto L99
            L52:
                java.util.HashSet<com.iflytek.cloud.a.d.e.a$a> r1 = r8.b     // Catch: java.lang.Throwable -> L9b
                java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L9b
            L58:
                boolean r3 = r1.hasNext()     // Catch: java.lang.Throwable -> L9b
                if (r3 == 0) goto L99
                java.lang.Object r3 = r1.next()     // Catch: java.lang.Throwable -> L9b
                com.iflytek.cloud.a.d.e.a$a r3 = (com.iflytek.cloud.a.d.e.a.InterfaceC0228a) r3     // Catch: java.lang.Throwable -> L9b
                com.iflytek.cloud.a.d.e.b.c r4 = r8.i     // Catch: java.lang.Throwable -> L9b
                boolean r4 = r4.i()     // Catch: java.lang.Throwable -> L9b
                if (r4 != 0) goto L95
                com.iflytek.cloud.a.d.e.b.c r4 = r8.i     // Catch: java.lang.Throwable -> L9b
            L6e:
                com.iflytek.cloud.a.d.e.b.c$a r4 = r4.k()     // Catch: java.lang.Throwable -> L9b
                if (r4 == 0) goto L90
                java.lang.Object r5 = r4.getKey()     // Catch: java.lang.Throwable -> L9b
                byte[] r5 = (byte[]) r5     // Catch: java.lang.Throwable -> L9b
                java.lang.Object r6 = r4.getValue()     // Catch: java.lang.Throwable -> L9b
                java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.lang.Throwable -> L9b
                int r6 = r6.intValue()     // Catch: java.lang.Throwable -> L9b
                r7 = 0
                r3.onRecogAudio(r5, r6, r2, r7)     // Catch: java.lang.Throwable -> L9b
                com.iflytek.cloud.a.d.e.b.c r5 = r8.i     // Catch: java.lang.Throwable -> L9b
                r5.a(r4)     // Catch: java.lang.Throwable -> L9b
                com.iflytek.cloud.a.d.e.b.c r4 = r8.i     // Catch: java.lang.Throwable -> L9b
                goto L6e
            L90:
                com.iflytek.cloud.a.d.e.b.c r4 = r8.i     // Catch: java.lang.Throwable -> L9b
                r4.a()     // Catch: java.lang.Throwable -> L9b
            L95:
                r3.onRecogAudio(r9, r10, r11, r12)     // Catch: java.lang.Throwable -> L9b
                goto L58
            L99:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L9b
                goto Lac
            L9b:
                r9 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L9b
                throw r9     // Catch: java.lang.Throwable -> L9e
            L9e:
                r9 = move-exception
                com.iflytek.cloud.msc.util.log.DebugLog.LogE(r9)
                com.iflytek.cloud.SpeechError r10 = new com.iflytek.cloud.SpeechError
                r11 = 20999(0x5207, float:2.9426E-41)
                r10.<init>(r9, r11)
                r8.a(r10)
            Lac:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.a.d.e.b.a.b.onRecogAudio(byte[], int, int, java.lang.Object):void");
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x001e */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
        
            return;
         */
        @Override // com.iflytek.msc.AIMIC.Listener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onWakeupAudio(byte[] r4, int r5, int r6, java.lang.Object r7) {
            /*
                r3 = this;
                java.lang.Object r0 = r3.c     // Catch: java.lang.Throwable -> L1e
                monitor-enter(r0)     // Catch: java.lang.Throwable -> L1e
                java.util.HashSet<com.iflytek.cloud.a.d.e.a$b> r1 = r3.f12212a     // Catch: java.lang.Throwable -> L1b
                java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L1b
            L9:
                boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L1b
                if (r2 == 0) goto L19
                java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L1b
                com.iflytek.cloud.a.d.e.a$b r2 = (com.iflytek.cloud.a.d.e.a.b) r2     // Catch: java.lang.Throwable -> L1b
                r2.onWakeupAudio(r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L1b
                goto L9
            L19:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
                goto L29
            L1b:
                r4 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
                throw r4     // Catch: java.lang.Throwable -> L1e
            L1e:
                r4 = move-exception
                com.iflytek.cloud.SpeechError r5 = new com.iflytek.cloud.SpeechError
                r6 = 20999(0x5207, float:2.9426E-41)
                r5.<init>(r4, r6)
                r3.a(r5)
            L29:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.a.d.e.b.a.b.onWakeupAudio(byte[], int, int, java.lang.Object):void");
        }

        @Override // com.iflytek.msc.AIMIC.Listener
        public void onWakeupMsg(int i, int i2, int i3, byte[] bArr, int i4, byte[] bArr2, int i5, byte[] bArr3, int i6) {
            try {
                DebugLog.LogS("onWakeupMsg enter");
                boolean z = true;
                if (1 == i) {
                    synchronized (this.f12213d) {
                        if (this.l <= 0) {
                            z = false;
                        }
                        this.k = z;
                    }
                }
                synchronized (this.c) {
                    Iterator<com.iflytek.cloud.a.d.e.a.b> it = this.f12212a.iterator();
                    while (it.hasNext()) {
                        it.next().onWakeupMsg(i, i2, i3, bArr, i4, bArr2, i5, bArr3, i6);
                    }
                }
                DebugLog.LogS("onWakeupMsg leave");
            } catch (Throwable th) {
                DebugLog.LogE(th);
                a(new SpeechError(th, ErrorCode.ERROR_UNKNOWN));
            }
        }

        public void b(com.iflytek.cloud.a.d.e.a.b bVar) {
            if (bVar != null) {
                synchronized (this.c) {
                    this.f12212a.remove(bVar);
                }
            }
        }

        public void a(int i) {
            this.l = i * 32;
        }

        public void a(com.iflytek.cloud.a.d.e.a.b bVar) {
            if (bVar != null) {
                synchronized (this.c) {
                    this.f12212a.add(bVar);
                }
            }
        }

        public void b(com.iflytek.cloud.a.d.e.a.InterfaceC0228a interfaceC0228a) {
            if (interfaceC0228a != null) {
                synchronized (this.f12213d) {
                    this.b.remove(interfaceC0228a);
                }
            }
        }

        public void a(com.iflytek.cloud.a.d.e.a.InterfaceC0228a interfaceC0228a) {
            if (interfaceC0228a != null) {
                synchronized (this.f12213d) {
                    this.b.add(interfaceC0228a);
                }
            }
        }

        public void a(SpeechError speechError) {
            DebugLog.LogE(speechError);
            synchronized (this.c) {
                Iterator<com.iflytek.cloud.a.d.e.a.b> it = this.f12212a.iterator();
                while (it.hasNext()) {
                    it.next().onError(speechError.getErrorCode());
                }
            }
            synchronized (this.f12213d) {
                Iterator<com.iflytek.cloud.a.d.e.a.InterfaceC0228a> it2 = this.b.iterator();
                while (it2.hasNext()) {
                    it2.next().onError(speechError.getErrorCode());
                }
            }
        }
    }

    public static a c(String str) {
        a aVar;
        DebugLog.LogD("aimic createAIMic enter");
        synchronized (b) {
            if (f12206a == null) {
                try {
                    f12206a = new a(str);
                } catch (SpeechError e2) {
                    DebugLog.LogE(e2);
                } catch (UnsatisfiedLinkError e3) {
                    DebugLog.LogE(e3);
                } catch (Throwable th) {
                    DebugLog.LogE(th);
                }
                aVar = f12206a;
            } else {
                aVar = f12206a;
            }
            throw th;
        }
        DebugLog.LogD("aimic createAIMic leave: " + aVar);
        return aVar;
    }

    public static String d() {
        String strA;
        synchronized (b) {
            try {
                strA = com.iflytek.cloud.msc.util.d.a(AIMIC.AIMICGetVersion());
            } catch (Throwable th) {
                DebugLog.LogE(th);
                strA = null;
            }
        }
        return strA;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void a() {
        DebugLog.LogD("aimic destroy enter");
        synchronized (this.f12209f) {
            this.f12210g = false;
            b bVar = this.l;
            if (bVar != null) {
                bVar.a();
            }
            com.iflytek.cloud.a.d.e.b.b bVar2 = this.q;
            if (bVar2 != null) {
                bVar2.h();
                this.q.a();
                this.q = null;
            }
        }
        synchronized (this.j) {
            if (this.j.isAlive()) {
                this.j.notify();
            }
        }
        synchronized (b) {
            if (f12206a != null) {
                try {
                    AIMIC.AIMICDestroy(AIMIC.getHandler());
                } catch (Throwable th) {
                    DebugLog.LogE(th);
                }
                f12206a = null;
            }
        }
        System.gc();
        DebugLog.LogD("aimic destroy leave");
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void b(com.iflytek.cloud.a.d.e.a.b bVar) {
        DebugLog.LogD("aimic  unregisterListener enter: " + bVar);
        synchronized (this.f12209f) {
            this.l.b(bVar);
            if (this.l.b()) {
                g();
            }
        }
        DebugLog.LogD("aimic  unregisterListener leave");
    }

    private boolean d(String str) {
        return str != null && (str.equals("true") || str.equals("1"));
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void b(com.iflytek.cloud.a.d.e.a.InterfaceC0228a interfaceC0228a) {
        DebugLog.LogD("aimic  unregisterListener enter: " + interfaceC0228a);
        synchronized (this.f12209f) {
            this.l.b(interfaceC0228a);
            if (this.l.b()) {
                g();
            }
        }
        DebugLog.LogD("aimic  unregisterListener leave");
    }

    public static int c() {
        try {
            return AIMIC.AIMICGetChannel();
        } catch (Throwable th) {
            DebugLog.LogE(th);
            return -1;
        }
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public String b(String str) {
        String strA;
        DebugLog.LogD("aimic  getParameter enter");
        byte[] bArr = this.f12211h;
        synchronized (this.f12209f) {
            if (i()) {
                try {
                    int iAIMICGetParam = AIMIC.AIMICGetParam(AIMIC.getHandler(), com.iflytek.cloud.msc.util.d.a(str), bArr);
                    if (iAIMICGetParam == 0) {
                        strA = com.iflytek.cloud.msc.util.d.a(bArr);
                    } else {
                        DebugLog.LogE("get parameter error: " + iAIMICGetParam);
                        strA = null;
                    }
                } catch (Throwable th) {
                    DebugLog.LogE(th);
                }
            } else {
                strA = null;
            }
            throw th;
        }
        DebugLog.LogD("aimic  getParameter leave: " + strA);
        return strA;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void a(com.iflytek.cloud.a.d.e.a.b bVar) {
        DebugLog.LogD("aimic  registerListener enter: " + bVar);
        synchronized (this.f12209f) {
            this.l.a(bVar);
        }
        DebugLog.LogD("aimic  setParameter leave");
    }

    private int b(byte[] bArr, int i, int i2) {
        try {
            this.i.a(bArr, i, i2);
            synchronized (this.j) {
                if (Thread.State.WAITING == this.j.getState()) {
                    this.j.notify();
                }
            }
            SpeechError speechErrorA = this.j.a();
            if (speechErrorA == null) {
                return 0;
            }
            int errorCode = speechErrorA.getErrorCode();
            this.j.c();
            return errorCode;
        } catch (IllegalArgumentException e2) {
            DebugLog.LogE(e2);
            return ErrorCode.ERROR_AIMIC_INVALID_PARA;
        } catch (NullPointerException e3) {
            DebugLog.LogE(e3);
            return ErrorCode.ERROR_AIMIC_NULL_HANDLE;
        } catch (OutOfMemoryError e4) {
            DebugLog.LogE(e4);
            if (2 == this.k) {
                DebugLog.LogE("write audio too soon, current audios  in buffer will be ignored!");
                this.i.a();
                return 0;
            }
            DebugLog.LogE("write audio too soon, please wait for a second, and try again!");
            return ErrorCode.ERROR_AIMIC_BUSY;
        } catch (Throwable th) {
            DebugLog.LogE("write audio too soon, please wait for a second, and try again!");
            DebugLog.LogE(th);
            return ErrorCode.ERROR_UNKNOWN;
        }
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void a(com.iflytek.cloud.a.d.e.a.InterfaceC0228a interfaceC0228a) {
        DebugLog.LogD("aimic  registerListener enter: " + interfaceC0228a);
        synchronized (this.f12209f) {
            this.l.a(interfaceC0228a);
        }
        DebugLog.LogD("aimic  registerListener leave");
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0119  */
    @Override // com.iflytek.cloud.a.d.e.a
    public int a(String str, String str2) {
        int iAIMICSetParam;
        DebugLog.LogD("aimic  setParameter enter key=" + str + ", value=" + str2);
        try {
            synchronized (this.f12209f) {
                DebugLog.LogD("aimic  setParameter sync");
                if ("aimic_asr_buffer_time".equalsIgnoreCase(str)) {
                    int i = Integer.parseInt(str2);
                    this.m = i;
                    this.l.a(i);
                } else if ("alsa_rate".equalsIgnoreCase(str)) {
                    this.s = Integer.parseInt(str2);
                } else if ("alsa_card".equalsIgnoreCase(str)) {
                    this.t = Integer.parseInt(str2);
                } else if ("alsa_per_size".equalsIgnoreCase(str)) {
                    this.u = Integer.parseInt(str2);
                } else if ("alsa_save".equalsIgnoreCase(str)) {
                    this.r.a(d(str2));
                } else if (SpeechConstant.AUDIO_SOURCE.equalsIgnoreCase(str)) {
                    this.v = Integer.parseInt(str2);
                } else if ("buf_mode".equalsIgnoreCase(str)) {
                    int i2 = Integer.parseInt(str2);
                    this.k = i2;
                    if (i2 != 1) {
                        com.iflytek.cloud.a.d.e.b.c cVar = this.i;
                        cVar.a(983040 - cVar.g());
                    } else {
                        com.iflytek.cloud.a.d.e.b.c cVar2 = this.i;
                        cVar2.a(491520 - cVar2.g());
                    }
                    if (i()) {
                        DebugLog.LogD("aimic  setParameter Native");
                        iAIMICSetParam = AIMIC.AIMICSetParam(AIMIC.getHandler(), com.iflytek.cloud.msc.util.d.a(str), com.iflytek.cloud.msc.util.d.a(str2));
                    } else {
                        iAIMICSetParam = ErrorCode.ERROR_AIMIC_NOT_INIT;
                    }
                } else if ("thread_priority".equalsIgnoreCase(str)) {
                    if (i()) {
                        DebugLog.LogD("aimic  setParameter Native");
                        iAIMICSetParam = AIMIC.AIMICSetParam(AIMIC.getHandler(), com.iflytek.cloud.msc.util.d.a(str), com.iflytek.cloud.msc.util.d.a(str2));
                        this.j.a(Integer.parseInt(str2));
                    } else {
                        iAIMICSetParam = ErrorCode.ERROR_AIMIC_NOT_INIT;
                    }
                } else if (i()) {
                    DebugLog.LogD("aimic  setParameter Native");
                    iAIMICSetParam = AIMIC.AIMICSetParam(AIMIC.getHandler(), com.iflytek.cloud.msc.util.d.a(str), com.iflytek.cloud.msc.util.d.a(str2));
                } else {
                    iAIMICSetParam = ErrorCode.ERROR_AIMIC_NOT_INIT;
                }
                iAIMICSetParam = 0;
            }
        } catch (UnsatisfiedLinkError e2) {
            DebugLog.LogE(e2);
            iAIMICSetParam = ErrorCode.ERROR_UNSATISFIED_LINK;
        } catch (Throwable th) {
            DebugLog.LogE(th);
            iAIMICSetParam = ErrorCode.ERROR_UNKNOWN;
        }
        DebugLog.LogD("aimic  setParameter leave: " + iAIMICSetParam);
        return iAIMICSetParam;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public int a(byte[] bArr, int i, int i2) {
        int iB;
        synchronized (this.f12209f) {
            if (i()) {
                iB = b(bArr, i, i2);
            } else {
                iB = ErrorCode.ERROR_AIMIC_NOT_INIT;
                DebugLog.LogE("write audio while not init!");
            }
        }
        return iB;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void a(boolean z, int i) {
        synchronized (this.f12209f) {
            try {
                DebugLog.setShowLog(z);
                DebugLog.setLogLevel(DebugLog.a.values()[i]);
                AIMIC.AIMICDebugLog(z, i);
                com.iflytek.cloud.a.d.e.b.b bVar = this.q;
                if (bVar != null) {
                    bVar.a(z && DebugLog.a.detail.ordinal() >= i);
                }
            } catch (Throwable th) {
                DebugLog.LogE(th);
            }
        }
    }
}
