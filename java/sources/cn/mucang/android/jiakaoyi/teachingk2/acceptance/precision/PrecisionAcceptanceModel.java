package cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R(\u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR(\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\t¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceModel;", "Ljava/io/Serializable;", "()V", "backDistance", "Lkotlin/Pair;", "", "getBackDistance", "()Lkotlin/Pair;", "setBackDistance", "(Lkotlin/Pair;)V", "frontDistance", "getFrontDistance", "setFrontDistance", "headDistance", "getHeadDistance", "setHeadDistance", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PrecisionAcceptanceModel implements Serializable {
    private Pair<Double, Double> backDistance;
    private Pair<Double, Double> frontDistance;
    private Pair<Double, Double> headDistance;

    public final Pair<Double, Double> getBackDistance() {
        return this.backDistance;
    }

    public final Pair<Double, Double> getFrontDistance() {
        return this.frontDistance;
    }

    public final Pair<Double, Double> getHeadDistance() {
        return this.headDistance;
    }

    public final void setBackDistance(Pair<Double, Double> pair) {
        this.backDistance = pair;
    }

    public final void setFrontDistance(Pair<Double, Double> pair) {
        this.frontDistance = pair;
    }

    public final void setHeadDistance(Pair<Double, Double> pair) {
        this.headDistance = pair;
    }
}
