package cn.mucang.android.jiakaoyi.teachingk2.autoteach.check;

import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.AutoTeachStatus;
import cn.mucang.android.jiakaoyi.teachingk2.autoteach.model.CheckStatusModel;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachStopCheck;", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/BaseTeachCheck;", "()V", "initStatus", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;", "checkStatus", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachStopCheck extends BaseTeachCheck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CheckStatusModel f6282a;

    public TeachStopCheck() {
        CheckStatusModel checkStatusModel = new CheckStatusModel(AutoTeachStatus.CheckStop);
        checkStatusModel.i(k0.a(R.string.teachbase_emergency_button_not_off));
        v vVar = v.f15822a;
        this.f6282a = checkStatusModel;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.autoteach.check.BaseTeachCheck
    public CheckStatusModel a(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        if (signalGetter.d().e()) {
            return this.f6282a;
        }
        return null;
    }
}
