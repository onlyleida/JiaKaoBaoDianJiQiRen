package cn.mucang.android.account.g;

import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.api.verify.captcha.CaptchaConstant;
import cn.mucang.android.core.encode.Digests;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.n0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class j extends a {
    public UserInfoResponse f(String str, String str2, String str3, String str4) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("phoneNumber", str));
        arrayList.add(new MucangNameValuePair("password", Digests.md5(str2)));
        arrayList.add(new MucangNameValuePair(CaptchaConstant.KEY_CAPTCHA_RESULT, str4));
        if (n0.g(str3)) {
            arrayList.add(new MucangNameValuePair("from", str3));
        }
        return (UserInfoResponse) httpPost("/api/open/v3/login/submit.htm", (List<MucangNameValuePair>) arrayList, true).getData(UserInfoResponse.class);
    }
}
