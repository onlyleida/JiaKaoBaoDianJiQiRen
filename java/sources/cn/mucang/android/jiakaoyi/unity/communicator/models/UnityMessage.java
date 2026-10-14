package cn.mucang.android.jiakaoyi.unity.communicator.models;

import cn.mucang.android.jiakaoyi.unity.c.d;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class UnityMessage<T extends MessageModel> implements Serializable {
    public static final int CODE_SUCCESS = 0;
    public String args;
    public int code;
    public T data;
    public int id;
    public String msg;

    public UnityMessage() {
        this.msg = "";
        this.args = "";
    }

    public UnityMessage(T t) {
        this.msg = "";
        this.args = "";
        this.code = 0;
        this.data = t;
        this.id = d.h(t.getClass());
    }

    public UnityMessage(int i) {
        this.msg = "";
        this.args = "";
        this.code = 0;
        this.id = i;
    }

    public UnityMessage(int i, T t) {
        this.msg = "";
        this.args = "";
        this.code = 0;
        this.id = i;
        this.data = t;
    }
}
