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
    private static final Object b = null;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f12207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f12208e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f12209f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f12210g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final byte[] f12211h;
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

    /* JADX INFO: renamed from: com.iflytek.cloud.a.d.e.b.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0237a {
    }

    private static class b implements AIMIC.Listener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashSet<com.iflytek.cloud.a.d.e.a.b> f12212a;
        private final HashSet<com.iflytek.cloud.a.d.e.a.InterfaceC0236a> b;
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
            this.f12212a = new HashSet();
            this.b = new HashSet();
            this.c = new Object();
            this.f12213d = new Object();
            this.f12214e = 32;
            this.f12215f = 4000;
            this.f12216g = 128000;
            this.f12217h = 512;
            this.i = new com.iflytek.cloud.a.d.e.b.c(128000, 512, 0, false, true);
            this.j = 1;
            this.k = true;
            this.l = 128000;
        }

        public void a() {
            HashSet<com.iflytek.cloud.a.d.e.a.b> r0 = this.f12212a;
            if (r0 == null) goto L5;
            r0.clear();
        L5:
            HashSet<com.iflytek.cloud.a.d.e.a.InterfaceC0236a> r1 = this.b;
            if (r1 == null) goto L9;
            r1.clear();
            return;
        }

        public boolean b() {
            HashSet<com.iflytek.cloud.a.d.e.a.b> r0 = this.f12212a;
            if (r0 != null) goto L5;
        L6:
            HashSet<com.iflytek.cloud.a.d.e.a.InterfaceC0236a> r1 = this.b;
            if (r1 != null) goto L9;
        L12:
            return true;
        L9:
            if (r1.isEmpty() == true) goto L12;
        L11:
            return false;
        L5:
            if (r0.isEmpty() == false) goto L11;
            goto L6
        }

        @Override // com.iflytek.msc.AIMIC.Listener
        public void onRecogAudio(byte[] r9, int r10, int r11, Object r12) {
            Object r0 = this.f12213d;     // Catch: Throwable -> L32
            monitor-enter(r0);     // Catch: Throwable -> L32
        L29:
            th = move-exception;
            throw th;     // Catch: Throwable -> L32
        L5:
            if (this.k == true) goto L7;
        L9:
            boolean r1 = false;
        L10:
            this.k = r1;     // Catch: Throwable -> L29
            if (r1 == false) goto L16;
            long r13 = this.i.e();     // Catch: Throwable -> L29
            if ((((long) r10) + r13) <= this.l) goto L15;
            DebugLog.LogD(r13 + " matched max buffering len: " + this.l + ", will be clean");     // Catch: Throwable -> L29
            this.k = false;     // Catch: Throwable -> L29
            this.i.a();     // Catch: Throwable -> L29
        L27:
            monitor-exit(r0);     // Catch: Throwable -> L29
        L43:
            return;
        L15:
            this.i.a(r9, 0, r10);     // Catch: Throwable -> L29
            goto L27
        L16:
            Iterator<com.iflytek.cloud.a.d.e.a.InterfaceC0236a> r2 = this.b.iterator();     // Catch: Throwable -> L29
        L18:
            if (r2.hasNext() == false) goto L27;
            com.iflytek.cloud.a.d.e.a.InterfaceC0236a r3 = r2.next();     // Catch: Throwable -> L29
            if (this.i.i() == true) goto L26;
            com.iflytek.cloud.a.d.e.b.c r4 = this.i;     // Catch: Throwable -> L29
        L22:
            com.iflytek.cloud.a.d.e.b.c.a r5 = r4.k();     // Catch: Throwable -> L29
            if (r5 == null) goto L25;
            r3.onRecogAudio((byte[]) r5.getKey(), ((Integer) r5.getValue()).intValue(), 0, null);     // Catch: Throwable -> L29
            this.i.a(r5);     // Catch: Throwable -> L29
            r4 = this.i;     // Catch: Throwable -> L29
            goto L22
        L25:
            this.i.a();     // Catch: Throwable -> L29
        L26:
            r3.onRecogAudio(r9, r10, r11, r12);     // Catch: Throwable -> L29
            goto L18
        L7:
            if (this.b.isEmpty() == false) goto L9;
            r1 = true;
        L32:
            th = move-exception;
            DebugLog.LogE(th);
            a(new SpeechError(th, ErrorCode.ERROR_UNKNOWN));
        }

        @Override // com.iflytek.msc.AIMIC.Listener
        public void onWakeupAudio(byte[] r4, int r5, int r6, Object r7) {
            Object r0 = this.c;     // Catch: Throwable -> L13
            monitor-enter(r0);     // Catch: Throwable -> L13
            Iterator<com.iflytek.cloud.a.d.e.a.b> r1 = this.f12212a.iterator();     // Catch: Throwable -> L10
        L6:
            if (r1.hasNext() == false) goto L8;
            r1.next().onWakeupAudio(r4, r5, r6, r7);     // Catch: Throwable -> L10
            goto L6
        L8:
            monitor-exit(r0);     // Catch: Throwable -> L10
        L21:
            return;
        L10:
            th = move-exception;
            throw th;     // Catch: Throwable -> L13
        L13:
            th = move-exception;
            a(new SpeechError(th, ErrorCode.ERROR_UNKNOWN));
        }

        @Override // com.iflytek.msc.AIMIC.Listener
        public void onWakeupMsg(int r15, int r16, int r17, byte[] r18, int r19, byte[] r20, int r21, byte[] r22, int r23) {
            DebugLog.LogS("onWakeupMsg enter");     // Catch: Throwable -> L29
            boolean r0 = true;
            if (1 != r15) goto L17;
            Object r2 = this.f12213d;     // Catch: Throwable -> L29
            monitor-enter(r2);     // Catch: Throwable -> L29
        L14:
            th = move-exception;
            throw th;     // Catch: Throwable -> L29
        L8:
            if (this.l > 0) goto L11;
            r0 = false;
        L11:
            this.k = r0;     // Catch: Throwable -> L14
            monitor-exit(r2);     // Catch: Throwable -> L14
        L17:
            Object r13 = this.c;     // Catch: Throwable -> L29
            monitor-enter(r13);     // Catch: Throwable -> L29
            Iterator<com.iflytek.cloud.a.d.e.a.b> r1 = this.f12212a.iterator();     // Catch: Throwable -> L26
        L21:
            if (r1.hasNext() == false) goto L23;
            r1.next().onWakeupMsg(r15, r16, r17, r18, r19, r20, r21, r22, r23);     // Catch: Throwable -> L26
            goto L21
        L23:
            monitor-exit(r13);     // Catch: Throwable -> L26
            DebugLog.LogS("onWakeupMsg leave");     // Catch: Throwable -> L29
            return;
        L26:
            th = move-exception;
            throw th;     // Catch: Throwable -> L29
        L29:
            th = move-exception;
            DebugLog.LogE(th);
            a(new SpeechError(th, ErrorCode.ERROR_UNKNOWN));
        }

        public void b(com.iflytek.cloud.a.d.e.a.b r3) {
            if (r3 == null) goto L11;
            Object r0 = this.c;
            monitor-enter(r0);
            this.f12212a.remove(r3);     // Catch: Throwable -> L8
            monitor-exit(r0);     // Catch: Throwable -> L8
            return;
        L8:
            th = move-exception;
            throw th;
        }

        public void a(int r1) {
            this.l = r1 * 32;
        }

        public void a(com.iflytek.cloud.a.d.e.a.b r3) {
            if (r3 == null) goto L11;
            Object r0 = this.c;
            monitor-enter(r0);
            this.f12212a.add(r3);     // Catch: Throwable -> L8
            monitor-exit(r0);     // Catch: Throwable -> L8
            return;
        L8:
            th = move-exception;
            throw th;
        }

        public void b(com.iflytek.cloud.a.d.e.a.InterfaceC0236a r3) {
            if (r3 == null) goto L11;
            Object r0 = this.f12213d;
            monitor-enter(r0);
            this.b.remove(r3);     // Catch: Throwable -> L8
            monitor-exit(r0);     // Catch: Throwable -> L8
            return;
        L8:
            th = move-exception;
            throw th;
        }

        public void a(com.iflytek.cloud.a.d.e.a.InterfaceC0236a r3) {
            if (r3 == null) goto L11;
            Object r0 = this.f12213d;
            monitor-enter(r0);
            this.b.add(r3);     // Catch: Throwable -> L8
            monitor-exit(r0);     // Catch: Throwable -> L8
            return;
        L8:
            th = move-exception;
            throw th;
        }

        public void a(SpeechError r5) {
            DebugLog.LogE(r5);
            Object r0 = this.c;
            monitor-enter(r0);
            Iterator<com.iflytek.cloud.a.d.e.a.b> r1 = this.f12212a.iterator();     // Catch: Throwable -> L20
        L6:
            if (r1.hasNext() == false) goto L8;
            r1.next().onError(r5.getErrorCode());     // Catch: Throwable -> L20
            goto L6
        L8:
            monitor-exit(r0);     // Catch: Throwable -> L20
            Object r2 = this.f12213d;
            monitor-enter(r2);
            Iterator<com.iflytek.cloud.a.d.e.a.InterfaceC0236a> r3 = this.b.iterator();     // Catch: Throwable -> L17
        L13:
            if (r3.hasNext() == false) goto L15;
            r3.next().onError(r5.getErrorCode());     // Catch: Throwable -> L17
            goto L13
        L15:
            monitor-exit(r2);     // Catch: Throwable -> L17
            return;
        L17:
            th = move-exception;
            throw th;
        L20:
            th = move-exception;
            throw th;
        }

        /* synthetic */ b(C0237a r1) {
            this();
        }
    }

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
        final /* synthetic */ a m;

        /* JADX INFO: renamed from: com.iflytek.cloud.a.d.e.b.a$c$a, reason: collision with other inner class name */
        class C0238a extends Thread {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ c f12224a;

            C0238a(c r1, String r2) {
                this.f12224a = r1;
                super(r2);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                DebugLog.LogD("alsa data save thread enter");
                MemoryFile r2 = new MemoryFile(null, 61952000);     // Catch: Throwable -> L57
                r2.allowPurging(false);     // Catch: Throwable -> L55
                int r4 = 0;
                boolean r5 = false;
            L7:
                if (c.a(this.f12224a) == false) goto L29;
                com.iflytek.cloud.a.d.e.b.c r6 = c.b(this.f12224a);     // Catch: Throwable -> L55
                monitor-enter(r6);     // Catch: Throwable -> L55
            L80:
                if (c.b(this.f12224a).i() == true) goto L13;
                com.iflytek.cloud.a.d.e.b.c.a r8 = c.b(this.f12224a).k();     // Catch: Throwable -> L26
                r2.writeBytes((byte[]) r8.getKey(), 0, r4, ((Integer) r8.getValue()).intValue());     // Catch: Throwable -> L26
                r4 = r4 + ((Integer) r8.getValue()).intValue();     // Catch: Throwable -> L26
                c.b(this.f12224a).a(r8);     // Catch: Throwable -> L26
                goto L80
            L13:
                c.b(this.f12224a).a();     // Catch: Throwable -> L26
                monitor-exit(r6);     // Catch: Throwable -> L26
                if (61440000 > r4) goto L17;
                r5 = true;
                r4 = 0;
            L17:
                monitor-enter(this);     // Catch: Throwable -> L55
                if (c.b(this.f12224a).i() == false) goto L21;
                wait();     // Catch: Throwable -> L23
            L21:
                monitor-exit(this);     // Catch: Throwable -> L23
                goto L7
            L23:
                th = move-exception;
                throw th;     // Catch: Throwable -> L55
            L26:
                th = move-exception;
                throw th;     // Catch: Throwable -> L55
            L29:
                com.iflytek.cloud.a.d.e.b.c r7 = c.b(this.f12224a);     // Catch: Throwable -> L55
                monitor-enter(r7);     // Catch: Throwable -> L55
            L84:
            L52:
                th = move-exception;
                throw th;     // Catch: Throwable -> L55
            L32:
                if (c.b(this.f12224a).i() == true) goto L34;
                com.iflytek.cloud.a.d.e.b.c.a r9 = c.b(this.f12224a).k();     // Catch: Throwable -> L52
                r2.writeBytes((byte[]) r9.getKey(), 0, r4, ((Integer) r9.getValue()).intValue());     // Catch: Throwable -> L52
                r4 = r4 + ((Integer) r9.getValue()).intValue();     // Catch: Throwable -> L52
                c.b(this.f12224a).a(r9);     // Catch: Throwable -> L52
                goto L84
            L34:
                c.b(this.f12224a).a();     // Catch: Throwable -> L52
                monitor-exit(r7);     // Catch: Throwable -> L52
                RandomAccessFile r10 = new RandomAccessFile(c.c(this.f12224a), "rw");     // Catch: Throwable -> L55
                if (r5 == false) goto L39;
                int r11 = 61440000 - r4;
            L40:
                if (r11 > 0) goto L74;
            L46:
                SpeechError r12 = null;
            L47:
                if (r12 == null) goto L49;
            L60:
                if (r2 != null) goto L82;
            L64:
                if (r10 == null) goto L68;
                r10.close();     // Catch: Throwable -> L62
            L62:
                th = move-exception;
                DebugLog.LogE(th);
                DebugLog.LogE("关闭文件异常！");
            L68:
                c.a(this.f12224a, null);
                if (r12 == null) goto L71;
                a.c(this.f12224a.m).a(r12);
            L71:
                DebugLog.LogD("alsa data save thread exit");
                return;
            L82:
                r2.close();     // Catch: Throwable -> L62
                goto L64
            L49:
                if (c.a(this.f12224a, r10, r2, 0, Math.min(61440000, r4)) == true) goto L60;
                r12 = new SpeechError(ErrorCode.ERROR_UNKNOWN);     // Catch: Throwable -> L44
                DebugLog.LogE("save current memory file data failed!");     // Catch: Throwable -> L44
            L44:
                Throwable th = th;
            L59:
                DebugLog.LogE(th);
                DebugLog.LogE("保存文件失败！");
                r12 = new SpeechError(th, ErrorCode.ERROR_UNKNOWN);
                goto L60
            L74:
                if (c.a(this.f12224a, r10, r2, r4, r11) == true) goto L46;
                r12 = new SpeechError(ErrorCode.ERROR_UNKNOWN);     // Catch: Throwable -> L44
                DebugLog.LogE("save last memory file data failed!");     // Catch: Throwable -> L44
                goto L47
            L39:
                r11 = 0;
                goto L40
            L55:
                th = th;
                r10 = null;
            L57:
                th = move-exception;
                th = th;
                r2 = null;
                r10 = null;
                goto L59
            }
        }

        private c(a r20) {
            this.m = r20;
            this.f12218a = 0;
            this.b = 49152;
            this.c = 512000;
            this.f12219d = 61440000;
            com.iflytek.cloud.a.d.e.b.c r2 = new com.iflytek.cloud.a.d.e.b.c(512000, 49152, 0, true, false);
            this.f12220e = r2;
            com.iflytek.cloud.a.d.e.b.c r3 = new com.iflytek.cloud.a.d.e.b.c(512000, 49152, 0, true, false);
            this.f12221f = r3;
            this.f12222g = r2;
            this.f12223h = r3;
            this.i = Environment.getExternalStorageDirectory().getPath() + "/aimic_alsa.pcm";
            this.j = null;
            this.k = false;
            this.l = false;
        }

        static /* synthetic */ Thread a(c r0, Thread r1) {
            r0.j = r1;
            return r1;
        }

        static /* synthetic */ com.iflytek.cloud.a.d.e.b.c b(c r0) {
            return r0.f12223h;
        }

        static /* synthetic */ String c(c r0) {
            return r0.i;
        }

        static /* synthetic */ boolean a(c r0) {
            return r0.l;
        }

        private void c() {
            C0238a r0 = new C0238a(this, "AlsaAudioSavingThread");
            this.j = r0;
            r0.start();
        }

        public void b() {
            this.l = false;
            if (a() == false) goto L6;
            a(0, true);
            return;
        }

        static /* synthetic */ boolean a(c r0, RandomAccessFile r1, MemoryFile r2, int r3, int r4) {
            return r0.a(r1, r2, r3, r4);
        }

        @Override // com.iflytek.cloud.a.d.e.b.b.c
        public void a(byte[] r3, int r4) {
            if (a() == false) goto L5;
            b(r3, r4);
        L5:
            int r5 = this.m.a(r3, 0, r4);
            this.f12218a = r5;
            if (r5 == 0) goto L9;
            a.c(this.m).a(new SpeechError(this.f12218a));
            return;
        }

        private void b(byte[] r4, int r5) {
            if (this.j != null) goto L22;
            File r0 = new File(this.i);
            if (r0.exists() == false) goto L7;
            r0.delete();
        L7:
            this.f12220e.a();
            this.f12221f.a();
            this.f12222g = this.f12220e;
            this.f12223h = this.f12221f;
            this.l = true;
            c();
        L22:
            a(r5, false);     // Catch: Throwable -> L17
            com.iflytek.cloud.a.d.e.b.c r1 = this.f12222g;     // Catch: Throwable -> L17
            monitor-enter(r1);     // Catch: Throwable -> L17
            this.f12222g.a(r4, 0, r5);     // Catch: Throwable -> L14
            monitor-exit(r1);     // Catch: Throwable -> L14
        L24:
            return;
        L14:
            th = move-exception;
            throw th;     // Catch: Throwable -> L17
        L17:
            th = move-exception;
            DebugLog.LogE(th);
            a.c(this.m).a(new SpeechError(th, ErrorCode.ERROR_UNKNOWN));
        }

        public void a(boolean r1) {
            this.k = r1;
        }

        private boolean a() {
            return this.k;
        }

        private boolean a(RandomAccessFile r6, MemoryFile r7, int r8, int r9) {
            if (r6 == null) goto L15;
            if (r7 == null) goto L15;
            if (r8 < 0) goto L15;
            if (r9 < 0) goto L15;
            int r10 = r9 + r8;
            byte[] r2 = new byte[65536];     // Catch: Throwable -> L17
        L9:
            if (r10 <= r8) goto L24;
            int r3 = Math.min(65536, r10 - r8);     // Catch: Throwable -> L17
            if (r7.readBytes(r2, r8, 0, r3) != r3) goto L12;
            r8 = r8 + r3;     // Catch: Throwable -> L17
            r6.write(r2, 0, r3);     // Catch: Throwable -> L17
            goto L9
        L12:
            DebugLog.LogE("saveFileFromMemory error: read bytes length error!");     // Catch: Throwable -> L17
            return false;
        L24:
            return true;
        L15:
            DebugLog.LogE("saveFileFromMemory error: arguments error");     // Catch: Throwable -> L17
            return false;
        L17:
            th = move-exception;
            DebugLog.LogE(th);
            return false;
        }

        /* synthetic */ c(a r1, C0237a r2) {
            this(r1);
        }

        private void a(int r5, boolean r6) {
            com.iflytek.cloud.a.d.e.b.c r0 = this.f12222g;
            monitor-enter(r0);
            if (r6 == false) goto L55;
        L9:
            com.iflytek.cloud.a.d.e.b.c r7 = this.f12222g;     // Catch: Throwable -> L46
            if (r7.equals(this.f12221f) == false) goto L12;
            com.iflytek.cloud.a.d.e.b.c r8 = this.f12220e;     // Catch: Throwable -> L46
        L13:
            this.f12222g = r8;     // Catch: Throwable -> L46
        L14:
            monitor-exit(r0);     // Catch: Throwable -> L46
            if (r7 == null) goto L45;
            com.iflytek.cloud.a.d.e.b.c r9 = this.f12223h;
            monitor-enter(r9);
            this.f12223h = r7;     // Catch: Throwable -> L42
            monitor-exit(r9);     // Catch: Throwable -> L42
            Thread r10 = this.j;
            if (r10 == null) goto L31;
            monitor-enter(r10);
        L28:
            th = move-exception;
            throw th;
        L24:
            if (Thread.State.WAITING != this.j.getState()) goto L26;
            this.j.notify();     // Catch: Throwable -> L28
        L26:
            monitor-exit(r10);     // Catch: Throwable -> L28
        L31:
            com.iflytek.cloud.a.d.e.b.c r11 = this.f12222g;
            monitor-enter(r11);
        L39:
            th = move-exception;
            throw th;
        L35:
            if (0 == this.f12222g.e()) goto L37;
            DebugLog.LogE("Error: buffer is not null when exchanged!");     // Catch: Throwable -> L39
            a.c(this.m).a(new SpeechError(ErrorCode.ERROR_UNKNOWN));     // Catch: Throwable -> L39
        L37:
            monitor-exit(r11);     // Catch: Throwable -> L39
            return;
        L42:
            th = move-exception;
            throw th;
        L45:
            return;
        L46:
            th = move-exception;
            throw th;
        L12:
            r8 = this.f12221f;     // Catch: Throwable -> L46
            goto L13
        L55:
            if ((this.f12222g.e() + ((long) r5)) >= 512000) goto L9;
            r7 = null;
            goto L14
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
        final /* synthetic */ a j;

        public d(a r5, String r6) {
            this.j = r5;
            super(r6);
            this.f12225a = 1;
            this.b = 16;
            this.c = 1000;
            this.f12226d = a.a(r5);
            this.f12227e = 10;
            HashMap<Integer, Integer> r1 = new HashMap();
            this.f12228f = r1;
            this.f12229g = null;
            this.f12230h = System.currentTimeMillis();
            this.i = true;
            r1.put(0, 1);
            r1.put(1, 5);
            r1.put(2, 10);
        }

        private void b(int r5) {
            DebugLog.LogD("update priority enter, target priority: " + r5 + ", current priority: " + getPriority());
            if (r5 != getPriority()) goto L28;
        L24:
            DebugLog.LogD("update priority leave");
            return;
        L28:
            LinkedList r0 = new LinkedList();     // Catch: Throwable -> L22
            ThreadGroup r1 = getThreadGroup();     // Catch: Throwable -> L22
        L5:
            if (r1 == null) goto L14;
            DebugLog.LogD("thread group name: " + r1.getName());     // Catch: Throwable -> L22
        L12:
            th = move-exception;
            DebugLog.LogE("exception while improve thread group priority");     // Catch: Throwable -> L22
            DebugLog.LogE(th);     // Catch: Throwable -> L22
            goto L14
        L8:
            if (r5 <= r1.getMaxPriority()) goto L9;
            r1.checkAccess();     // Catch: Throwable -> L12
            r0.addFirst(r1);     // Catch: Throwable -> L12
            r1 = r1.getParent();     // Catch: Throwable -> L12
            goto L5
        L9:
            DebugLog.LogD("get a thread group has target priority");     // Catch: Throwable -> L12
        L14:
            Iterator r2 = r0.iterator();     // Catch: Throwable -> L22
        L16:
            if (r2.hasNext() == false) goto L20;
            ThreadGroup r3 = (ThreadGroup) r2.next();     // Catch: Throwable -> L22
            if (r5 <= r3.getMaxPriority()) goto L16;
            r3.setMaxPriority(r5);     // Catch: Throwable -> L22
            goto L16
        L20:
            setPriority(r5);     // Catch: Throwable -> L22
            DebugLog.LogD("set thread priority to target, after that is: " + getPriority());     // Catch: Throwable -> L22
        L22:
            th = move-exception;
            DebugLog.LogE("exception while set thread priority");
            DebugLog.LogE(th);
            goto L24
        }

        public SpeechError a() {
            return this.f12229g;
        }

        public void c() {
            this.f12229g = null;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            DebugLog.LogD("aimic audio writing thread enter");
            b(this.f12227e);
            int r1 = 0;
        L3:
            int r2 = 0;
            int r3 = 0;
        L5:
            if (a.b(this.j) == false) goto L52;
            com.iflytek.cloud.a.d.e.b.c.a r4 = this.f12226d.k();     // Catch: Throwable -> L45 UnsatisfiedLinkError -> L48
            if (r4 != null) goto L8;
            b();     // Catch: Throwable -> L45 UnsatisfiedLinkError -> L48
            if (1000 > r2) goto L42;
            monitor-enter(this);     // Catch: Throwable -> L38 UnsatisfiedLinkError -> L40
        L31:
            if (this.f12226d.i() == false) goto L33;
            DebugLog.LogD("aimic audio writing will suspend");     // Catch: Throwable -> L35
            wait();     // Catch: Throwable -> L35
            DebugLog.LogD("aimic audio writing is waked");     // Catch: Throwable -> L35
        L33:
            monitor-exit(this);     // Catch: Throwable -> L35
            r2 = 0;
        L35:
            th = move-exception;
            throw th;     // Catch: Throwable -> L38 UnsatisfiedLinkError -> L40
        L40:
            e = e;
            int r5 = r3;
            int r6 = 0;
        L25:
            UnsatisfiedLinkError r7 = e;
            int r8 = r1;
            UnsatisfiedLinkError e2 = r7;
        L50:
            DebugLog.LogE(e2);
            this.f12229g = new SpeechError(ErrorCode.ERROR_UNSATISFIED_LINK);
        L51:
            r1 = r8;
            r2 = r6;
            r3 = r5;
        L38:
            th = th;
            r5 = r3;
            r6 = 0;
        L22:
            Throwable r9 = th;
            r8 = r1;
            Throwable th = r9;
        L47:
            DebugLog.LogE(th);
            this.f12229g = new SpeechError(ErrorCode.ERROR_UNKNOWN);
            goto L51
        L42:
            r2 = r2 + 1;
            r3 = Math.min(r3 + 1, 16);     // Catch: Throwable -> L45 UnsatisfiedLinkError -> L48
            Thread.sleep(r3);     // Catch: Throwable -> L45 UnsatisfiedLinkError -> L48
        L8:
            r1 = r1 + 1;
            if (30 > r1) goto L60;
            DebugLog.LogD("current buf container size in aimic thread is " + this.f12226d.f());     // Catch: Throwable -> L12 UnsatisfiedLinkError -> L14
            r1 = 0;
            goto L60
        L14:
            e2 = e;
            r5 = r3;
            r6 = r2;
            r8 = 0;
        L12:
            th = th;
            r5 = r3;
            r6 = r2;
            r8 = 0;
        L60:
            int r10 = AIMIC.AIMICAudioWrite(AIMIC.getHandler(), (byte[]) r4.getKey(), 0, ((Integer) r4.getValue()).intValue());     // Catch: Throwable -> L20 UnsatisfiedLinkError -> L23
            this.f12226d.a(r4);     // Catch: Throwable -> L20 UnsatisfiedLinkError -> L23
            if (r10 == 0) goto L3;
            DebugLog.LogE("AIMICAudioWrite error: " + r10);     // Catch: Throwable -> L20 UnsatisfiedLinkError -> L23
            a.c(this.j).a(new SpeechError(r10));     // Catch: Throwable -> L20 UnsatisfiedLinkError -> L23
        L23:
            e = e;
            r6 = 0;
            r5 = 0;
        L20:
            th = th;
            r6 = 0;
            r5 = 0;
        L48:
            e = move-exception;
            int r11 = r2;
            r8 = r1;
            e2 = e;
            r5 = r3;
            r6 = r11;
        L45:
            th = move-exception;
            int r12 = r2;
            r8 = r1;
            th = th;
            r5 = r3;
            r6 = r12;
            goto L47
        L52:
            this.f12226d.a();
            DebugLog.LogD("aimic audio writing thread exited");
        }

        public void a(int r3) {
            Integer r0 = this.f12228f.get(Integer.valueOf(r3));
            if (r0 == null) goto L5;
            int r1 = r0.intValue();
        L6:
            this.f12227e = r1;
            DebugLog.LogD("set priority, target aimic priority: " + r3 + ", real target priority: " + this.f12227e);
            b(this.f12227e);
            return;
        L5:
            r1 = this.f12227e;
            goto L6
        }

        private void b() {
            if (1 != a.d(this.j)) goto L5;
            return;
        L5:
            if (120000 < (System.currentTimeMillis() - this.f12230h)) goto L16;
            long r2 = this.f12226d.c();
            if (49152 < r2) goto L9;
        L13:
            this.f12230h = System.currentTimeMillis();
            return;
        L9:
            if ((r2 + this.f12226d.e()) <= 491520) goto L13;
            boolean r0 = !this.i;
            this.i = r0;
            if (r0 == true) goto L13;
            this.f12226d.b();
            goto L13
        }
    }

    static {
        b = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.iflytek.cloud.a.d.e.b.a$a] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    private a(String r11) throws UnsatisfiedLinkError, SpeechError, Throwable {
        this.c = 49152;
        this.f12207d = 491520;
        this.f12208e = 983040;
        this.f12209f = new Object();
        int r0 = 0;
        this.f12210g = false;
        this.f12211h = new byte[256];
        com.iflytek.cloud.a.d.e.b.c r1 = new com.iflytek.cloud.a.d.e.b.c(491520, 49152, 245760, false, false);
        this.i = r1;
        d r2 = new d(this, "AIMicAudioWritingThread");
        this.j = r2;
        this.k = 2;
        String r5 = 0;
        r5 = 0;
        r5 = 0;
        b r4 = new b(r5);
        this.l = r4;
        this.m = 4000;
        this.n = 16000;
        this.o = 2;
        this.p = 1536;
        this.q = null;
        this.r = new c(this, r5);
        this.s = 16000;
        this.t = 2;
        this.u = 1536;
        this.v = -3;
        this.w = false;
        DebugLog.LogD("aimic constructor enter: " + r11);
        StringBuffer r6 = new StringBuffer();
        if (TextUtils.isEmpty(r11) == true) goto L6;
        r6.append(r11);
    L6:
        if (AIMIC.isLoaded() == true) goto L18;
        if (r11 == null) goto L16;
        int r7 = r11.indexOf(SpeechConstant.LIB_NAME);
        if (r7 < 0) goto L16;
        if (r7 >= r11.length()) goto L16;
        int r8 = r11.indexOf(44, r7);
        if (r8 >= 0) goto L15;
        r8 = r11.length();
    L15:
        String r12 = r11.substring(r11.indexOf(61, r7) + 1, r8);
        r6.delete(r7, r8);
        r5 = r12;
    L16:
        AIMIC.loadLibrary(r5);
    L18:
        if (AIMIC.isValid() == true) goto L22;
        r0 = AIMIC.AIMICNew(com.iflytek.cloud.msc.util.d.a(r6.toString()), r4);
        if (r0 == 0) goto L22;
        DebugLog.LogE("AIMICNew return error: " + r0);
        AIMIC.AIMICDestroy(AIMIC.getHandler());
    L22:
        if (r0 != 0) goto L30;
        this.f12210g = true;
        r2.start();
        int r13 = this.k;
        if (r13 == 0) goto L26;
        if (2 == r13) goto L26;
    L27:
        DebugLog.LogD("aimic constructor leave: " + r0);
        return;
    L26:
        r1.a(491520);
        goto L27
    L30:
        throw new SpeechError(r0);
    }

    static /* synthetic */ com.iflytek.cloud.a.d.e.b.c a(a r0) {
        return r0.i;
    }

    static /* synthetic */ boolean b(a r0) {
        return r0.i();
    }

    static /* synthetic */ b c(a r0) {
        return r0.l;
    }

    static /* synthetic */ int d(a r0) {
        return r0.k;
    }

    public static a h() {
        DebugLog.LogD("aimic getAIMic enter");
        Object r0 = b;
        monitor-enter(r0);
        a r1 = f12206a;     // Catch: Throwable -> L8
        monitor-exit(r0);     // Catch: Throwable -> L8
        DebugLog.LogD("aimic getAIMic leave: " + r1);
        return r1;
    L8:
        th = move-exception;
        throw th;
    }

    private boolean i() {
        return this.f12210g;
    }

    private int j() {
        if (i() == false) goto L34;
        com.iflytek.cloud.a.d.e.b.b r0 = com.iflytek.cloud.a.d.e.b.b.c();
        this.q = r0;
        if (r0 != null) goto L7;
    L12:
        com.iflytek.cloud.a.d.e.b.b r1 = this.q;
        if (r1 == null) goto L15;
        r1.h();
        this.q.a();
        this.q = null;
    L15:
        DebugLog.LogD("create new audio recorder");
        this.q = com.iflytek.cloud.a.d.e.b.b.a(this.t, this.s, this.u);
    L16:
        com.iflytek.cloud.a.d.e.b.b r2 = this.q;
        if (r2 != null) goto L19;
        return ErrorCode.ERROR_AIMIC_CREATE_HANDLE;
    L19:
        if (r2.g() == true) goto L21;
    L23:
        com.iflytek.cloud.a.d.e.b.b r3 = this.q;
        if (DebugLog.getShowLog() == true) goto L26;
    L28:
        boolean r4 = false;
    L29:
        r3.a(r4);
        if (this.q.g() == true) goto L32;
        DebugLog.LogD("start audio recording.");
        return this.q.a(this.r);
    L32:
        DebugLog.LogD("audio recorder is recording.");
        return 0;
    L26:
        if (DebugLog.a.b.ordinal() < DebugLog.getLogLevel().ordinal()) goto L28;
        r4 = true;
        goto L29
    L21:
        if (this.r.equals(this.q.d()) == true) goto L23;
        DebugLog.LogD("Current record listener is not this, recorder will be stoped.");
        this.q.h();
        goto L23
    L7:
        if (r0.b() != this.t) goto L12;
        if (this.q.f() != this.s) goto L12;
        if (this.q.e() == this.u) goto L16;
    L34:
        return ErrorCode.ERROR_AIMIC_NOT_INIT;
    }

    private void k() {
        if (this.q == null) goto L6;
        DebugLog.LogD("stop audio record");
        this.q.h();
        this.r.b();
        this.q = null;
        return;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public int e() {
        DebugLog.LogD("aimic  reset enter");
        Object r0 = this.f12209f;
        monitor-enter(r0);
    L18:
        th = move-exception;
        throw th;
    L9:
        th = move-exception;
        DebugLog.LogE(th);     // Catch: Throwable -> L18
        int r1 = ErrorCode.ERROR_UNKNOWN;
    L15:
        monitor-exit(r0);     // Catch: Throwable -> L18
        DebugLog.LogD("aimic  reset leave: " + r1);
        return r1;
    L13:
        e = move-exception;
        DebugLog.LogE(e);     // Catch: Throwable -> L18
        r1 = e.getErrorCode();     // Catch: Throwable -> L18
    L11:
        e = move-exception;
        DebugLog.LogE(e);     // Catch: Throwable -> L18
        r1 = ErrorCode.ERROR_UNSATISFIED_LINK;
        goto L15
    L5:
        if (i() == false) goto L8;
        r1 = AIMIC.AIMICResetEng(AIMIC.getHandler());     // Catch: Throwable -> L9 UnsatisfiedLinkError -> L11 SpeechError -> L13
    L8:
        r1 = ErrorCode.ERROR_AIMIC_NOT_INIT;
        goto L15
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public int f() {
        DebugLog.LogD("aimic  startListening enter");
        Object r0 = this.f12209f;
        monitor-enter(r0);
    L26:
        th = move-exception;
        throw th;
    L5:
        if (this.w == true) goto L7;
        DebugLog.LogD("aimic  startListening clear old datas.");     // Catch: Throwable -> L26
        this.i.a();     // Catch: Throwable -> L26
    L7:
        boolean r2 = false;
        if (i() == false) goto L19;
        int r3 = this.v;     // Catch: Throwable -> L26
        if ((-3) != r3) goto L13;
        int r1 = j();     // Catch: Throwable -> L26
    L20:
        if (r1 != 0) goto L22;
        r2 = true;
    L22:
        this.w = r2;     // Catch: Throwable -> L26
        monitor-exit(r0);     // Catch: Throwable -> L26
        DebugLog.LogD("aimic  startListening leave: " + r1);
        return r1;
    L13:
        if ((-1) == r3) goto L15;
        r1 = ErrorCode.ERROR_AIMIC_INVALID_PARA_VALUE;
        DebugLog.LogE("startListening failed, invalid audio source: " + this.v);     // Catch: Throwable -> L26
        goto L20
    L15:
        if (this.q == null) goto L17;
        r1 = ErrorCode.ERROR_AIMIC_BUSY;
        DebugLog.LogE("startListening failed, current internal recorder is not stoped!");     // Catch: Throwable -> L26
        goto L20
    L17:
        r1 = 0;
        goto L20
    L19:
        r1 = ErrorCode.ERROR_AIMIC_NOT_INIT;
        goto L20
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void g() {
        DebugLog.LogD("aimic  stopListening enter");
        Object r0 = this.f12209f;
        monitor-enter(r0);
        b r1 = this.l;     // Catch: Throwable -> L12
        if (r1 != null) goto L7;
    L8:
        DebugLog.LogD("AIMic Listener is empty, audio recorder will stop recording.");     // Catch: Throwable -> L12
        k();     // Catch: Throwable -> L12
        this.w = false;     // Catch: Throwable -> L12
    L9:
        monitor-exit(r0);     // Catch: Throwable -> L12
        DebugLog.LogD("aimic  stopListening leave");
        return;
    L7:
        if (r1.b() == false) goto L9;
    L12:
        th = move-exception;
        throw th;
    }

    public static a c(String r2) {
        DebugLog.LogD("aimic createAIMic enter");
        Object r0 = b;
        monitor-enter(r0);
    L18:
        th = move-exception;
        throw th;
    L5:
        if (f12206a == null) goto L23;
    L14:
        a r3 = f12206a;     // Catch: Throwable -> L18
        monitor-exit(r0);     // Catch: Throwable -> L18
        DebugLog.LogD("aimic createAIMic leave: " + r3);
        return r3;
    L23:
        f12206a = new a(r2);     // Catch: Throwable -> L8 UnsatisfiedLinkError -> L10 SpeechError -> L12
    L12:
        e = move-exception;
        DebugLog.LogE(e);     // Catch: Throwable -> L18
    L10:
        e = move-exception;
        DebugLog.LogE(e);     // Catch: Throwable -> L18
    L8:
        th = move-exception;
        DebugLog.LogE(th);     // Catch: Throwable -> L18
        goto L14
    }

    public static String d() {
        Object r0 = b;
        monitor-enter(r0);
        String r1 = com.iflytek.cloud.msc.util.d.a(AIMIC.AIMICGetVersion());     // Catch: Throwable -> L6
    L8:
        monitor-exit(r0);     // Catch: Throwable -> L10
        return r1;
    L10:
        th = move-exception;
        throw th;
    L6:
        th = move-exception;
        DebugLog.LogE(th);     // Catch: Throwable -> L10
        r1 = null;
        goto L8
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void a() {
        DebugLog.LogD("aimic destroy enter");
        Object r0 = this.f12209f;
        monitor-enter(r0);
        this.f12210g = false;     // Catch: Throwable -> L36
        b r1 = this.l;     // Catch: Throwable -> L36
        if (r1 == null) goto L8;
        r1.a();     // Catch: Throwable -> L36
    L8:
        com.iflytek.cloud.a.d.e.b.b r2 = this.q;     // Catch: Throwable -> L36
        if (r2 == null) goto L11;
        r2.h();     // Catch: Throwable -> L36
        this.q.a();     // Catch: Throwable -> L36
        this.q = null;     // Catch: Throwable -> L36
    L11:
        monitor-exit(r0);     // Catch: Throwable -> L36
        d r3 = this.j;
        monitor-enter(r3);
    L33:
        th = move-exception;
        throw th;
    L15:
        if (this.j.isAlive() == false) goto L17;
        this.j.notify();     // Catch: Throwable -> L33
    L17:
        monitor-exit(r3);     // Catch: Throwable -> L33
        Object r4 = b;
        monitor-enter(r4);
    L30:
        th = move-exception;
        throw th;
    L21:
        if (f12206a != null) goto L39;
    L27:
        monitor-exit(r4);     // Catch: Throwable -> L30
        System.gc();
        DebugLog.LogD("aimic destroy leave");
        return;
    L39:
        AIMIC.AIMICDestroy(AIMIC.getHandler());     // Catch: Throwable -> L24
    L26:
        f12206a = null;     // Catch: Throwable -> L30
        goto L27
    L24:
        th = move-exception;
        DebugLog.LogE(th);     // Catch: Throwable -> L30
    L36:
        th = move-exception;
        throw th;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void b(com.iflytek.cloud.a.d.e.a.b r3) {
        DebugLog.LogD("aimic  unregisterListener enter: " + r3);
        Object r0 = this.f12209f;
        monitor-enter(r0);
        this.l.b(r3);     // Catch: Throwable -> L10
        if (this.l.b() == false) goto L7;
        g();     // Catch: Throwable -> L10
    L7:
        monitor-exit(r0);     // Catch: Throwable -> L10
        DebugLog.LogD("aimic  unregisterListener leave");
        return;
    L10:
        th = move-exception;
        throw th;
    }

    private boolean d(String r2) {
        if (r2 != null) goto L4;
    L8:
        return false;
    L4:
        if (r2.equals("true") == false) goto L6;
    L7:
        return true;
    L6:
        if (r2.equals("1") == false) goto L8;
        goto L7
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void b(com.iflytek.cloud.a.d.e.a.InterfaceC0236a r3) {
        DebugLog.LogD("aimic  unregisterListener enter: " + r3);
        Object r0 = this.f12209f;
        monitor-enter(r0);
        this.l.b(r3);     // Catch: Throwable -> L10
        if (this.l.b() == false) goto L7;
        g();     // Catch: Throwable -> L10
    L7:
        monitor-exit(r0);     // Catch: Throwable -> L10
        DebugLog.LogD("aimic  unregisterListener leave");
        return;
    L10:
        th = move-exception;
        throw th;
    }

    public static int c() {
        return AIMIC.AIMICGetChannel();
    L4:
        th = move-exception;
        DebugLog.LogE(th);
        return -1;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public String b(String r5) {
        DebugLog.LogD("aimic  getParameter enter");
        byte[] r0 = this.f12211h;
        Object r1 = this.f12209f;
        monitor-enter(r1);
    L17:
        th = move-exception;
        throw th;
    L5:
        if (i() == true) goto L22;
    L13:
        String r6 = null;
    L14:
        monitor-exit(r1);     // Catch: Throwable -> L17
        DebugLog.LogD("aimic  getParameter leave: " + r6);
        return r6;
    L22:
        int r7 = AIMIC.AIMICGetParam(AIMIC.getHandler(), com.iflytek.cloud.msc.util.d.a(r5), r0);     // Catch: Throwable -> L11
        if (r7 != 0) goto L9;
        r6 = com.iflytek.cloud.msc.util.d.a(r0);     // Catch: Throwable -> L11
        goto L14
    L9:
        DebugLog.LogE("get parameter error: " + r7);     // Catch: Throwable -> L11
    L11:
        th = move-exception;
        DebugLog.LogE(th);     // Catch: Throwable -> L17
        goto L13
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void a(com.iflytek.cloud.a.d.e.a.b r3) {
        DebugLog.LogD("aimic  registerListener enter: " + r3);
        Object r0 = this.f12209f;
        monitor-enter(r0);
        this.l.a(r3);     // Catch: Throwable -> L8
        monitor-exit(r0);     // Catch: Throwable -> L8
        DebugLog.LogD("aimic  setParameter leave");
        return;
    L8:
        th = move-exception;
        throw th;
    }

    private int b(byte[] r3, int r4, int r5) {
        this.i.a(r3, r4, r5);     // Catch: Throwable -> L16 NullPointerException -> L18 IllegalArgumentException -> L20 OutOfMemoryError -> L22
        d r6 = this.j;     // Catch: Throwable -> L16 NullPointerException -> L18 IllegalArgumentException -> L20 OutOfMemoryError -> L22
        monitor-enter(r6);     // Catch: Throwable -> L16 NullPointerException -> L18 IllegalArgumentException -> L20 OutOfMemoryError -> L22
    L13:
        th = move-exception;
        throw th;     // Catch: Throwable -> L16 NullPointerException -> L18 IllegalArgumentException -> L20 OutOfMemoryError -> L22
    L6:
        if (Thread.State.WAITING != this.j.getState()) goto L8;
        this.j.notify();     // Catch: Throwable -> L13
    L8:
        monitor-exit(r6);     // Catch: Throwable -> L13
        SpeechError r7 = this.j.a();     // Catch: Throwable -> L16 NullPointerException -> L18 IllegalArgumentException -> L20 OutOfMemoryError -> L22
        if (r7 == null) goto L31;
        int r8 = r7.getErrorCode();     // Catch: Throwable -> L16 NullPointerException -> L18 IllegalArgumentException -> L20 OutOfMemoryError -> L22
        this.j.c();     // Catch: Throwable -> L16 NullPointerException -> L18 IllegalArgumentException -> L20 OutOfMemoryError -> L22
        return r8;
    L31:
        return 0;
    L20:
        e = move-exception;
        DebugLog.LogE(e);
        return ErrorCode.ERROR_AIMIC_INVALID_PARA;
    L18:
        e = move-exception;
        DebugLog.LogE(e);
        return ErrorCode.ERROR_AIMIC_NULL_HANDLE;
    L22:
        e = move-exception;
        DebugLog.LogE(e);
        if (2 != this.k) goto L26;
        DebugLog.LogE("write audio too soon, current audios  in buffer will be ignored!");
        this.i.a();
        return 0;
    L26:
        DebugLog.LogE("write audio too soon, please wait for a second, and try again!");
        return ErrorCode.ERROR_AIMIC_BUSY;
    L16:
        th = move-exception;
        DebugLog.LogE("write audio too soon, please wait for a second, and try again!");
        DebugLog.LogE(th);
        return ErrorCode.ERROR_UNKNOWN;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void a(com.iflytek.cloud.a.d.e.a.InterfaceC0236a r3) {
        DebugLog.LogD("aimic  registerListener enter: " + r3);
        Object r0 = this.f12209f;
        monitor-enter(r0);
        this.l.a(r3);     // Catch: Throwable -> L8
        monitor-exit(r0);     // Catch: Throwable -> L8
        DebugLog.LogD("aimic  registerListener leave");
        return;
    L8:
        th = move-exception;
        throw th;
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public int a(String r7, String r8) {
        DebugLog.LogD("aimic  setParameter enter key=" + r7 + ", value=" + r8);
        Object r0 = this.f12209f;     // Catch: Throwable -> L47 UnsatisfiedLinkError -> L49
        monitor-enter(r0);     // Catch: Throwable -> L47 UnsatisfiedLinkError -> L49
        DebugLog.LogD("aimic  setParameter sync");     // Catch: Throwable -> L44
        if ("aimic_asr_buffer_time".equalsIgnoreCase(r7) == false) goto L9;
        int r9 = Integer.parseInt(r8);     // Catch: Throwable -> L44
        this.m = r9;     // Catch: Throwable -> L44
        this.l.a(r9);     // Catch: Throwable -> L44
    L23:
        int r10 = 0;
    L42:
        monitor-exit(r0);     // Catch: Throwable -> L44
    L51:
        DebugLog.LogD("aimic  setParameter leave: " + r10);
        return r10;
    L9:
        if ("alsa_rate".equalsIgnoreCase(r7) == false) goto L12;
        this.s = Integer.parseInt(r8);     // Catch: Throwable -> L44
        goto L23
    L12:
        if ("alsa_card".equalsIgnoreCase(r7) == false) goto L15;
        this.t = Integer.parseInt(r8);     // Catch: Throwable -> L44
        goto L23
    L15:
        if ("alsa_per_size".equalsIgnoreCase(r7) == false) goto L18;
        this.u = Integer.parseInt(r8);     // Catch: Throwable -> L44
        goto L23
    L18:
        if ("alsa_save".equalsIgnoreCase(r7) == false) goto L21;
        this.r.a(d(r8));     // Catch: Throwable -> L44
        goto L23
    L21:
        if (SpeechConstant.AUDIO_SOURCE.equalsIgnoreCase(r7) == false) goto L25;
        this.v = Integer.parseInt(r8);     // Catch: Throwable -> L44
        goto L23
    L25:
        if ("buf_mode".equalsIgnoreCase(r7) == false) goto L34;
        int r1 = Integer.parseInt(r8);     // Catch: Throwable -> L44
        this.k = r1;     // Catch: Throwable -> L44
        if (r1 == 1) goto L29;
        com.iflytek.cloud.a.d.e.b.c r2 = this.i;     // Catch: Throwable -> L44
        r2.a(983040 - r2.g());     // Catch: Throwable -> L44
    L31:
        if (i() == false) goto L41;
        DebugLog.LogD("aimic  setParameter Native");     // Catch: Throwable -> L44
        r10 = AIMIC.AIMICSetParam(AIMIC.getHandler(), com.iflytek.cloud.msc.util.d.a(r7), com.iflytek.cloud.msc.util.d.a(r8));     // Catch: Throwable -> L44
    L41:
        r10 = ErrorCode.ERROR_AIMIC_NOT_INIT;
        goto L42
    L29:
        com.iflytek.cloud.a.d.e.b.c r3 = this.i;     // Catch: Throwable -> L44
        r3.a(491520 - r3.g());     // Catch: Throwable -> L44
        goto L31
    L34:
        if ("thread_priority".equalsIgnoreCase(r7) == false) goto L39;
        if (i() == false) goto L41;
        DebugLog.LogD("aimic  setParameter Native");     // Catch: Throwable -> L44
        r10 = AIMIC.AIMICSetParam(AIMIC.getHandler(), com.iflytek.cloud.msc.util.d.a(r7), com.iflytek.cloud.msc.util.d.a(r8));     // Catch: Throwable -> L44
        this.j.a(Integer.parseInt(r8));     // Catch: Throwable -> L44
        goto L42
    L39:
        if (i() == false) goto L41;
        DebugLog.LogD("aimic  setParameter Native");     // Catch: Throwable -> L44
        r10 = AIMIC.AIMICSetParam(AIMIC.getHandler(), com.iflytek.cloud.msc.util.d.a(r7), com.iflytek.cloud.msc.util.d.a(r8));     // Catch: Throwable -> L44
    L44:
        th = move-exception;
        throw th;     // Catch: Throwable -> L47 UnsatisfiedLinkError -> L49
    L49:
        e = move-exception;
        DebugLog.LogE(e);
        r10 = ErrorCode.ERROR_UNSATISFIED_LINK;
    L47:
        th = move-exception;
        DebugLog.LogE(th);
        r10 = ErrorCode.ERROR_UNKNOWN;
        goto L51
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public int a(byte[] r3, int r4, int r5) {
        Object r0 = this.f12209f;
        monitor-enter(r0);
    L10:
        th = move-exception;
        throw th;
    L5:
        if (i() == false) goto L7;
        int r6 = b(r3, r4, r5);     // Catch: Throwable -> L10
    L8:
        monitor-exit(r0);     // Catch: Throwable -> L10
        return r6;
    L7:
        r6 = ErrorCode.ERROR_AIMIC_NOT_INIT;
        DebugLog.LogE("write audio while not init!");     // Catch: Throwable -> L10
        goto L8
    }

    @Override // com.iflytek.cloud.a.d.e.a
    public void a(boolean r3, int r4) {
        Object r0 = this.f12209f;
        monitor-enter(r0);
        DebugLog.setShowLog(r3);     // Catch: Throwable -> L13
        DebugLog.setLogLevel(DebugLog.a.values()[r4]);     // Catch: Throwable -> L13
        AIMIC.AIMICDebugLog(r3, r4);     // Catch: Throwable -> L13
        com.iflytek.cloud.a.d.e.b.b r1 = this.q;     // Catch: Throwable -> L13
        if (r1 == null) goto L15;
        if (r3 == true) goto L8;
    L10:
        boolean r5 = false;
    L11:
        r1.a(r5);     // Catch: Throwable -> L13
    L8:
        if (DebugLog.a.b.ordinal() < r4) goto L10;
        r5 = true;
    L15:
        monitor-exit(r0);     // Catch: Throwable -> L17
        return;
    L13:
        th = move-exception;
        DebugLog.LogE(th);     // Catch: Throwable -> L17
    L17:
        th = move-exception;
        throw th;
    }
}
