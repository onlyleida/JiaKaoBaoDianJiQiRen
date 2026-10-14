package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.training.DeviceConfig;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;

/* JADX INFO: loaded from: classes5.dex */
public class QueryDeviceConfigResponse implements ExtendSendMessage {
    private DeviceConfig deviceConfig;
    private int result;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendBYTE(this.result);
        if (this.result == 0) {
            bytesEncoder.appendBytes(this.deviceConfig.encode());
        }
        return bytesEncoder.toByteArray();
    }

    public DeviceConfig getDeviceConfig() {
        return this.deviceConfig;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 1283;
    }

    public int getResult() {
        return this.result;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isNeedReply() {
        return a.$default$isNeedReply(this);
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
    }

    public void setDeviceConfig(DeviceConfig deviceConfig) {
        this.deviceConfig = deviceConfig;
    }

    public void setResult(int i) {
        this.result = i;
    }
}
