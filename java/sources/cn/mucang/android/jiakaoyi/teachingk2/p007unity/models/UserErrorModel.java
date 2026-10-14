package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models;

import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class UserErrorModel extends MessageModel {
    public List<UserErrorItemModel> itemList;
    public String kemu;

    public static class UserErrorItemModel implements Serializable {
        public int count = 8;
        public int deductCode;
        public String deductDesc;
        public int step;
        public String stepName;
    }
}
