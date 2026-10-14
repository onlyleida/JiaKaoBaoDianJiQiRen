package cn.mucang.android.account.g;

import cn.mucang.android.account.data.WeChatUserEntity;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.n0;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class o extends a {
    public WeChatUserEntity f(String str) throws ApiException, InternalException, HttpException {
        if (n0.e(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("authToken", str));
        arrayList.add(new MucangNameValuePair("appId", cn.mucang.android.account.utils.a.a()));
        ApiResponse apiResponseHttpPost = httpPost("/api/open/v3/weixin-user/get.htm", arrayList);
        if (apiResponseHttpPost == null || !apiResponseHttpPost.isSuccess()) {
            return null;
        }
        return (WeChatUserEntity) apiResponseHttpPost.getData(WeChatUserEntity.class);
    }
}
