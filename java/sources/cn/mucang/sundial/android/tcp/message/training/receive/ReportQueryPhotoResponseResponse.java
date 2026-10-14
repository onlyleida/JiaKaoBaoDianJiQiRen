package cn.mucang.sundial.android.tcp.message.training.receive;

/* JADX INFO: loaded from: classes5.dex */
public class ReportQueryPhotoResponseResponse extends BaseExtendReceiveMessage {
    private int responseCode;

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33539;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        this.responseCode = bArr[0];
    }
}
