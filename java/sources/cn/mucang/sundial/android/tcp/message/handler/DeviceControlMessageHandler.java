package cn.mucang.sundial.android.tcp.message.handler;

import cn.mucang.android.core.utils.n0;
import cn.mucang.sundial.android.eventbus.LiveBus;
import cn.mucang.sundial.android.eventbus.event.PowerOffEvent;
import cn.mucang.sundial.android.eventbus.event.UpdateEvent;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import cn.mucang.sundial.android.tcp.message.receive.DeviceControlRequest;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceControlMessageHandler extends BaseMessageHandler<DeviceControlRequest> {
    @Override // cn.mucang.sundial.android.tcp.message.handler.MessageHandler
    public SendMessage handleMessage(DeviceControlRequest deviceControlRequest) {
        DeviceControlRequest.DeviceControl control = deviceControlRequest.getControl();
        if (control instanceof DeviceControlRequest.PowerOffControl) {
            LiveBus.post(new PowerOffEvent());
            return null;
        }
        if (!(control instanceof DeviceControlRequest.UpdateControl)) {
            return null;
        }
        DeviceControlRequest.UpdateControl updateControl = (DeviceControlRequest.UpdateControl) control;
        if (!n0.g(updateControl.getUrl())) {
            return null;
        }
        LiveBus.post(new UpdateEvent(updateControl.getUrl()));
        return null;
    }
}
