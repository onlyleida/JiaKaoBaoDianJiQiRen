package cn.mucang.jiakaoyi.uilib.login.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.login.model.ConfigLoginItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.login.o.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\b\u0010\b\u001a\u00020\u0004H\u0014¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/login/api/LoginConfigApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getApiHost", "", "getConfigList", "", "Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginItem;", "getSignKey", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LoginConfigApi extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://xy-biz-user.ttt.mucang.cn" : "https://xy-biz-user.kakamobi.cn";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "reHc0a9SB0hD69AASC";
    }

    public final List<ConfigLoginItem> m() throws ApiException, InternalException, HttpException {
        List<ConfigLoginItem> dataArray = httpGet("/api/open/user-config/get-login-config.htm").getDataArray("data.configs", ConfigLoginItem.class);
        r.d(dataArray, "httpGet(\"/api/open/user-…figLoginItem::class.java)");
        return dataArray;
    }
}
