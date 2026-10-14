package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models;

import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;

/* JADX INFO: loaded from: classes4.dex */
public class UnityRecordModel extends MessageModel {
    public int c;
    public String id;
    public int n;
    public byte pass;
    public int pn;

    public String toString() {
        return "BaseOperate{event=" + this.c + ", id='" + this.id + "', num=" + this.n + ", passNum=" + this.pn + ", pass=" + ((int) this.pass) + '}';
    }
}
