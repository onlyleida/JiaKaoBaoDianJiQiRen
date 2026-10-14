package cn.mucang.android.account.g;

import cn.mucang.android.account.api.data.CommonResponse;
import cn.mucang.android.account.api.data.PopupCaptchaResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class l extends a {
    public String f(PopupCaptchaResponse popupCaptchaResponse, String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("captchaId", popupCaptchaResponse.getCaptchaId()));
        arrayList.add(new MucangNameValuePair("captchaCode", str));
        return ((CommonResponse) httpPost(popupCaptchaResponse.getVerifyUrl(), arrayList).getData(CommonResponse.class)).getCaptchaToken();
    }
}
