package kotlinx.coroutines.scheduling;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f16082a;

    static {
        int[] iArr = new int[CoroutineScheduler.WorkerState.values().length];
        f16082a = iArr;
        iArr[CoroutineScheduler.WorkerState.PARKING.ordinal()] = 1;
        iArr[CoroutineScheduler.WorkerState.BLOCKING.ordinal()] = 2;
        iArr[CoroutineScheduler.WorkerState.CPU_ACQUIRED.ordinal()] = 3;
        iArr[CoroutineScheduler.WorkerState.DORMANT.ordinal()] = 4;
        iArr[CoroutineScheduler.WorkerState.TERMINATED.ordinal()] = 5;
    }
}
