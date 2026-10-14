package cn.mucang.android.core.permission.setting;

import cn.mucang.android.core.config.MucangConfig;
import com.alibaba.fastjson.JSON;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.permission.setting.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0014J$\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004J \u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004J\b\u0010\u000b\u001a\u00020\u0004H\u0014¨\u0006\f"}, d2 = {"Lcn/mucang/android/core/permission/setting/PermissionConfigApi;", "Lcn/mucang/android/core/api/BaseApi;", "()V", "getApiHost", "", "getPermissionConfig", "", "Lcn/mucang/android/core/permission/setting/PermissionInfo;", "configVersion", "key", "getSafeInfo", "getSignKey", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PermissionConfigApi extends cn.mucang.android.core.api.a {
    public final List<PermissionInfo> b(String str, String str2) {
        List<PermissionInfo> array = JSON.parseArray(httpGet("/api/open/authority-config/get-config.htm?configVersion=" + ((Object) str) + "&&key=" + ((Object) str2)).getData(""), PermissionInfo.class);
        r.d(array, "parseArray(dataStr,PermissionInfo::class.java)");
        return array;
    }

    public final String c(String str, String str2) {
        return httpGet("/api/open/authority-config/get-config.htm?configVersion=" + ((Object) str) + "&&key=" + ((Object) str2)).getData("");
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://mc-privacy.ttt.mucang.cn" : "https://mc-privacy.kakamobi.cn";
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#dZZul5KTdoxrbX1tqYhsjaWK";
    }
}
