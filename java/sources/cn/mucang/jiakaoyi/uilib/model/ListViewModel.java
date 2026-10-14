package cn.mucang.jiakaoyi.uilib.model;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.j0;
import androidx.lifecycle.z;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.model.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u000bJ\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00182\u0006\u0010\u0004\u001a\u00020\u0005H$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/ListViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "()V", "cursor", "", "dataList", "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "getDataList", "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;", "hasMore", "", "getHasMore", "()Z", "setHasMore", "(Z)V", "loadDataState", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "getLoadDataState", "()Landroidx/lifecycle/MutableLiveData;", "loadData", "", "firstLoad", "Lcn/mucang/android/core/api/fetch/FetchMoreResponse;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class ListViewModel<T> extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<LoadingState> f9452a = new z<>();
    private final ListLiveData<T> b = new ListLiveData<>();
    private String c = "";

    public final ListLiveData<T> c() {
        return this.b;
    }

    public final z<LoadingState> d() {
        return this.f9452a;
    }

    protected abstract cn.mucang.android.core.api.d.b<T> e(String str);

    public final void f(boolean z) {
    }
}
