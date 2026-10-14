package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class UnityTeachPointModel extends MessageModel {
    public List<TeachItem> itemList;

    public static class TeachItem implements Serializable {
        public String color;
        public List<Pos> points;
    }
}
