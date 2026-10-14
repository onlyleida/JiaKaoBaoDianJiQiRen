package cn.mucang.sundial.library.util;

import cn.mucang.android.core.api.ApiResponse;
import cn.mucang.android.core.api.a;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.library.viewmodel.StudentInfoViewModel;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\rB\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\n\u0010\u0004¨\u0006\u000e"}, d2 = {"Lcn/mucang/sundial/library/util/ServerTimeHelper;", "", "", "getServerTime", "()J", "Lcn/mucang/sundial/android/db/entity/StudentInfo;", "student", "Lkotlin/v;", "getRelativeTime", "(Lcn/mucang/sundial/android/db/entity/StudentInfo;)V", "getCurrentTime", "<init>", "()V", "TimeApi", "library_release"}, k = 1, mv = {1, 1, 15})
public final class ServerTimeHelper {
    public static final ServerTimeHelper INSTANCE = new ServerTimeHelper();

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0004J\u0017\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcn/mucang/sundial/library/util/ServerTimeHelper$TimeApi;", "Lcn/mucang/android/core/api/a;", "", "getApiHost", "()Ljava/lang/String;", "getSignKey", "imei", "", "getTime", "(Ljava/lang/String;)Ljava/lang/Long;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
    public static final class TimeApi extends a {
        @Override // cn.mucang.android.core.api.a
        protected String getApiHost() {
            return MucangConfig.v() ? "https://sundial-test.jiakaobaodian.com" : "https://sundial-app.jiakaobaodian.com";
        }

        @Override // cn.mucang.android.core.api.a
        protected String getSignKey() {
            return "*#06#PXJCg3xJmYiPpoOPhnKYmW5u";
        }

        public final Long getTime(String imei) {
            Object objM139constructorimpl;
            r.e(imei, "imei");
            try {
                Result.Companion companion = Result.INSTANCE;
                ApiResponse apiResponseHttpGet = httpGet("/api/open/time/get.htm?type=VehicleMounted&imei=" + imei);
                r.d(apiResponseHttpGet, "httpGet(\"/api/open/time/…hicleMounted&imei=$imei\")");
                objM139constructorimpl = Result.m139constructorimpl(apiResponseHttpGet.getData().getLong("value"));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(k.a(th));
            }
            Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
            if (thM142exceptionOrNullimpl != null) {
                thM142exceptionOrNullimpl.printStackTrace();
            }
            if (Result.m145isFailureimpl(objM139constructorimpl)) {
                objM139constructorimpl = null;
            }
            return (Long) objM139constructorimpl;
        }
    }

    private ServerTimeHelper() {
    }

    public static final long getServerTime() {
        String imei = DeviceUtils.getImei();
        TimeApi timeApi = new TimeApi();
        r.d(imei, "imei");
        Long time = timeApi.getTime(imei);
        long jLongValue = time != null ? time.longValue() : 0L;
        SundialLog.normal("获取服务器时间:" + jLongValue);
        return jLongValue;
    }

    public final long getCurrentTime() {
        long serverTime = getServerTime();
        if (System.currentTimeMillis() < serverTime) {
            SundialLog.normal("getCurrentTime：使用服务端时间 " + serverTime);
            return serverTime;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        SundialLog.normal("getCurrentTime：使用系统时间 " + jCurrentTimeMillis);
        return jCurrentTimeMillis;
    }

    public final void getRelativeTime(StudentInfo student) {
        r.e(student, "student");
        long lastCourseTime = StudentInfoViewModel.INSTANCE.getLastCourseTime();
        long updateTime = student.getUpdateTime() + lastCourseTime;
        if (lastCourseTime != 0 && System.currentTimeMillis() < updateTime) {
            SundialLog.normal("getRelativeTime：使用计算时间 " + updateTime);
            return;
        }
        SundialLog.normal("getRelativeTime：使用系统时间 " + System.currentTimeMillis());
    }
}
