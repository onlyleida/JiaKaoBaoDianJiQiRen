package kotlinx.coroutines;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f16043a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[CoroutineStart.values().length];
        f16043a = iArr;
        CoroutineStart coroutineStart = CoroutineStart.DEFAULT;
        iArr[coroutineStart.ordinal()] = 1;
        CoroutineStart coroutineStart2 = CoroutineStart.ATOMIC;
        iArr[coroutineStart2.ordinal()] = 2;
        CoroutineStart coroutineStart3 = CoroutineStart.UNDISPATCHED;
        iArr[coroutineStart3.ordinal()] = 3;
        CoroutineStart coroutineStart4 = CoroutineStart.LAZY;
        iArr[coroutineStart4.ordinal()] = 4;
        int[] iArr2 = new int[CoroutineStart.values().length];
        b = iArr2;
        iArr2[coroutineStart.ordinal()] = 1;
        iArr2[coroutineStart2.ordinal()] = 2;
        iArr2[coroutineStart3.ordinal()] = 3;
        iArr2[coroutineStart4.ordinal()] = 4;
    }
}
