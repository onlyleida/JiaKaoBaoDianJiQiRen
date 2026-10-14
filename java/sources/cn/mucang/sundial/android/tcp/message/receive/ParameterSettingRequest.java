package cn.mucang.sundial.android.tcp.message.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.message.Parameter;
import cn.mucang.sundial.android.tcp.message.ReceiveMessage;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ParameterSettingRequest extends BaseReceiveMessage implements ReceiveMessage {
    private List<Parameter> settingsList;

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33027;
    }

    public List<Parameter> getSettingsList() {
        return this.settingsList;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        bytesDecoder.readBYTE();
        int i = bytesDecoder.readBYTE();
        this.settingsList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            this.settingsList.add(Parameter.from(bytesDecoder.readDWORD(), bytesDecoder.readBytes(bytesDecoder.readBYTE())));
        }
    }
}
