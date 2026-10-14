package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.DeviceConfig;
import cn.mucang.sundial.android.tcp.message.training.receive.ConfigDeviceRequest;
import cn.mucang.sundial.android.tcp.message.training.send.ConfigDeviceResponse;
import cn.mucang.sundial.android.tcp.upload.TakePhotoManager;

/* JADX INFO: loaded from: classes5.dex */
public class ConfigDeviceMessageManager extends BaseMessageHandler<ConfigDeviceRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(ConfigDeviceRequest configDeviceRequest) {
        int configId = configDeviceRequest.getConfigId();
        DeviceConfig deviceConfig = configDeviceRequest.getDeviceConfig();
        DeviceConfig deviceConfig2 = DataManager.getInstance().getDeviceConfig();
        if (configId == 0 || deviceConfig2 == null) {
            DataManager.getInstance().saveDeviceConfig(deviceConfig);
            if (TakePhotoManager.getInstance().isStarted()) {
                TakePhotoManager.getInstance().start(true);
            }
        } else if (configId == 1) {
            deviceConfig2.setTakePhotoInterval(deviceConfig.getTakePhotoInterval());
            DataManager.getInstance().saveDeviceConfig(deviceConfig2);
            if (TakePhotoManager.getInstance().isStarted()) {
                TakePhotoManager.getInstance().start(true);
            }
        } else if (configId == 2) {
            deviceConfig2.setPhotoUploadMode(deviceConfig.getPhotoUploadMode());
            DataManager.getInstance().saveDeviceConfig(deviceConfig2);
        } else if (configId == 3) {
            deviceConfig2.setSpeakExtraInfo(deviceConfig.getSpeakExtraInfo());
            DataManager.getInstance().saveDeviceConfig(deviceConfig2);
        } else if (configId == 4) {
            deviceConfig.setAccOffStopDelay(deviceConfig.getAccOffStopDelay());
            DataManager.getInstance().saveDeviceConfig(deviceConfig2);
        } else if (configId == 5) {
            deviceConfig2.setAccOffGnssUploadInterval(deviceConfig.getAccOffGnssUploadInterval());
            DataManager.getInstance().saveDeviceConfig(deviceConfig2);
        } else if (configId == 6) {
            deviceConfig2.setAccOffCoachAutoLogoutDelay(deviceConfig.getAccOffCoachAutoLogoutDelay());
            DataManager.getInstance().saveDeviceConfig(deviceConfig2);
        } else if (configId == 7) {
            deviceConfig2.setAuthenticationInterval(deviceConfig.getAuthenticationInterval());
            DataManager.getInstance().saveDeviceConfig(deviceConfig2);
        }
        ConfigDeviceResponse configDeviceResponse = new ConfigDeviceResponse();
        configDeviceResponse.setResult(1);
        return configDeviceResponse;
    }
}
