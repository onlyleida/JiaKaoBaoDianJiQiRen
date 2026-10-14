package com.iflytek.cloud.a.d.e;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: com.iflytek.cloud.a.d.e.a$a, reason: collision with other inner class name */
    public interface InterfaceC0228a {
        void onError(int i);

        void onRecogAudio(byte[] bArr, int i, int i2, Object obj);
    }

    public interface b {
        void onError(int i);

        void onWakeupAudio(byte[] bArr, int i, int i2, Object obj);

        void onWakeupMsg(int i, int i2, int i3, byte[] bArr, int i4, byte[] bArr2, int i5, byte[] bArr3, int i6);
    }

    public static a a(String str) {
        return com.iflytek.cloud.a.d.e.b.a.c(str);
    }

    public static a b() {
        return com.iflytek.cloud.a.d.e.b.a.h();
    }

    public static int c() {
        return com.iflytek.cloud.a.d.e.b.a.c();
    }

    public static String d() {
        return com.iflytek.cloud.a.d.e.b.a.d();
    }

    public abstract int a(String str, String str2);

    public abstract int a(byte[] bArr, int i, int i2);

    public abstract void a();

    public abstract void a(InterfaceC0228a interfaceC0228a);

    public abstract void a(b bVar);

    public abstract void a(boolean z, int i);

    public abstract String b(String str);

    public abstract void b(InterfaceC0228a interfaceC0228a);

    public abstract void b(b bVar);

    public abstract int e();

    public abstract int f();

    public abstract void g();
}
