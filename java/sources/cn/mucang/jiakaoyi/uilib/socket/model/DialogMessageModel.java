package cn.mucang.jiakaoyi.uilib.socket.model;

import cn.mucang.jiakaoyi.uilib.message.DialogMessageDetail;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;

/* JADX INFO: loaded from: classes5.dex */
public class DialogMessageModel extends SocketModel {
    private DialogMessageDetail entity;

    public DialogMessageModel(DialogMessageDetail dialogMessageDetail) {
        super(112);
        this.entity = dialogMessageDetail;
    }

    public DialogMessageDetail getEntity() {
        return this.entity;
    }
}
