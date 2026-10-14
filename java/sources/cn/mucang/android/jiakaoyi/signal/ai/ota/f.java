package cn.mucang.android.jiakaoyi.signal.ai.ota;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class f extends n {
    f() {
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getApiHost() {
        return MucangConfig.v() ? "https://device-update.ttt.mucang.cn" : "https://device-update.kakamobi.cn";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.p002e.n, cn.mucang.android.core.api.a
    protected String getSignKey() {
        return "*#06#cIpEbIKmbpdzk2tzbWyjg0Rw";
    }

    public AiUpdateModel m(int i) throws ApiException, InternalException, HttpException {
        List dataArray = httpPost("/api/open/update/check-update.htm", ("[{\"type\":9,\"version\":" + i + "}]").getBytes()).getDataArray(AiUpdateModel.class);
        if (g.b(dataArray)) {
            return null;
        }
        return (AiUpdateModel) dataArray.get(0);
    }
}
