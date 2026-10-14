package cn.mucang.android.jiakaoyi.k3setting.order.viewmodel;

import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.jiakaoyi.uilib.StepGetter;
import cn.mucang.jiakaoyi.uilib.model.K3OrderItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlinx.coroutines.g;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "itemList", "Landroidx/lifecycle/MutableLiveData;", "", "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;", "getItemList", "()Landroidx/lifecycle/MutableLiveData;", "loadData", "", "siteId", "", "reset", "saveExamSiteConfig", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ManualOrderViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<List<K3OrderItem>> f4479a = new z<>();

    public final z<List<K3OrderItem>> a() {
        return this.f4479a;
    }

    public final void b(long j) {
        g.b(k0.a(this), w0.b(), null, new ManualOrderViewModel$loadData$1(j, this, null), 2, null);
    }

    public final void c(long j) {
        if (cn.mucang.android.core.utils.g.b(this.f4479a.e())) {
            z<List<K3OrderItem>> zVar = this.f4479a;
            List<Step> listF = StepGetter.f();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = listF.iterator();
            while (it.hasNext()) {
                arrayList.add(new K3OrderItem((Step) it.next(), true));
            }
            zVar.l(arrayList);
        } else {
            List<K3OrderItem> listE = this.f4479a.e();
            if (listE != null) {
                Iterator<T> it2 = listE.iterator();
                while (it2.hasNext()) {
                    ((K3OrderItem) it2.next()).setShowInRoute(true);
                }
            }
            z<List<K3OrderItem>> zVar2 = this.f4479a;
            zVar2.l(zVar2.e());
        }
        d(j);
    }

    public final void d(long j) {
        List<K3OrderItem> listE = this.f4479a.e();
        if (listE != null) {
            StepGetter.f9318a.h(j, listE);
        } else {
            f.o("saveManualOrderConfig 为null");
        }
    }
}
