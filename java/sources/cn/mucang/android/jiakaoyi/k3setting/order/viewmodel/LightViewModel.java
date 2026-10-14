package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import androidx.lifecycle.k0;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightAssembleModel;
import cn.mucang.android.jiakaoyi.exam.k3.light.LightExamModel;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rJ\u0010\u0010\u0014\u001a\u00020\u00112\b\b\u0002\u0010\u0015\u001a\u00020\u000bJ\u0006\u0010\u0016\u001a\u00020\u0011J\u0016\u0010\u0017\u001a\u00020\u00112\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0019J\u0006\u0010\u001a\u001a\u00020\u0011J\u0014\u0010\u001b\u001a\u00020\u00112\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001dR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0007R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "assembleList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;", "getAssembleList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "cursor", "", "hasMore", "", "lightList", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "getLightList", "loading", "deleteAssemble", "", "item", "deleteLight", "loadAssembles", "firstLoad", "loadLights", "resetAssemblesAndLights", "successAction", "Lkotlin/Function0;", "saveAssembles", "saveLights", "callback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightViewModel extends LoadingViewModel {
    private final ListLiveData<LightExamModel> c = new ListLiveData<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ListLiveData<LightAssembleModel> f4475d = new ListLiveData<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f4476e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4477f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4478g;

    public final void m(LightAssembleModel item) {
        r.e(item, "item");
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new LightViewModel$deleteAssemble$1(item, this, null), 2, null);
    }

    public final void n(LightExamModel item) {
        r.e(item, "item");
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new LightViewModel$deleteLight$1(item, this, null), 2, null);
    }

    public final ListLiveData<LightAssembleModel> o() {
        return this.f4475d;
    }

    public final ListLiveData<LightExamModel> p() {
        return this.c;
    }

    public final void q(boolean z) {
        if (z) {
            this.f4476e = "";
            this.f4477f = true;
        }
        if (this.f4478g || !this.f4477f) {
            return;
        }
        this.f4478g = true;
        if (z) {
            LoadingViewModel.f(this, false, null, 3, null);
        }
        g.b(k0.a(this), w0.b(), null, new LightViewModel$loadAssembles$1(this, z, null), 2, null);
    }

    public final void r() {
        LoadingViewModel.f(this, false, null, 3, null);
        g.b(k0.a(this), w0.b(), null, new LightViewModel$loadLights$1(this, null), 2, null);
    }

    public final void s(Function0<v> function0) {
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new LightViewModel$resetAssemblesAndLights$1(this, function0, null), 2, null);
    }

    public final void t() {
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new LightViewModel$saveAssembles$1(this, null), 2, null);
    }

    public final void u(b<Boolean> callback) {
        r.e(callback, "callback");
        LoadingViewModel.f(this, false, null, 2, null);
        g.b(k0.a(this), w0.b(), null, new LightViewModel$saveLights$1(this, callback, null), 2, null);
    }
}
