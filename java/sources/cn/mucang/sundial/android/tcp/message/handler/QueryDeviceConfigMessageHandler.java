package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.sundial.android.tcp.data.DataManager;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.training.DeviceConfig;
import cn.mucang.sundial.android.tcp.message.training.receive.QueryDeviceConfigRequest;
import cn.mucang.sundial.android.tcp.message.training.send.QueryDeviceConfigResponse;

/* JADX INFO: loaded from: classes5.dex */
public class QueryDeviceConfigMessageHandler extends BaseMessageHandler<QueryDeviceConfigRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(QueryDeviceConfigRequest queryDeviceConfigRequest) {
        DeviceConfig deviceConfig = DataManager.getInstance().getDeviceConfig();
        QueryDeviceConfigResponse queryDeviceConfigResponse = new QueryDeviceConfigResponse();
        queryDeviceConfigResponse.setDeviceConfig(deviceConfig);
        queryDeviceConfigResponse.setResult(deviceConfig == null ? 1 : 0);
        return queryDeviceConfigResponse;
    }
}
