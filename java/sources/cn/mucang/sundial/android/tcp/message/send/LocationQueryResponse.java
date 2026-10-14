package cn.mucang.sundial.android.tcp.message.send;

import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.message.SendMessage;

/* JADX INFO: loaded from: classes5.dex */
public class LocationQueryResponse implements SendMessage {
    private GNSSData gnssData;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        return this.gnssData.encode();
    }

    public GNSSData getGnssData() {
        return this.gnssData;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 513;
    }

    public void setGnssData(GNSSData gNSSData) {
        this.gnssData = gNSSData;
    }
}
