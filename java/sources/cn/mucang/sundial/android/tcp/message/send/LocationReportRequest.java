package cn.mucang.sundial.android.tcp.message.send;

import cn.mucang.sundial.android.tcp.PacketResultConcern;
import cn.mucang.sundial.android.tcp.data.gnss.GNSSData;
import cn.mucang.sundial.android.tcp.message.SendMessage;

/* JADX INFO: loaded from: classes5.dex */
public class LocationReportRequest implements SendMessage, PacketResultConcern {
    private byte[] gnssByteData;
    private GNSSData gnssData;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        byte[] bArr = this.gnssByteData;
        return bArr != null ? bArr : this.gnssData.encode();
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 512;
    }

    public void setGnssData(GNSSData gNSSData) {
        this.gnssData = gNSSData;
    }

    public void setGnssData(byte[] bArr) {
        this.gnssByteData = bArr;
    }
}
