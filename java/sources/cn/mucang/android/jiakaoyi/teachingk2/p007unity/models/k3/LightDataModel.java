package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3;

import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class LightDataModel extends MessageModel {
    public List<LightDataItemModel> itemList;

    public static class LightDataItemModel extends MessageModel {
        public String desc;
        public String icon;
        public int id;
        public String name;
        public int state;
    }
}
