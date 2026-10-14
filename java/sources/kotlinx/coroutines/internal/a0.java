package kotlinx.coroutines.internal;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f16007a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f16007a;
    }

    public static final String b(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
