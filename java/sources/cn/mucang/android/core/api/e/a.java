package cn.mucang.android.core.api.e;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.request.MucangRequest;

/* JADX INFO: loaded from: classes.dex */
public class a implements cn.mucang.android.core.api.request.d.b {
    @Override // cn.mucang.android.core.api.request.d.b
    public void a(ApiResponse apiResponse, MucangRequest mucangRequest) throws Exception {
        if (!apiResponse.isSuccess()) {
            throw new ApiException(apiResponse);
        }
    }
}
