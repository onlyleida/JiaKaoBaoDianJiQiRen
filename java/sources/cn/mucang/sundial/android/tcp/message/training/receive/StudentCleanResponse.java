package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class StudentCleanResponse extends BaseExtendReceiveMessage {
    private String studentNo;

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 28675;
    }

    public String getStudentNo() {
        return this.studentNo;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        this.studentNo = new BytesDecoder(bArr).readString(16);
    }
}
