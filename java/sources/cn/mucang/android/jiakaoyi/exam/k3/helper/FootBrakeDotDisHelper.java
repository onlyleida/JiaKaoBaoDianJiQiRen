package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\b\u0010\u0016\u001a\u00020\u0006H\u0007J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;", "", "stepInfo", "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;", "(Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;)V", "hasValidBrake", "", "getHasValidBrake", "()Z", "setHasValidBrake", "(Z)V", "mFootBrakeDistance", "", "mTriggerPositionHelper", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/utils/TriggerPositionHelper;", "getStepInfo", "()Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;", "checkFootBrake", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "getBrakeDistance", "", "hasFootBrake", "isNearTo", "exam_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FootBrakeDotDisHelper {
    private boolean hasValidBrake;
    private float mFootBrakeDistance;
    private cn.mucang.android.jiakaoyi.engine.processor.exam.j.a mTriggerPositionHelper;
    private final cn.mucang.android.jiakaoyi.engine.i.c.b stepInfo;

    public FootBrakeDotDisHelper(cn.mucang.android.jiakaoyi.engine.i.c.b stepInfo) {
        r.e(stepInfo, "stepInfo");
        this.stepInfo = stepInfo;
        this.mTriggerPositionHelper = new cn.mucang.android.jiakaoyi.engine.processor.exam.j.a(stepInfo.b);
    }

    private final boolean isNearTo(e eVar) {
        return this.mTriggerPositionHelper.b(eVar, false);
    }

    public final boolean checkFootBrake(e signal) {
        r.e(signal, "signal");
        if (signal.d().f5269g) {
            this.mFootBrakeDistance = signal.d().C;
        }
        boolean z = false;
        if (!isNearTo(signal)) {
            return false;
        }
        if (!this.hasValidBrake) {
            if (this.mFootBrakeDistance > BitmapDescriptorFactory.HUE_RED && signal.d().C - this.mFootBrakeDistance <= this.stepInfo.c) {
                z = true;
            }
            this.hasValidBrake = z;
        }
        return true;
    }

    public final double getBrakeDistance() {
        return this.stepInfo.c;
    }

    public final boolean getHasValidBrake() {
        return this.hasValidBrake;
    }

    public final cn.mucang.android.jiakaoyi.engine.i.c.b getStepInfo() {
        return this.stepInfo;
    }

    public final boolean hasFootBrake() {
        return this.mFootBrakeDistance > BitmapDescriptorFactory.HUE_RED;
    }

    public final void setHasValidBrake(boolean z) {
        this.hasValidBrake = z;
    }
}
