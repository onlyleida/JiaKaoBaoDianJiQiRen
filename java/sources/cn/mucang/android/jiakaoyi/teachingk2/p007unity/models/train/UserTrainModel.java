package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train;

import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class UserTrainModel extends MessageModel {
    public List<UserTrainItemModel> itemList;
    public String kemu;

    public static class UserTrainItemModel implements Serializable, Cloneable {
        public int count;
        public int step;
        public String stepName;
        public int subStep;
        public int passCount = 10;
        public int examCount = 30;
        public int examPassCount = 10;
        public int costTime = 7086;
        public int examCostTime = 3033;
        public int proficiency = 30;

        public Object clone() throws CloneNotSupportedException {
            return super.clone();
        }
    }
}
