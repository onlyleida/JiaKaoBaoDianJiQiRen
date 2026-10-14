package cn.mucang.android.account.g;

import cn.mucang.android.account.api.data.ThirdBindResponse;
import cn.mucang.android.account.api.data.ThirdLoginRequest;
import cn.mucang.android.account.api.data.ThirdLoginResponse;
import cn.mucang.android.account.third.LoginPlatforms;
import cn.mucang.android.account.third.u;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.n0;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class n extends a {
    public List<ThirdBindResponse> f() throws ApiException, InternalException, HttpException {
        return httpGet("/third/list-third-accounts.htm").getDataArray(ThirdBindResponse.class);
    }

    public ThirdLoginResponse g(ThirdLoginRequest thirdLoginRequest) throws ApiException, InternalException, HttpException {
        Map<String, String> mapE;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(ExtraKey.avatar, thirdLoginRequest.getAvatar()));
        arrayList.add(new MucangNameValuePair("birthday", thirdLoginRequest.getBirthday()));
        arrayList.add(new MucangNameValuePair(SocialConstants.PARAM_COMMENT, thirdLoginRequest.getDescription()));
        arrayList.add(new MucangNameValuePair("gender", thirdLoginRequest.getGender()));
        arrayList.add(new MucangNameValuePair("homePage", thirdLoginRequest.getHomePage()));
        arrayList.add(new MucangNameValuePair("nickname", thirdLoginRequest.getNickname()));
        arrayList.add(new MucangNameValuePair("openId", thirdLoginRequest.getOpenId()));
        arrayList.add(new MucangNameValuePair("unionId", thirdLoginRequest.getUnionId()));
        arrayList.add(new MucangNameValuePair("thirdParty", thirdLoginRequest.getThirdParty()));
        arrayList.add(new MucangNameValuePair("appId", thirdLoginRequest.getAppId()));
        if (n0.g(thirdLoginRequest.getFrom())) {
            arrayList.add(new MucangNameValuePair("from", thirdLoginRequest.getFrom()));
        }
        u uVarA = LoginPlatforms.f2300a.a(thirdLoginRequest.getThirdParty());
        if (uVarA != null && (mapE = uVarA.e()) != null) {
            for (Map.Entry<String, String> entry : mapE.entrySet()) {
                arrayList.add(new MucangNameValuePair(entry.getKey(), entry.getValue()));
            }
        }
        return (ThirdLoginResponse) httpPost("/third/login.htm", arrayList).getData(ThirdLoginResponse.class);
    }

    public boolean h(String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("thirdParty", str));
        return httpPost("/third/unbind.htm", arrayList).isSuccess();
    }
}
