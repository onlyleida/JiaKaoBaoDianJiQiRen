package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models;

import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class UserAIModel extends MessageModel {
    public List<UserAIItemModel> itemList;
    public String kemu;

    public static class UserAIItemModel implements Serializable {
        public int behaviorCode;
        public String behaviorDesc;
        public int count = 8;
        public String tips;
    }
}
