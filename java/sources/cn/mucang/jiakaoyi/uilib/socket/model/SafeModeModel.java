package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import com.alibaba.fastjson.asm.Opcodes;

/* JADX INFO: loaded from: classes5.dex */
public class SafeModeModel extends SocketModel {
    public final byte mode;

    public SafeModeModel(byte b) {
        super(Opcodes.INVOKESPECIAL);
        this.mode = b;
    }
}
