package cn.mucang.jiakaoyi.uilib.socket;

import android.location.Location;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.api.citycode.CityCodeManager;
import cn.mucang.android.jiakaoyi.framework.dataprovider.AppDataProvider;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.handle.gps.JLocationManager;
import cn.mucang.jiakaoyi.uilib.socket.model.SocketInfo;
import cn.mucang.jiakaoyi.uilib.socket.model.SocketLoginRequestModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;

/* JADX INFO: loaded from: classes5.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f9684a;

    public static SocketInfo a(boolean z) throws ApiException, InternalException, HttpException {
        AppDataProvider appDataProvider;
        SocketLoginRequestModel socketLoginRequestModel = new SocketLoginRequestModel();
        String strC = DeviceUtils.c();
        if (n0.e(strC) && !AppUtils.j() && !AppUtils.e()) {
            cn.mucang.android.core.utils.u.h("未取到设备编号");
            return null;
        }
        if ((AppUtils.j() || AppUtils.e()) && (appDataProvider = (AppDataProvider) DataProviderRegister.f3433a.a(AppDataProvider.class, null)) != null) {
            strC = appDataProvider.getLogDeviceNum();
        }
        socketLoginRequestModel.deviceNo = strC;
        if (f9684a <= 0) {
            f9684a = ExamSiteUtil.e(0L);
        }
        socketLoginRequestModel.sid = f9684a;
        Location locationE = JLocationManager.f5733a.e();
        socketLoginRequestModel.latitude = locationE.getLatitude();
        socketLoginRequestModel.longitude = locationE.getLongitude();
        socketLoginRequestModel.isForGps = z;
        String strD = CityCodeManager.d();
        if (n0.g(strD)) {
            socketLoginRequestModel.areaCode = strD;
        }
        return new cn.mucang.jiakaoyi.uilib.socket.v.a().m(socketLoginRequestModel);
    }
}
