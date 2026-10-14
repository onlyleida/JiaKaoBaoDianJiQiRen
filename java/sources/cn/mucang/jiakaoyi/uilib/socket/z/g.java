package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.GpsStationModel;
import com.alibaba.fastjson.JSON;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes5.dex */
public class g extends t<GpsStationModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public GpsStationModel a(int i, ByteBuffer byteBuffer) {
        try {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return (GpsStationModel) JSON.parseObject(new String(bArr, StandardCharsets.UTF_8), GpsStationModel.class);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
