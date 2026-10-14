package cn.mucang.jiakaoyi.uilib.ui.login.k;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.n;

/* JADX INFO: loaded from: classes5.dex */
public class a extends n {
    public boolean m() throws ApiException, InternalException, HttpException {
        return httpGet("/api/open/user/quit-device.htm").isSuccess();
    }
}
