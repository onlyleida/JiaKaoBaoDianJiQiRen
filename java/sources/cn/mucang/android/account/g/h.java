package cn.mucang.android.account.g;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class h extends a {
    public boolean f(String str, boolean z) {
        try {
            ApiResponse apiResponseHttpGet = httpGet("/api/open/v2/mucang-user/is-random-info.htm?authToken=" + str);
            if (apiResponseHttpGet != null && apiResponseHttpGet.isSuccess()) {
                return apiResponseHttpGet.getData().getBoolean("value").booleanValue();
            }
        } catch (ApiException e2) {
            t.n("CheckRandomInfoApi", "isRandomInfo()", e2);
        } catch (HttpException e3) {
            t.n("CheckRandomInfoApi", "isRandomInfo()", e3);
        } catch (InternalException e4) {
            t.n("CheckRandomInfoApi", "isRandomInfo()", e4);
        }
        return z;
    }
}
