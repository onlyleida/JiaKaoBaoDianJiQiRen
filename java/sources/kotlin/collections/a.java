package kotlin.collections;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(k = 3, mv = {1, 5, 1})
public final /* synthetic */ class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f14592a;

    static {
        int[] iArr = new int[State.values().length];
        f14592a = iArr;
        iArr[State.Done.ordinal()] = 1;
        iArr[State.Ready.ordinal()] = 2;
    }
}
