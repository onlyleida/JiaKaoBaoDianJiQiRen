package cn.mucang.sundial.android.tcp.message.training.receive;

import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;

/* JADX INFO: loaded from: classes5.dex */
public class TakePhotoRequest extends BaseExtendReceiveMessage {
    private int cameraChannel;
    private int imageSize;
    private int uploadMode;

    public int getCameraChannel() {
        return this.cameraChannel;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 33537;
    }

    public int getImageSize() {
        return this.imageSize;
    }

    public int getUploadMode() {
        return this.uploadMode;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Receive
    public void init(byte[] bArr) {
        BytesDecoder bytesDecoder = new BytesDecoder(bArr);
        this.uploadMode = bytesDecoder.readBYTE();
        this.cameraChannel = bytesDecoder.readBYTE();
        this.imageSize = bytesDecoder.readBYTE();
    }
}
