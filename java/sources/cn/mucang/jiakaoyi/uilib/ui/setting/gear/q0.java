package cn.mucang.jiakaoyi.uilib.ui.setting.gear;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class q0 extends cn.mucang.android.jiakaoyi.framework.p002e.n {
    public void m(String str) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("data", str));
        arrayList.add(new MucangNameValuePair("type", "100"));
        httpPost("/api/open/study-record-open/create.htm", arrayList);
    }
}
