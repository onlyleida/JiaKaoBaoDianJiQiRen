package org.libpag;

/* JADX INFO: loaded from: classes6.dex */
class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ HardwareDecoder f16282a;

    b(HardwareDecoder hardwareDecoder) {
        this.f16282a = hardwareDecoder;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f16282a.c.stop();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            this.f16282a.c.release();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        this.f16282a.c = null;
        this.f16282a.b.a();
    }
}
