package cn.mucang.jiakaoyi.uilib.socket.z;

import cn.mucang.jiakaoyi.uilib.socket.model.ConfigModel;
import com.alibaba.fastjson.JSON;
import java.nio.ByteBuffer;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class e extends t<ConfigModel> {
    @Override // cn.mucang.jiakaoyi.uilib.socket.z.t
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public ConfigModel a(int i, ByteBuffer byteBuffer) {
        HashMap map = new HashMap();
        try {
            for (ConfigModel.SubConfigModel subConfigModel : JSON.parseArray(new String(byteBuffer.array()), ConfigModel.SubConfigModel.class)) {
                map.put(subConfigModel.k, subConfigModel.v);
            }
            return new ConfigModel(map);
        } catch (Exception e2) {
            e2.printStackTrace();
            return new ConfigModel(map);
        }
    }
}
