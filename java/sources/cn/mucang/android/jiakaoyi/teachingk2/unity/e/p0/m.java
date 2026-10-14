package cn.mucang.android.jiakaoyi.teachingk2.unity.e.p0;

import android.app.Activity;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.teachingk2.grade.TeachConfig;
import cn.mucang.android.jiakaoyi.teachingk2.humanize.tips.RobotTips;
import cn.mucang.android.jiakaoyi.teachingk2.k3.TeachModeManager;
import cn.mucang.android.jiakaoyi.teachingk2.l0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.train.TrainLevelModel;
import cn.mucang.android.jiakaoyi.unity.c.c;
import cn.mucang.android.jiakaoyi.unity.communicator.models.UnityMessage;

/* JADX INFO: loaded from: classes4.dex */
public class m implements c<TrainLevelModel> {
    @Override // cn.mucang.android.jiakaoyi.unity.c.c
    public UnityMessage<TrainLevelModel> a(UnityMessage<TrainLevelModel> unityMessage, Activity activity) {
        int i = unityMessage.id;
        if (i == 30001) {
            if (n0.e(((TrainLevelModel) unityMessage.data).level)) {
                f.o("unity获取当前level");
                ((TrainLevelModel) unityMessage.data).level = String.valueOf(l0.a());
            } else {
                int i2 = Integer.parseInt(((TrainLevelModel) unityMessage.data).level);
                f.o("unity设置当前level：" + i2);
                l0.d(i2);
                RobotTips.f7184a.B(i2);
            }
            ((TrainLevelModel) unityMessage.data).list = TeachConfig.b();
        } else if (i == 12007) {
            if (n0.e(((TrainLevelModel) unityMessage.data).level)) {
                ((TrainLevelModel) unityMessage.data).level = TeachModeManager.a();
            } else {
                TeachModeManager.e(((TrainLevelModel) unityMessage.data).level);
            }
            ((TrainLevelModel) unityMessage.data).list = TeachModeManager.b();
        }
        return unityMessage;
    }
}
