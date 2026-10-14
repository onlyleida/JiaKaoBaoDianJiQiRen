package cn.mucang.jiakaoyi.sundial.client.model;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;", "", "isLearning", "", "time", "", "(ZJ)V", "()Z", "getTime", "()J", "sundial_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LeaningTime {
    private final boolean isLearning;
    private final long time;

    public LeaningTime(boolean z, long j) {
        this.isLearning = z;
        this.time = j;
    }

    public final long getTime() {
        return this.time;
    }

    /* JADX INFO: renamed from: isLearning, reason: from getter */
    public final boolean getIsLearning() {
        return this.isLearning;
    }
}
