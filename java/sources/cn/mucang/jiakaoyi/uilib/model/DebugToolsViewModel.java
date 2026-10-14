package cn.mucang.jiakaoyi.uilib.model;

import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\fR&\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/DebugToolsViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "toolsLiveData", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;", "getToolsLiveData", "()Landroidx/lifecycle/MutableLiveData;", "setToolsLiveData", "(Landroidx/lifecycle/MutableLiveData;)V", "loadTools", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugToolsViewModel extends LoadingViewModel {
    private z<List<DebugToolsItem>> c = new z<>();

    public final z<List<DebugToolsItem>> i() {
        return this.c;
    }

    public final void j() {
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new DebugToolsViewModel$loadTools$1(this, null), 2, null);
    }
}
