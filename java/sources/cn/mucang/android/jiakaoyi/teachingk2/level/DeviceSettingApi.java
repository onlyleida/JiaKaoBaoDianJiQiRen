package cn.mucang.android.jiakaoyi.teachingk2.level;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.p002e.BaseDeviceManagerApi;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConfigLevelModel;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.model.NavImageTipModel;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/DeviceSettingApi;", "Lcn/mucang/android/jiakaoyi/framework/api/BaseDeviceManagerApi;", "()V", "getConfigLevelData", "", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;", "getGuideList", "Lcn/mucang/android/jiakaoyi/teachingk2/model/NavImageTipModel;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DeviceSettingApi extends BaseDeviceManagerApi {
    public final List<ConfigLevelModel> m() throws ApiException, IOException, InternalException, HttpException {
        StringBuilder sb = new StringBuilder();
        sb.append("/api/open/owner/customs-pass/get-config-v2.htm?courseId=");
        sb.append(RobotAccount.f7298a.e());
        sb.append("&examSiteId=");
        sb.append(ExamSiteUtil.e(0L));
        sb.append("&xyLoginMode=");
        XyUserModel xyUserModelE = RobotAccount.i().e();
        sb.append((Object) (xyUserModelE == null ? null : xyUserModelE.getLoginMode()));
        List<ConfigLevelModel> dataArray = httpGet(sb.toString()).getDataArray("data", ConfigLevelModel.class);
        kotlin.jvm.internal.r.d(dataArray, "httpGet(\n            \"/a…del::class.java\n        )");
        return dataArray;
    }

    public final List<NavImageTipModel> n() throws ApiException, IOException, InternalException, HttpException {
        CarItemModel config;
        LocalCarModel localCarModelB = RealCarSelectManager.b();
        Integer numValueOf = null;
        if (localCarModelB != null && (config = localCarModelB.getConfig()) != null) {
            numValueOf = Integer.valueOf(config.getCode());
        }
        return httpGetDataList(kotlin.jvm.internal.r.m("/api/open/car-resource-mapping/find-ready-in-car.htm?modelNum=", numValueOf), NavImageTipModel.class);
    }
}
