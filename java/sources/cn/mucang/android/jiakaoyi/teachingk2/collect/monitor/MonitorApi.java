package cn.mucang.android.jiakaoyi.teachingk2.collect.monitor;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.monitor.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0006J\u0018\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006J\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fJ\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0006¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "create", "", "programmeId", "", "teachModelId", "step", "", "subStep", DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, "getData", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/MonitorModel;", "getScenePointList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/monitor/ScenePointModel;", "update", TtmlNode.ATTR_ID, "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MonitorApi extends BaseDeviceManagerApi {
    public final boolean m(String programmeId, String teachModelId, int i, int i2, String content) throws ApiException, InternalException, HttpException {
        r.e(programmeId, "programmeId");
        r.e(teachModelId, "teachModelId");
        r.e(content, "content");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(ExamSiteUtil.e(0L))));
        arrayList.add(new MucangNameValuePair("programmeId", programmeId));
        arrayList.add(new MucangNameValuePair("teachModelId", teachModelId));
        arrayList.add(new MucangNameValuePair("step", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("subStep", String.valueOf(i2)));
        arrayList.add(new MucangNameValuePair(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, content));
        return httpPost("/api/open/scene-trigger/create.htm", arrayList).isSuccess();
    }

    public final MonitorModel n(String programmeId, String teachModelId) throws ApiException, InternalException, HttpException {
        r.e(programmeId, "programmeId");
        r.e(teachModelId, "teachModelId");
        return (MonitorModel) httpGet("/api/open/scene-trigger/find-by-teach-model-id.htm?programmeId=" + programmeId + "&teachModelId=" + teachModelId).getData(MonitorModel.class);
    }

    public final List<ScenePointModel> o() throws ApiException, InternalException, HttpException {
        List<ScenePointModel> dataArray = httpGet(r.m("/api/open/scene-trigger/scene-point.htm?examSiteId=", Long.valueOf(ExamSiteUtil.e(0L)))).getDataArray(ScenePointModel.class);
        r.d(dataArray, "httpGet(\"/api/open/scene…nePointModel::class.java)");
        return dataArray;
    }

    public final boolean p(int i, String content) throws ApiException, InternalException, HttpException {
        r.e(content, "content");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair(TtmlNode.ATTR_ID, String.valueOf(i)));
        arrayList.add(new MucangNameValuePair(DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT, content));
        return httpPost("/api/open/scene-trigger/update.htm", arrayList).isSuccess();
    }
}
