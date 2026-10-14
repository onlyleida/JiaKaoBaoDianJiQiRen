package cn.mucang.android.jiakaoyi.teachingk2.collect.render.api;

import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.teachingk2.collect.render.data.MaterialModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.h2.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/api/MaterialApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getMaterialList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/MaterialModel;", "materialType", "", "examSiteId", "", "stepId", "subStepId", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MaterialApi extends BaseDeviceManagerApi {
    public final List<MaterialModel> m(int i, String examSiteId, int i2, int i3) throws Exception {
        r.e(examSiteId, "examSiteId");
        List<MaterialModel> listHttpGetDataList = httpGetDataList("/api/open/owner/teach-material/list.htm?materialType=" + i + "&examSiteId=" + examSiteId + "&stepId=" + i2 + "&subStepId=" + i3, MaterialModel.class);
        r.d(listHttpGetDataList, "httpGetDataList(\n       …del::class.java\n        )");
        return listHttpGetDataList;
    }
}
