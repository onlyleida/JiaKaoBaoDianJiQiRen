package cn.mucang.android.jiakaoyi.teachingk2.collectsite.v;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class b extends BaseDeviceManagerApi {
    public void m(ExamSiteModel examSiteModel, double d2, double d3, double d4) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(examSiteModel.examSiteId)));
        arrayList.add(new MucangNameValuePair("originLatitude", String.valueOf(d2)));
        arrayList.add(new MucangNameValuePair("originLongitude", String.valueOf(d3)));
        arrayList.add(new MucangNameValuePair("originAltitude", String.valueOf(d4)));
        if (!httpPost("/api/open/owner/exam-site-map/set-origin-gps.htm", arrayList).isSuccess()) {
            throw new RuntimeException("设置失败");
        }
    }
}
