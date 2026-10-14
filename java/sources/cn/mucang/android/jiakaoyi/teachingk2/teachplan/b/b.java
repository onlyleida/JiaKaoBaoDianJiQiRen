package cn.mucang.android.jiakaoyi.teachingk2.teachplan.b;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.teachingk2.model.TeachPlanItemModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b extends BaseDeviceManagerApi {
    public List<TeachPlanItemModel> m(long j) throws ApiException, InternalException, HttpException {
        return httpGetDataList("/api/open/owner/teach-programme/list.htm?examSiteId=" + j, TeachPlanItemModel.class);
    }

    public List<TeachPlanItemModel> n() throws ApiException, InternalException, HttpException {
        return httpGetDataList("/api/open/owner/teach-programme/get-template-programmes.htm?version=2", TeachPlanItemModel.class);
    }
}
