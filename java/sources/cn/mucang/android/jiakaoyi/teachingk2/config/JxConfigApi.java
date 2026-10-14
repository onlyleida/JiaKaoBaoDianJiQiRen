package cn.mucang.android.jiakaoyi.teachingk2.config;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.jiakaoyi.uilib.model.ConfigModel;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.config.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/config/JxConfigApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getConfigList", "", "Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JxConfigApi extends BaseDeviceManagerApi {
    public final List<ConfigModel> m() throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/car-resource-mapping/find-owner-config.htm").getDataArray(ConfigModel.class);
    }
}
