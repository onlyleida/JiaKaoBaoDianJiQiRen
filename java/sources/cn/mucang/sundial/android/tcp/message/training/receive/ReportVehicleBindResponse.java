package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class ReportVehicleBindResponse extends BaseExtendReceiveMessage {
    private String carNo;
    private int plateColor;
    private int result;
    private int sequence;

    public String getCarNo() {
        return this.carNo;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33795;
    }

    public int getPlateColor() {
        return this.plateColor;
    }

    public int getResult() {
        return this.result;
    }

    public int getSequence() {
        return this.sequence;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.sequence = bytesDecoder.readWORD();
        int i = bytesDecoder.readBYTE();
        this.result = i;
        if (i == 0) {
            this.plateColor = bytesDecoder.readBYTE();
            this.carNo = bytesDecoder.readString();
        }
    }
}
