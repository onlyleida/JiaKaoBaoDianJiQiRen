package cn.mucang.android.core.api.cache.impl;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.cache.g;

/* JADX INFO: loaded from: classes.dex */
public class c implements g {
    @Override // cn.mucang.android.core.api.cache.g
    public int a(ApiResponse apiResponse) {
        return apiResponse.getJsonObject().getIntValue("checkTime");
    }
}
