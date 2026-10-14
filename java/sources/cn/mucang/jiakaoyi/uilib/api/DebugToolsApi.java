package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.model.DebugToolsItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.i.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\b\u0010\b\u001a\u00020\u0004H\u0014¨\u0006\t"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/api/DebugToolsApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getApiHost", "", "getDebugTools", "", "Lcn/mucang/jiakaoyi/uilib/model/DebugToolsItem;", "getSignKey", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DebugToolsApi extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://device-administration.ttt.mucang.cn" : "https://device-administration.kakamobi.cn";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#fEeHh0aIcG1Fd3GIbJJFqESX";
    }

    public final List<DebugToolsItem> m() throws ApiException, InternalException, HttpException {
        List<DebugToolsItem> dataArray = httpGet("/api/open/debug-tool-management/list.htm").getDataArray("data", DebugToolsItem.class);
        r.d(dataArray, "httpGet(\"/api/open/debug…tem::class.java\n        )");
        return dataArray;
    }
}
