package cn.mucang.android.account.g;

import cn.mucang.android.account.api.data.ThirdLoginRequest;
import cn.mucang.android.account.api.data.UpdateUserInfo;
import cn.mucang.android.account.third.LoginPlatforms;
import cn.mucang.android.account.third.u;
import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.tencent.bugly.Bugly;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class d extends a {
    public UpdateUserInfo f(String str, boolean z) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("token", str));
        arrayList.add(new MucangNameValuePair("forceUpdate", z ? "true" : Bugly.SDK_IS_DEV));
        ApiResponse apiResponseHttpPost = httpPost("/api/open/v3/third-bind/bind.htm", arrayList);
        if (apiResponseHttpPost == null || !apiResponseHttpPost.isSuccess()) {
            return null;
        }
        return (UpdateUserInfo) apiResponseHttpPost.getData(UpdateUserInfo.class);
    }

    public ApiResponse g(ThirdLoginRequest thirdLoginRequest) throws ApiException, InternalException, HttpException {
        Map<String, String> mapE;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("appId", thirdLoginRequest.getAppId()));
        arrayList.add(new MucangNameValuePair("thirdParty", thirdLoginRequest.getThirdParty()));
        arrayList.add(new MucangNameValuePair("openId", thirdLoginRequest.getOpenId()));
        arrayList.add(new MucangNameValuePair("unionId", thirdLoginRequest.getUnionId()));
        arrayList.add(new MucangNameValuePair(ExtraKey.avatar, thirdLoginRequest.getAvatar()));
        arrayList.add(new MucangNameValuePair("gender", thirdLoginRequest.getGender()));
        arrayList.add(new MucangNameValuePair("nickname", thirdLoginRequest.getNickname()));
        arrayList.add(new MucangNameValuePair(SocialConstants.PARAM_COMMENT, thirdLoginRequest.getDescription()));
        arrayList.add(new MucangNameValuePair("homePage", thirdLoginRequest.getHomePage()));
        arrayList.add(new MucangNameValuePair("birthday", thirdLoginRequest.getBirthday()));
        u uVarA = LoginPlatforms.f2300a.a(thirdLoginRequest.getThirdParty());
        if (uVarA != null && (mapE = uVarA.e()) != null) {
            for (Map.Entry<String, String> entry : mapE.entrySet()) {
                arrayList.add(new MucangNameValuePair(entry.getKey(), entry.getValue()));
            }
        }
        return httpPost("/api/open/v3/third-bind/check-bind.htm", arrayList);
    }
}
