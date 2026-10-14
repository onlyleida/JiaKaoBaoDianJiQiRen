package com.felhr.usbserial;

/* JADX INFO: loaded from: classes5.dex */
abstract class a extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f11699a = true;
    private volatile boolean b = true;
    private volatile Thread c;

    a() {
    }

    abstract void a();

    void b() {
        this.b = false;
        if (this.c != null) {
            this.c.interrupt();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (this.b) {
            this.c = Thread.currentThread();
            while (this.b && !this.c.isInterrupted()) {
                a();
            }
        }
    }
}
