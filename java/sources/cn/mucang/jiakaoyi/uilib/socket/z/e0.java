package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.jiakaoyi.uilib.socket.model.UdpResponse;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class e0 extends t<UdpResponse> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public UdpResponse a(int i, ByteBuffer byteBuffer) {
        byte[] bArrArray = byteBuffer.array();
        String str = new String(bArrArray);
        UdpResponse udpResponse = new UdpResponse(19);
        udpResponse.t = str;
        udpResponse.token = bArrArray;
        LiveBus.d(UdpResponse.class).l(udpResponse);
        return udpResponse;
    }
}
