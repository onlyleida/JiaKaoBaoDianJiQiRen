package cn.mucang.android.jiakaoyi.engine.trace.upload;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.jiakaoyi.engine.R;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseUserCollectionApi;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class c extends BaseUserCollectionApi {
    public boolean m(String str, String str2, String str3) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        String string = MucangConfig.getContext().getResources().getString(R.string.product);
        arrayList.add(new MucangNameValuePair("examSiteId", str));
        arrayList.add(new MucangNameValuePair("mapDataMd5", str2));
        arrayList.add(new MucangNameValuePair("product", string));
        arrayList.add(new MucangNameValuePair("xy", str3));
        if (n0.e(str2)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("地图MD5丢失：" + str + ",product:" + string + ",xy:" + str3 + ",version:" + o0.u());
        }
        return httpPost("/api/open/track/map/check", arrayList).isSuccess();
    }
}
