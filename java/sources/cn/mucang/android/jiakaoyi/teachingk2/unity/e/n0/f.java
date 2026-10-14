package cn.mucang.android.jiakaoyi.teachingk2.unity.e.n0;

import android.app.Activity;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.exam.ExamStepListModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class f implements c<ExamStepListModel.ExamStepItemModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<ExamStepListModel.ExamStepItemModel> a(final UnityMessage<ExamStepListModel.ExamStepItemModel> unityMessage, Activity activity) {
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.b1.e.n0.b
            @Override // java.lang.Runnable
            public final void run() {
                a0.e().z((ExamStepListModel.ExamStepItemModel) unityMessage.data);
            }
        });
        return null;
    }
}
