package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam;

import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ExamStepListModel extends MessageModel {
    public List<ExamStepItemModel> itemList;

    public static class ExamStepItemModel extends MessageModel {
        public int id;
        public int state;
        public int stepId;
        public String stepName;
    }
}
