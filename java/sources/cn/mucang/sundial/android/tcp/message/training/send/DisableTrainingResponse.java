package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.android.core.utils.n0;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;
import cn.mucang.sundial.android.tcp.utils.DeviceUtils;

/* JADX INFO: loaded from: classes5.dex */
public class DisableTrainingResponse implements ExtendSendMessage {
    private String message;
    private int result;
    private int status;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendBYTE(this.result);
        bytesEncoder.appendBYTE(this.status);
        if (n0.e(this.message)) {
            bytesEncoder.appendBYTE(0);
        } else {
            byte[] bArrBytesFromString = DeviceUtils.bytesFromString(this.message);
            bytesEncoder.appendBYTE(bArrBytesFromString.length);
            bytesEncoder.appendBytes(bArrBytesFromString);
        }
        return bytesEncoder.toByteArray();
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 1282;
    }

    public String getMessage() {
        return this.message;
    }

    public int getResult() {
        return this.result;
    }

    public int getStatus() {
        return this.status;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isNeedReply() {
        return a.$default$isNeedReply(this);
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setResult(int i) {
        this.result = i;
    }

    public void setStatus(int i) {
        this.status = i;
    }
}
