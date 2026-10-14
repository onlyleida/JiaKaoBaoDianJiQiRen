package cn.mucang.jiakaoyi.uilib.k.b;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import cn.mucang.jiakaoyi.uilib.model.DeviceExpiredInfo;

/* JADX INFO: loaded from: classes5.dex */
public class a extends n {
    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://lukaoyi-cost.ttt.mucang.cn" : "https://lukaoyi-cost.kakamobi.cn";
    }

    @Deprecated
    public DeviceExpiredInfo m() throws ApiException, InternalException, HttpException {
        return (DeviceExpiredInfo) httpGet("/api/open/device/get-rent-expired-time.htm").getData(DeviceExpiredInfo.class);
    }
}
