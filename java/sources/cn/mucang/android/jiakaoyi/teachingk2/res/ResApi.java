package cn.mucang.android.jiakaoyi.teachingk2.res;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.teachingk2.model.ResModel;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.res.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bJ\u0018\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/res/ResApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getRes", "Lcn/mucang/android/jiakaoyi/teachingk2/model/ResModel;", "examSiteId", "", "type", "", "version", "getTileRes", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "mapMd5", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ResApi extends BaseDeviceManagerApi {
    public final ResModel m(long j, int i, int i2) throws ApiException, InternalException, HttpException {
        String str = "/api/open/owner/resource-manager/query-new.htm?examSiteId=" + j + "&type=" + i + "&version=" + i2;
        if (i == ResourceManager.Resource.Teaching.type) {
            long jA = cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(ExamSiteUtil.e(0L));
            if (jA > 0) {
                str = str + "&programmeId=" + jA;
            }
        }
        return (ResModel) httpGet(str).getData(ResModel.class);
    }

    public final ExamSiteModel n(long j, String mapMd5) throws ApiException, InternalException, HttpException {
        r.e(mapMd5, "mapMd5");
        return (ExamSiteModel) httpGet("/api/open/owner/map-tile/get-by-map.htm?examSiteId=" + j + "&mapMd5=" + mapMd5).getData(ExamSiteModel.class);
    }
}
