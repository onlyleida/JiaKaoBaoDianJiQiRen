package cn.mucang.android.account.one_key_login.api;

import cn.mucang.android.account.api.data.AliSecretResponse;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.account.g.b;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {
    public UserInfoResponse b(String str) throws Exception {
        ApiResponse apiResponseHttpGet = httpGet("/api/open/v3/aliyun-login/login.htm?accessToken=" + str);
        if (apiResponseHttpGet == null || !apiResponseHttpGet.isSuccess()) {
            return null;
        }
        return (UserInfoResponse) apiResponseHttpGet.getData(UserInfoResponse.class);
    }

    public AliSecretResponse c() throws ApiException, InternalException, HttpException {
        ApiResponse apiResponseHttpGet = httpGet("/api/open/v3/aliyun-login/get-secret.htm");
        if (apiResponseHttpGet == null || !apiResponseHttpGet.isSuccess()) {
            return null;
        }
        return (AliSecretResponse) apiResponseHttpGet.getData(AliSecretResponse.class);
    }
}
