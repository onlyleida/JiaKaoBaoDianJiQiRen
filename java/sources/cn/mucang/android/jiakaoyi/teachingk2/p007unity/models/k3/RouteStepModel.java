package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RouteStepModel extends MessageModel {
    public List<RouteStepItemModel> itemList;

    public static class RouteStepItemModel extends MessageModel {
        public float angle;
        public String name;
        public Pos point;
    }
}
