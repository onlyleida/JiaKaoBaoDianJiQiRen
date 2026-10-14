package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class UploadPhotoRequest extends BaseExtendReceiveMessage {
    private String photoId;

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33540;
    }

    public String getPhotoId() {
        return this.photoId;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        this.photoId = new BytesDecoder(bArr).readString(10);
    }
}
