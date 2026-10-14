package cn.mucang.android.jiakaoyi.teachingk2.ui.settings;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceMonitorApi;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004H\u0007J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006H\u0007J\b\u0010\r\u001a\u00020\u000bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager;", "", "()V", "CHECK_MODULE_SP", "", "isCanceled", "", "module", "", "code", "setCancel", "", "checked", "uploadCheckConfig", "CheckConfigUploadApi", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CheckModuleManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CheckModuleManager f8245a = new CheckModuleManager();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager$CheckConfigUploadApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceMonitorApi;", "()V", "upload", "", "codes", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a extends BaseDeviceMonitorApi {
        public final void m(String codes) throws ApiException, InternalException, HttpException {
            r.e(codes, "codes");
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MucangNameValuePair("disableCode", codes));
            v vVar = v.f15822a;
            httpPost("/api/open/fault-config/save.htm", arrayList);
        }
    }

    private CheckModuleManager() {
    }

    public static final boolean a(int i, String code) {
        r.e(code, "code");
        return j0.g("check_module_sp", i + '-' + code, false);
    }

    public static final void b(int i, String code, boolean z) {
        r.e(code, "code");
        j0.b("check_module_sp").edit().putBoolean(i + '-' + code, z).apply();
    }

    public static final void c() {
        kotlinx.coroutines.g.b(l1.f16051a, w0.b(), null, new CheckModuleManager$uploadCheckConfig$1(null), 2, null);
    }
}
