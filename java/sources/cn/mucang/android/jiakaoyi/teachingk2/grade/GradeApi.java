package cn.mucang.android.jiakaoyi.teachingk2.grade;

import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.grade.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¨\u0006\u0006"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getGrade", "", "Lcn/mucang/android/jiakaoyi/teachingk2/grade/GradeModel;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GradeApi extends BaseDeviceManagerApi {
    public final List<GradeModel> m() throws Exception {
        List<GradeModel> listHttpGetDataList = httpGetDataList(r.m("/api/open/owner/teach-level-config/list.htm?examSiteId=", Long.valueOf(ExamSiteUtil.e(0L))), GradeModel.class);
        r.d(listHttpGetDataList, "httpGetDataList(\"/api/op…, GradeModel::class.java)");
        return listHttpGetDataList;
    }
}
