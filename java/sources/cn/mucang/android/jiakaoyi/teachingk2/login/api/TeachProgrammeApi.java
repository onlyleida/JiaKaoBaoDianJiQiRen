package cn.mucang.android.jiakaoyi.teachingk2.login.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.teachingk2.model.TeachPlanItemModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.q.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J:\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/api/TeachProgrammeApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "copyProgramme", "", "newModel", "Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;", "createProgramme", "programmeName", "", "carModelId", "", "carTypeName", "examSiteId", "", "templateId", "gearType", "deleteProgramme", TtmlNode.ATTR_ID, "updateProgramme", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachProgrammeApi extends BaseDeviceManagerApi {
    public TeachProgrammeApi() {
        b();
    }

    public final boolean m(TeachPlanItemModel newModel) throws ApiException, InternalException, HttpException {
        r.e(newModel, "newModel");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("programmeName", newModel.programmeName));
        arrayList.add(new MucangNameValuePair("newCarTypeId", String.valueOf(newModel.universalModelNum)));
        arrayList.add(new MucangNameValuePair("templateId", String.valueOf(newModel.id)));
        arrayList.add(new MucangNameValuePair("newCarTypeName", newModel.universalModelName));
        arrayList.add(new MucangNameValuePair("gearType", String.valueOf(newModel.gearType)));
        return httpPost("/api/admin/owner/teach-programme/copy.htm", arrayList).isSuccess();
    }

    public final boolean n(String str, int i, String str2, long j, long j2, int i2) throws ApiException, InternalException, HttpException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MucangNameValuePair("programmeName", str));
        arrayList.add(new MucangNameValuePair("newCarTypeId", String.valueOf(i)));
        arrayList.add(new MucangNameValuePair("examSiteId", String.valueOf(j)));
        arrayList.add(new MucangNameValuePair("templateId", String.valueOf(j2)));
        arrayList.add(new MucangNameValuePair("newCarTypeName", str2));
        arrayList.add(new MucangNameValuePair("gearType", String.valueOf(i2)));
        arrayList.add(new MucangNameValuePair("version", "2"));
        return httpPost("/api/admin/owner/teach-programme/create.htm", arrayList).isSuccess();
    }

    public final boolean o(long j) throws ApiException, InternalException, HttpException {
        return httpGet(r.m("/api/admin/owner/teach-programme/delete.htm?id=", Long.valueOf(j))).isSuccess();
    }

    public final boolean p(TeachPlanItemModel newModel) throws ApiException, InternalException, HttpException {
        r.e(newModel, "newModel");
        return httpGet("/api/admin/owner/teach-programme/update.htm?id=" + newModel.id + "&programmeName=" + ((Object) newModel.programmeName) + "&newCarTypeId=" + newModel.universalModelNum + "&newCarTypeName=" + ((Object) newModel.universalModelName) + "&gearType=" + newModel.gearType).isSuccess();
    }
}
