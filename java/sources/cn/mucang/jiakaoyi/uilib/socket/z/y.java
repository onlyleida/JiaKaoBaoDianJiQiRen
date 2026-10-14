package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.jiakaoyi.uilib.socket.model.OtherCarPosListSocketModel;
import com.alibaba.fastjson.JSON;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class y extends t<OtherCarPosListSocketModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public OtherCarPosListSocketModel a(int i, ByteBuffer byteBuffer) {
        try {
            return new OtherCarPosListSocketModel(JSON.parseArray(new String(byteBuffer.array()), OtherCarPosListSocketModel.CarPosModel.class));
        } catch (Exception e2) {
            e2.printStackTrace();
            cn.mucang.android.jiakaoyi.framework.log.f.o("其他车辆位置数据解析失败, \n" + q0.d(e2));
            return new OtherCarPosListSocketModel(null);
        }
    }
}
