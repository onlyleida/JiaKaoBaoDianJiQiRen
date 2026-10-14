package kotlinx.coroutines.channels;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f15877a;

    static {
        int[] iArr = new int[BufferOverflow.values().length];
        f15877a = iArr;
        iArr[BufferOverflow.SUSPEND.ordinal()] = 1;
        iArr[BufferOverflow.DROP_LATEST.ordinal()] = 2;
        iArr[BufferOverflow.DROP_OLDEST.ordinal()] = 3;
    }
}
