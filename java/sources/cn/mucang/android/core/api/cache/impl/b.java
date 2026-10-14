package cn.mucang.android.core.api.cache.impl;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.cache.f;

/* JADX INFO: loaded from: classes.dex */
public class b implements f {
    @Override // cn.mucang.android.core.api.cache.f
    public int a(ApiResponse apiResponse) {
        int intValue = apiResponse.getJsonObject().getIntValue("cacheTime");
        if (intValue <= 0) {
            return -1;
        }
        return intValue;
    }
}
