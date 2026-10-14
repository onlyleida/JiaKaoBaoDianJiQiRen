package cn.mucang.android.jiakaoyi.teachingk2.login.api;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.SsoBaseApi;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.login.q.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\bJ\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n2\b\u0010\f\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\bJ\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/login/api/RobotAdminApi;", "Lcn/mucang/android/jiakaoyi/framework/api/SsoBaseApi;", "()V", "addToMyCar", "", TtmlNode.ATTR_ID, "", "deleteCarBody", "", "getCarList", "", "Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;", "modelCode", "driveSchoolId", "getMyCarData", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RobotAdminApi extends SsoBaseApi {
    public final boolean o(int i) throws ApiException, InternalException, HttpException {
        return httpGet(r.m("/api/admin/car-body/add-to-my-car.htm?id=", Integer.valueOf(i))).isSuccess();
    }

    public final List<HpCarMapModel> p(String str, String str2) throws ApiException, InternalException, HttpException {
        return httpGetDataList("/api/admin/car-body/list-car-body.htm?modelCode=" + ((Object) str) + "&driveSchoolId=" + ((Object) str2), HpCarMapModel.class);
    }
}
