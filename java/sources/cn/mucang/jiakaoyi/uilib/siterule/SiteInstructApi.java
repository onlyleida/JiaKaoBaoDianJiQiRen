package cn.mucang.jiakaoyi.uilib.siterule;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.siterule.i0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b¨\u0006\r"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/siterule/SiteInstructApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getInstructChange", "Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;", "type", "", "driveLicense", "", "saveInstructChange", "", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "Companion", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SiteInstructApi extends BaseDeviceManagerApi {
    public final InstructResult m(int i, String driveLicense) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(driveLicense, "driveLicense");
        return (InstructResult) httpGetData("/api/open/owner/device-config/get-config.htm?type=" + i + "&driveLicense=" + driveLicense, InstructResult.class);
    }

    public final boolean n(int i, String driveLicense, String content) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(driveLicense, "driveLicense");
        kotlin.jvm.internal.r.e(content, "content");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("type", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("driveLicense", driveLicense));
        arrayList.add(new MucangNameValuePair(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, content));
        return httpPost("/api/open/owner/device-config/save.htm", arrayList).isSuccess();
    }
}
