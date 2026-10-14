package cn.mucang.android.account.g.r;

import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.request.MucangRequest;

/* JADX INFO: loaded from: classes.dex */
public class c implements cn.mucang.android.core.api.request.d.b {
    @Override // cn.mucang.android.core.api.request.d.b
    public void a(ApiResponse apiResponse, MucangRequest mucangRequest) throws Exception {
        if (apiResponse.getErrorCode() == 403) {
            AccountManager.h().m();
        }
    }
}
