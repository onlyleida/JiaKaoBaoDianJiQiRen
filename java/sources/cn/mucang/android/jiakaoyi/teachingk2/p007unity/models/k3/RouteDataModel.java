package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3;

import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RouteDataModel extends MessageModel {
    public List<RouteItemModel> itemList;

    public static class RouteItemModel extends MessageModel {
        public String desc;
        public String id;
        public boolean selected;
        public String title;
    }
}
