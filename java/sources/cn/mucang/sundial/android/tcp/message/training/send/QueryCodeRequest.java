package cn.mucang.sundial.android.tcp.message.training.send;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Request;
import cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage;
import cn.mucang.sundial.android.tcp.message.training.a;

/* JADX INFO: loaded from: classes5.dex */
public class QueryCodeRequest implements ExtendSendMessage, Request {
    private int codeType;
    private String queryField;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendBYTE(this.codeType);
        int i = this.codeType;
        if (i == 2 || i == 3 || i == 4 || i == 6) {
            bytesEncoder.appendString(this.queryField, 18);
        }
        return bytesEncoder.toByteArray();
    }

    public int getCodeType() {
        return this.codeType;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 1026;
    }

    public String getQueryField() {
        return this.queryField;
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isNeedReply() {
        return a.$default$isNeedReply(this);
    }

    @Override // cn.mucang.sundial.android.tcp.message.training.ExtendSendMessage
    public /* synthetic */ boolean isRealtimeMessage() {
        return a.$default$isRealtimeMessage(this);
    }

    public void setCodeType(int i) {
        this.codeType = i;
    }

    public void setQueryField(String str) {
        this.queryField = str;
    }

    public String toString() {
        return "QueryCodeRequest{codeType=" + this.codeType + ", queryField='" + this.queryField + "'}";
    }
}
