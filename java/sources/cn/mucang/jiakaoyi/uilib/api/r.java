package cn.mucang.jiakaoyi.uilib.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.p002e.n;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class r extends n {
    public boolean m(String str, String str2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, str));
        if (n0.g(str2)) {
            arrayList.add(new MucangNameValuePair("carTypeId", str2));
        }
        return httpPost("/api/open/device/save-gear-learning.htm", arrayList).isSuccess();
    }
}
