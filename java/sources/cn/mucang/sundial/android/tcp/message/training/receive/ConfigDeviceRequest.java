package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.message.training.DeviceConfig;

/* JADX INFO: loaded from: classes5.dex */
public class ConfigDeviceRequest extends BaseExtendReceiveMessage {
    private int configId;
    private DeviceConfig deviceConfig;

    public int getConfigId() {
        return this.configId;
    }

    public DeviceConfig getDeviceConfig() {
        return this.deviceConfig;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 34049;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        int i = bytesDecoder.readBYTE();
        this.configId = i;
        this.deviceConfig = DeviceConfig.from(bytesDecoder, i);
    }
}
