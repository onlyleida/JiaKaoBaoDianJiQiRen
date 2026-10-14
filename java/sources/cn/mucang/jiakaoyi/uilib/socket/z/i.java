package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.CallModel;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public class i extends t<CallModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public CallModel a(int i, ByteBuffer byteBuffer) {
        JSONObject object = JSON.parseObject(new String(byteBuffer.array(), Charset.defaultCharset()));
        return new CallModel(object.getString("accessToken"), object.getString("channelName"), object.getIntValue("type"));
    }
}
