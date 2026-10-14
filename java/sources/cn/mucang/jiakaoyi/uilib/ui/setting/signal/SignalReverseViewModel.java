package cn.mucang.jiakaoyi.uilib.ui.setting.signal;

import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.jiakaoyi.uilib.ui.setting.signal.model.SignalReverseItem;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalReverseViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "dataList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalReverseItem;", "getDataList", "()Landroidx/lifecycle/MutableLiveData;", "loadData", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SignalReverseViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<List<SignalReverseItem>> f10209a = new z<>();

    public final z<List<SignalReverseItem>> a() {
        return this.f10209a;
    }

    public final void b() {
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new SignalReverseViewModel$loadData$1(this, null), 2, null);
    }
}
