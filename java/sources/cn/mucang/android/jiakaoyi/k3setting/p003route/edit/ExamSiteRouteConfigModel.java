package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.engine.config.BaseStepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.g;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0006R#\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/ExamSiteRouteConfigModel;", "Landroidx/lifecycle/ViewModel;", "()V", "stepConfigData", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;", "getStepConfigData", "()Landroidx/lifecycle/MutableLiveData;", "getConfigs", "", "examSiteId", "", "cityCode", "", "getStepConfigSetupDistance", "", "step", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ExamSiteRouteConfigModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<Map<Step, BaseStepConfig>> f4531a = new z<>();

    public final void a(long j, String cityCode) {
        r.e(cityCode, "cityCode");
        g.b(k0.a(this), w0.b(), null, new ExamSiteRouteConfigModel$getConfigs$1(j, cityCode, this, null), 2, null);
    }

    public final z<Map<Step, BaseStepConfig>> b() {
        return this.f4531a;
    }
}
