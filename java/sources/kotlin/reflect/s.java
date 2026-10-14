package kotlin.reflect;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {1, 5, 1})
public final /* synthetic */ class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f15781a;

    static {
        int[] iArr = new int[KVariance.values().length];
        f15781a = iArr;
        iArr[KVariance.INVARIANT.ordinal()] = 1;
        iArr[KVariance.IN.ordinal()] = 2;
        iArr[KVariance.OUT.ordinal()] = 3;
    }
}
