package cn.mucang.jiakaoyi.uilib.ui.setting.signal.model;

import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.jiakaoyi.signal.center.config.CarSignal;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.signal.a0.b, reason: from Kotlin metadata and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalReverseItem;", "", "carSignal", "Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;", "isReverse", "", "(Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;Z)V", "getCarSignal", "()Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;", "()Z", "setReverse", "(Z)V", "component1", "component2", MenuOptions.COPY, "equals", "other", "hashCode", "", "toString", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final /* data */ class SignalReverseItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from toString */
    private final CarSignal carSignal;

    /* JADX INFO: renamed from: b, reason: from toString */
    private boolean isReverse;

    public SignalReverseItem(CarSignal carSignal, boolean z) {
        r.e(carSignal, "carSignal");
        this.carSignal = carSignal;
        this.isReverse = z;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final CarSignal getCarSignal() {
        return this.carSignal;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final boolean getIsReverse() {
        return this.isReverse;
    }

    public final void c(boolean z) {
        this.isReverse = z;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SignalReverseItem)) {
            return false;
        }
        SignalReverseItem signalReverseItem = (SignalReverseItem) other;
        return this.carSignal == signalReverseItem.carSignal && this.isReverse == signalReverseItem.isReverse;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    public int hashCode() {
        int iHashCode = this.carSignal.hashCode() * 31;
        boolean z = this.isReverse;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public String toString() {
        return "SignalReverseItem(carSignal=" + this.carSignal + ", isReverse=" + this.isReverse + ')';
    }
}
