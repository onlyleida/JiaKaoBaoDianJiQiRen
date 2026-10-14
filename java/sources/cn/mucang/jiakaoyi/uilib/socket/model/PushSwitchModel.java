package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import com.alibaba.fastjson.asm.Opcodes;

/* JADX INFO: loaded from: classes5.dex */
public class PushSwitchModel extends SocketModel {
    public boolean isEnable;

    public PushSwitchModel(boolean z) {
        super(Opcodes.INVOKESTATIC);
        this.isEnable = false;
        this.isEnable = z;
    }
}
