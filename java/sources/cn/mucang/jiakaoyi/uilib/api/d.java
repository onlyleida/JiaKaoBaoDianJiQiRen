package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.jiakaoyi.uilib.diff.DataType;
import cn.mucang.jiakaoyi.uilib.model.DeductEntity;
import com.alibaba.fastjson.JSON;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class d extends BaseDeviceManagerApi {
    public d(KeMu keMu) {
        k(keMu.serverKeMu);
    }

    public Boolean m(long j) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("types", String.valueOf(DataType.DEDUCT.getType())));
        return Boolean.valueOf(httpPost("/api/open/owner/exam-site/report.htm", arrayList).isSuccess());
    }

    public List<DeductEntity> n(long j) throws ApiException, InternalException, HttpException {
        return httpGetDataList("/api/open/owner/judge-rule/list.htm?examSiteId=" + j, DeductEntity.class);
    }

    public Boolean o(long j) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("types", String.valueOf(DataType.DEDUCT.getType())));
        return Boolean.valueOf(httpPost("/api/open/owner/exam-site/reset.htm", arrayList).isSuccess());
    }

    public boolean p(List<DeductEntity> list) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("data", JSON.toJSONString(list)));
        arrayList.add(new MucangNameValuePair("examSiteId ", String.valueOf(list.get(0).getExamSiteId())));
        return httpPost("/api/open/owner/judge-rule/save.htm", arrayList).isSuccess();
    }
}
