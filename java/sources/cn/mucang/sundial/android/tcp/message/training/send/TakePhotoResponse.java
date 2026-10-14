package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;

/* JADX INFO: loaded from: classes5.dex */
public class TakePhotoResponse implements ExtendSendMessage {
    private int cameraChannel;
    private int imageSize;
    private int result;
    private int uploadMode;

    public enum Result {
        TAKE(1),
        FAIL(2),
        SD_ERROR(3),
        TAKING(4),
        RE_CONNECT(5),
        QUERYING(6),
        OTHER_ERROR(9);

        int value;

        Result(int i) {
            this.value = i;
        }

        public int valueOf() {
            return this.value;
        }
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendBYTE(this.result);
        bytesEncoder.appendBYTE(this.uploadMode);
        bytesEncoder.appendBYTE(this.cameraChannel);
        bytesEncoder.appendBYTE(this.imageSize);
        return bytesEncoder.toByteArray();
    }

    public int getCameraChannel() {
        return this.cameraChannel;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 769;
    }

    public int getImageSize() {
        return this.imageSize;
    }

    public int getResult() {
        return this.result;
    }

    public int getUploadMode() {
        return this.uploadMode;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isNeedReply() {
        return a.$default$isNeedReply(this);
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
    }

    public void setCameraChannel(int i) {
        this.cameraChannel = i;
    }

    public void setImageSize(int i) {
        this.imageSize = i;
    }

    public void setResult(int i) {
        this.result = i;
    }

    public void setUploadMode(int i) {
        this.uploadMode = i;
    }
}
