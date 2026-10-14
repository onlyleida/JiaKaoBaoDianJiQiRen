package cn.mucang.sundial.android.tcp.message.send;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.CommonResponse;
import cn.mucang.sundial.android.tcp.message.RawMessage;
import cn.mucang.sundial.android.tcp.message.SendMessage;

/* JADX INFO: loaded from: classes5.dex */
public class ClientCommonResponse extends CommonResponse implements SendMessage {
    public static ClientCommonResponse create(CommonResponse.Result result, RawMessage.Header header) {
        ClientCommonResponse clientCommonResponse = new ClientCommonResponse();
        clientCommonResponse.result = result.value;
        clientCommonResponse.responseMessageId = header.getMessageId();
        clientCommonResponse.responseSerialNo = header.getMessageSequence();
        return clientCommonResponse;
    }

    public static ClientCommonResponse createSuccess(RawMessage rawMessage) {
        return create(CommonResponse.Result.SUCCESS, rawMessage.getHeader());
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendWORD(this.responseSerialNo);
        bytesEncoder.appendWORD(this.responseMessageId);
        bytesEncoder.appendBYTE(this.result);
        return bytesEncoder.toByteArray();
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 1;
    }
}
