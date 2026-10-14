package kotlinx.coroutines.flow;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f15958a;

    static {
        int[] iArr = new int[SharingCommand.values().length];
        f15958a = iArr;
        iArr[SharingCommand.START.ordinal()] = 1;
        iArr[SharingCommand.STOP.ordinal()] = 2;
        iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
    }
}
