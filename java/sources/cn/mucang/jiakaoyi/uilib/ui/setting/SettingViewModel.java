package cn.mucang.jiakaoyi.uilib.ui.setting;

import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.setting.z0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fR\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "itemList", "Landroidx/lifecycle/MutableLiveData;", "", "", "getItemList", "()Landroidx/lifecycle/MutableLiveData;", "loadData", "", "loadType", "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SettingViewModel extends androidx.lifecycle.j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.lifecycle.z<List<Object>> f10277a = new androidx.lifecycle.z<>();

    public final androidx.lifecycle.z<List<Object>> a() {
        return this.f10277a;
    }

    public final void b(int i) {
        List<Object> setting;
        ArrayList arrayList = new ArrayList();
        AbsSettingProvider absSettingProvider = (AbsSettingProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AbsSettingProvider.class, null, 2, null);
        if (absSettingProvider != null && (setting = absSettingProvider.getSetting(i, this.f10277a)) != null) {
            arrayList.addAll(setting);
        }
        this.f10277a.l(arrayList);
    }
}
