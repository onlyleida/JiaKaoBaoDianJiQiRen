package cn.mucang.sundial.library.util;

import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.log.SundialLog;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.training.DeviceConfig;
import cn.mucang.sundial.android.tcp.utils.PreferenceUtils;
import cn.mucang.sundial.library.entity.DefaultConfig;
import cn.mucang.sundial.library.entity.Platform;
import cn.mucang.sundial.library.http.ConfigApi;
import cn.mucang.sundial.library.http.ParamsApi;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0004¨\u0006\t"}, d2 = {"Lcn/mucang/sundial/library/util/Utils;", "", "", "initConnection", "()Z", "initHost", "initDefaultParams", "<init>", "()V", "library_release"}, k = 1, mv = {1, 1, 15})
public final class Utils {
    public static final Utils INSTANCE = new Utils();

    private Utils() {
    }

    public static final boolean initConnection() {
        if (SundialManager.getInstance().hasConnection()) {
            return true;
        }
        SundialLog.normal("初始化参数");
        Utils utils = INSTANCE;
        if (!(utils.initHost() && utils.initDefaultParams())) {
            return false;
        }
        SundialLog.normal("socket服务连接初始化");
        SundialManager.getInstance().init();
        return true;
    }

    public final boolean initDefaultParams() {
        Map<String, String> appParam;
        DeviceConfig deviceConfig;
        if (PreferenceUtils.getBoolean(PreferenceUtils.KEY_INIT_DEFAULT_PARAM, false)) {
            SundialLog.normal("已经初始化默认参数");
            return true;
        }
        DefaultConfig defaultConfig = new ParamsApi().getDefaultConfig();
        if (defaultConfig == null || (appParam = defaultConfig.getAppParam()) == null || (deviceConfig = defaultConfig.getDeviceConfig()) == null) {
            return false;
        }
        DefaultConfig.Info info = defaultConfig.getInfo();
        SundialLog.normal("获取到的默认参数：" + defaultConfig);
        DataManager.getInstance().saveDeviceParameter(appParam);
        DataManager.getInstance().saveDeviceConfig(deviceConfig);
        if (info != null) {
            DataManager dataManager = DataManager.getInstance();
            r.d(dataManager, "DataManager.getInstance()");
            DeviceInfo deviceInfo = dataManager.getDeviceInfo();
            if (deviceInfo == null) {
                deviceInfo = new DeviceInfo();
            }
            String devicePhone = deviceInfo.getDevicePhone();
            if (devicePhone == null || t.r(devicePhone)) {
                deviceInfo.setDevicePhone(info.getPhone());
            }
            String carNo = deviceInfo.getCarNo();
            if (carNo == null || t.r(carNo)) {
                deviceInfo.setCarNo(info.getCarNo());
            }
            String serialNo = deviceInfo.getSerialNo();
            if ((serialNo == null || t.r(serialNo)) || r.a(deviceInfo.getSerialNo(), "P777")) {
                String serialNo2 = info.getSerialNo();
                if (!(serialNo2 == null || t.r(serialNo2))) {
                    deviceInfo.setSerialNo(info.getSerialNo());
                }
            }
            DataManager.getInstance().updateDeviceInfo(deviceInfo);
        }
        if (DataManager.getInstance().deviceParameterCount() > appParam.size() - 5) {
            PreferenceUtils.putBoolean(PreferenceUtils.KEY_INIT_DEFAULT_PARAM, true);
            SundialLog.normal("设置默认参数开关：TURE");
        }
        return true;
    }

    public final boolean initHost() {
        Platform platform = new ConfigApi().getPlatform();
        SundialManager sundialManager = SundialManager.getInstance();
        r.d(sundialManager, "SundialManager.getInstance()");
        DeviceInfo deviceInfo = sundialManager.getDeviceInfo();
        if (platform == null || !platform.isValid()) {
            SundialLog.normal("获取不到平台参数或无效平台");
            Platform platform2 = new Platform();
            r.d(deviceInfo, "deviceInfo");
            platform2.setIp(deviceInfo.getPlatformIp());
            platform2.setPort(deviceInfo.getPlatformPort());
            platform2.setHostUrl(deviceInfo.getPlatformHost());
            if (!platform2.isValid()) {
                return false;
            }
        } else {
            SundialLog.normal("获取的平台参数：" + platform);
            SundialManager sundialManager2 = SundialManager.getInstance();
            r.d(sundialManager2, "SundialManager.getInstance()");
            sundialManager2.setLastTimeStamps(System.currentTimeMillis());
            String ip = platform.getIp();
            r.d(deviceInfo, "deviceInfo");
            if ((!r.a(ip, deviceInfo.getPlatformIp())) || platform.getPort() != deviceInfo.getPlatformPort() || (!r.a(platform.getHostUrl(), deviceInfo.getPlatformHost()))) {
                deviceInfo.setPlatformPort(platform.getPort());
                deviceInfo.setPlatformIp(platform.getIp());
                deviceInfo.setPlatformHost(platform.getHostUrl());
                DataManager.getInstance().updateDeviceInfo(deviceInfo);
            }
            if (platform.getMileageAccuracy() > 0) {
                SundialManager sundialManager3 = SundialManager.getInstance();
                r.d(sundialManager3, "SundialManager.getInstance()");
                sundialManager3.setMileageAccuracy(platform.getMileageAccuracy());
            }
            SundialManager.getInstance().setLoginMode(platform.getLoginMode());
            SundialManager.getInstance().setTakePhotoVoice(platform.getTakePhotoVoice());
            SundialManager sundialManager4 = SundialManager.getInstance();
            r.d(sundialManager4, "SundialManager.getInstance()");
            sundialManager4.setTakePhotoDelay(platform.getWaitTakePhoto());
            SundialManager sundialManager5 = SundialManager.getInstance();
            r.d(sundialManager5, "SundialManager.getInstance()");
            sundialManager5.setLearnDataFactor(platform.getLearnDataFactor());
            SundialManager sundialManager6 = SundialManager.getInstance();
            r.d(sundialManager6, "SundialManager.getInstance()");
            sundialManager6.setK2LearnDataFactor(platform.getSubject2LearnDataFactor());
            SundialManager sundialManager7 = SundialManager.getInstance();
            r.d(sundialManager7, "SundialManager.getInstance()");
            sundialManager7.setK3LearnDataFactor(platform.getSubject3LearnDataFactor());
            SundialManager sundialManager8 = SundialManager.getInstance();
            r.d(sundialManager8, "SundialManager.getInstance()");
            sundialManager8.setMaxSpeedLimit(platform.getMaxSpeed());
            SundialManager sundialManager9 = SundialManager.getInstance();
            r.d(sundialManager9, "SundialManager.getInstance()");
            sundialManager9.setLogInOutSecond(platform.getLogInOutSecond());
            SundialManager sundialManager10 = SundialManager.getInstance();
            r.d(sundialManager10, "SundialManager.getInstance()");
            sundialManager10.setLiveImageSecond(platform.getLiveImageSecond());
        }
        return true;
    }
}
