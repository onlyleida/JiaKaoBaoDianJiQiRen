package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.sundial.android.tcp.TimeoutManager;
import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.data.gnss.OBDManager;
import cn.mucang.sundial.android.tcp.message.Parameter;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.receive.ParameterSettingRequest;
import cn.mucang.sundial.android.tcp.message.send.ClientCommonResponse;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;
import cn.mucang.sundial.android.timer.alive.HeartBeatManager;
import cn.mucang.sundial.android.timer.location.LocationReportManager;

/* JADX INFO: loaded from: classes5.dex */
public class ParameterSettingMessageHandler extends BaseMessageHandler<ParameterSettingRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(ParameterSettingRequest parameterSettingRequest) {
        for (Parameter parameter : parameterSettingRequest.getSettingsList()) {
            DataManager.getInstance().saveDeviceParameter(parameter);
            long parameterId = parameter.getParameterId();
            if (parameterId == 1) {
                try {
                    HeartBeatManager.getInstance().setHeartBeatPeriod(((Long) parameter.getObjectValue()).longValue());
                    HeartBeatManager.getInstance().stop();
                    HeartBeatManager.getInstance().start();
                } catch (Exception unused) {
                }
            } else if (parameterId == 2 || parameterId == 3) {
                TimeoutManager.getInstance().updateByDeviceParameter();
            } else if (parameterId == 32 || parameterId == 41 || parameterId == 44 || parameterId == 34 || parameterId == 45) {
                LocationReportManager.getInstance().restartIfNotInTempTrack();
            } else if (parameterId == 85 || parameterId == 86) {
                OBDManager.updateOverSpeedParam();
            } else if (parameterId == 113) {
                DeviceUtils.setBrightness(MucangConfig.getContext(), parameter.getIntValue(120));
            }
        }
        return ClientCommonResponse.createSuccess(parameterSettingRequest.getRawMessage());
    }
}
