package cn.mucang.jiakaoyi.uilib.login.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.o.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/api/BaseBusinessLoginApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "ssoLogin", "Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class BaseBusinessLoginApi extends n {
    public final XyUserModel m() throws ApiException, InternalException, HttpException {
        b();
        Object data = httpGet("/api/admin/user/constructors-login.htm").getData((Class<Object>) XyUserModel.class);
        r.d(data, "httpGet(\"/api/admin/user…(XyUserModel::class.java)");
        return (XyUserModel) data;
    }
}
