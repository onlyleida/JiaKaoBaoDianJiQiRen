package kotlin;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {1, 5, 1})
public final /* synthetic */ class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f14632a;

    static {
        int[] iArr = new int[LazyThreadSafetyMode.values().length];
        f14632a = iArr;
        iArr[LazyThreadSafetyMode.SYNCHRONIZED.ordinal()] = 1;
        iArr[LazyThreadSafetyMode.PUBLICATION.ordinal()] = 2;
        iArr[LazyThreadSafetyMode.NONE.ordinal()] = 3;
    }
}
