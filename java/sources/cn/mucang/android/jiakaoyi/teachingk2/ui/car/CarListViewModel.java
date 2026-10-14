package cn.mucang.android.jiakaoyi.teachingk2.ui.car;

import androidx.lifecycle.k0;
import cn.mucang.android.jiakaoyi.framework.base.LoadingViewModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.jiakaoyi.uilib.model.ListLiveData;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\tR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarListViewModel;", "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;", "()V", "carList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "getCarList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "addToMyCar", "", TtmlNode.ATTR_ID, "", "loadCarList", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class CarListViewModel extends LoadingViewModel {
    private final ListLiveData<HpCarMapModel> c = new ListLiveData<>();

    public final void i(int i) {
        kotlinx.coroutines.g.b(j0.a(w0.b()), null, null, new CarListViewModel$addToMyCar$1(i, this, null), 3, null);
    }

    public final ListLiveData<HpCarMapModel> j() {
        return this.c;
    }

    public final void k() {
        LoadingViewModel.f(this, false, null, 3, null);
        kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new CarListViewModel$loadCarList$1(this, null), 2, null);
    }
}
