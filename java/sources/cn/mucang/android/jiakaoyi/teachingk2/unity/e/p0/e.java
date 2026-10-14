package cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0;

import android.app.Activity;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.teachingk2.dksingle.SingleType;
import cn.mucang.android.jiakaoyi.teachingk2.dksingle.a;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.DaoKuSingleTrainModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class e implements c<DaoKuSingleTrainModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<DaoKuSingleTrainModel> a(UnityMessage<DaoKuSingleTrainModel> unityMessage, Activity activity) {
        if (n0.e(((DaoKuSingleTrainModel) unityMessage.data).type)) {
            ((DaoKuSingleTrainModel) unityMessage.data).type = String.valueOf(a.a().type);
            ((DaoKuSingleTrainModel) unityMessage.data).list = SingleType.typeList();
        } else {
            a.b(SingleType.getByType(Integer.parseInt(((DaoKuSingleTrainModel) unityMessage.data).type)));
        }
        return unityMessage;
    }
}
