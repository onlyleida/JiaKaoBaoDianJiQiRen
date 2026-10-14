package cn.mucang.jiakaoyi.uilib.siterule;

import androidx.lifecycle.k0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.StepAlias;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0010\u001a\u00020\u00052\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002J\u0006\u0010\u0012\u001a\u00020\u0013J\u0014\u0010\u0014\u001a\u00020\u00132\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\rR \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0003\u0010\u0006\"\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0006R\u001d\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0006¨\u0006\u0015"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "isChangeName", "Landroidx/lifecycle/MutableLiveData;", "", "()Landroidx/lifecycle/MutableLiveData;", "setChangeName", "(Landroidx/lifecycle/MutableLiveData;)V", "state", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "getState", "stepOrderItemList", "", "Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;", "getStepOrderItemList", "checkValid", "dataList", "loadStepData", "", "save", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class InstructChangeViewModel extends LoadingViewModel {
    private final androidx.lifecycle.z<List<StepAlias>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.lifecycle.z<Boolean> f9591d;

    public InstructChangeViewModel() {
        new androidx.lifecycle.z();
        this.c = new androidx.lifecycle.z<>();
        this.f9591d = new androidx.lifecycle.z<>();
    }

    private final boolean i(List<StepAlias> list) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (n0.e(((StepAlias) it.next()).stepAliasName)) {
                return false;
            }
        }
        return true;
    }

    public final androidx.lifecycle.z<List<StepAlias>> j() {
        return this.c;
    }

    public final androidx.lifecycle.z<Boolean> k() {
        return this.f9591d;
    }

    public final void l() {
        LoadingViewModel.f(this, false, null, 3, null);
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new InstructChangeViewModel$loadStepData$1(this, null), 2, null);
    }

    public final void m(List<StepAlias> dataList) {
        kotlin.jvm.internal.r.e(dataList, "dataList");
        if (!(!dataList.isEmpty())) {
            cn.mucang.android.core.utils.u.h("无效数据!");
        } else if (!i(dataList)) {
            cn.mucang.android.core.utils.u.h("项目名称不能为空!");
        } else {
            LoadingViewModel.f(this, false, null, 2, null);
            kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new InstructChangeViewModel$save$1(dataList, this, null), 2, null);
        }
    }
}
