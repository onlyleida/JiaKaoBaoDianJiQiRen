package cn.mucang.sundial.android.tcp.message.send;

import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Parameter;
import cn.mucang.sundial.android.tcp.message.SendMessage;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ParameterQueryResponse implements SendMessage {
    private List<Parameter> parameterList;
    private int responseSerialNo;

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendWORD(this.responseSerialNo);
        bytesEncoder.appendBYTE(this.parameterList.size());
        bytesEncoder.appendBYTE(this.parameterList.size());
        for (Parameter parameter : this.parameterList) {
            byte[] value = parameter.getValue();
            bytesEncoder.appendDWORD(parameter.getParameterId());
            bytesEncoder.appendBYTE(value.length);
            bytesEncoder.appendBytes(value);
        }
        return bytesEncoder.toByteArray();
    }

    @Override // cn.mucang.sundial.android.tcp.message.Message
    public int getId() {
        return 260;
    }

    public List<Parameter> getParameterList() {
        return this.parameterList;
    }

    public int getResponseSerialNo() {
        return this.responseSerialNo;
    }

    public void setParameterList(List<Parameter> list) {
        this.parameterList = list;
    }

    public void setResponseSerialNo(int i) {
        this.responseSerialNo = i;
    }
}
