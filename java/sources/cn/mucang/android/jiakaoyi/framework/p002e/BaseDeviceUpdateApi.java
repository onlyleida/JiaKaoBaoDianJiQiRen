package cn.mucang.android.jiakaoyi.framework.p002e;

import cn.mucang.android.core.config.MucangConfig;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.e.f, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0014J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceUpdateApi;", "Lcn/mucang/android/jiakaoyi/framework/api/JBaseApi;", "()V", "getApiHost", "", "getSignKey", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class BaseDeviceUpdateApi extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://device-update.ttt.mucang.cn" : "https://device-update.kakamobi.cn";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#cIpEbIKmbpdzk2tzbWyjg0Rw";
    }
}
