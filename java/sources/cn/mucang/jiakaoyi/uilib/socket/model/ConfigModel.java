package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import java.io.Serializable;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ConfigModel extends SocketModel {
    public Map<String, String> map;

    public static class SubConfigModel implements Serializable {
        public String k;
        public String v;
    }

    public ConfigModel(Map<String, String> map) {
        super(130);
        this.map = map;
    }
}
