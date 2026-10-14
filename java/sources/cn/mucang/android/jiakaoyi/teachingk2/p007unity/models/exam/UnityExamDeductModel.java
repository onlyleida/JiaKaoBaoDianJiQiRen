package cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam;

import cn.mucang.android.jiakaoyi.unity.communicator.models.MessageModel;

/* JADX INFO: loaded from: classes4.dex */
public class UnityExamDeductModel extends MessageModel {
    public int code;
    public String desc;
    public int score;
    public String step;
    public long time;

    public UnityExamDeductModel copy() {
        UnityExamDeductModel unityExamDeductModel = new UnityExamDeductModel();
        unityExamDeductModel.desc = this.desc;
        unityExamDeductModel.code = this.code;
        unityExamDeductModel.step = this.step;
        unityExamDeductModel.score = this.score;
        unityExamDeductModel.time = this.time;
        return unityExamDeductModel;
    }
}
