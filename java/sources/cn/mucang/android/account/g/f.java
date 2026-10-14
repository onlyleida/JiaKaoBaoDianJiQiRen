package cn.mucang.android.account.g;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.encode.Digests;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f extends a {
    public void f(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("oldPassword", Digests.md5(str)));
        arrayList.add(new MucangNameValuePair("newPassword", Digests.md5(str2)));
        httpPost("/change-password/submit.htm", arrayList);
    }
}
