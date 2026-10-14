package cn.mucang.android.jiakaoyi.mapcollect.b.a;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import com.alibaba.fastjson.JSON;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a extends n {
    public List<String> m(long j) throws ApiException, InternalException, HttpException {
        return httpGetDataList("/api/open/exam-site/get-share-step.htm?examSiteId=" + j, String.class);
    }

    public boolean n(long j, List<String> list) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, JSON.toJSONString(list)));
        return httpPost("/api/open/exam-site/save-share-step.htm", arrayList).isSuccess();
    }
}
