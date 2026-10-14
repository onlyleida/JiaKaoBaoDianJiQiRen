package cn.mucang.android.jiakaoyi.teachingk2.level;

import cn.mucang.android.jiakaoyi.framework.dialogmgr.DialogMgr;
import cn.mucang.android.jiakaoyi.teachingk2.firstpractice.FirstPracticeStep;
import cn.mucang.android.jiakaoyi.teachingk2.level.model.ConfigLevelModel;
import com.alibaba.fastjson.JSON;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¨\u0006\b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelChangeCallback;", "", "()V", "onLevelChanged", "", "lastConfig", "Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;", "currentConfig", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LevelChangeCallback {
    public final void a(ConfigLevelModel configLevelModel, ConfigLevelModel configLevelModel2) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("关卡-变化:" + ((Object) JSON.toJSONString(configLevelModel)) + ',' + ((Object) JSON.toJSONString(configLevelModel2)));
        if (configLevelModel2 != null && configLevelModel2.getCode() == TutorialLevel.FirstPractice.getServerCode()) {
            cn.mucang.android.jiakaoyi.teachingk2.firstpractice.a.e().k(FirstPracticeStep.findByCode(configLevelModel2.getId()));
        }
        if (kotlin.jvm.internal.r.a(configLevelModel == null ? null : Integer.valueOf(configLevelModel.getCode()), configLevelModel2 == null ? null : Integer.valueOf(configLevelModel2.getCode()))) {
            if (kotlin.jvm.internal.r.a(configLevelModel == null ? null : Integer.valueOf(configLevelModel.getId()), configLevelModel2 == null ? null : Integer.valueOf(configLevelModel2.getId()))) {
                if (!(configLevelModel != null && configLevelModel.getCode() == TutorialLevel.CircleTrain.getServerCode())) {
                    if (!(configLevelModel != null && configLevelModel.getCode() == TutorialLevel.ComplexTrain.getServerCode())) {
                        return;
                    }
                }
                LevelStepCalculator.c();
                return;
            }
        }
        if (configLevelModel2 == null) {
            UserLevelManager.t(false, configLevelModel, null, 4, null);
            return;
        }
        if (!(configLevelModel != null && configLevelModel2.getCode() == configLevelModel.getCode())) {
            UserLevelManager.s(false, configLevelModel2, configLevelModel);
        } else {
            if (configLevelModel2.getCode() == TutorialLevel.FirstPractice.getServerCode()) {
                return;
            }
            DialogMgr.d(new LevelChangeCallback$onLevelChanged$1(configLevelModel, configLevelModel2));
        }
    }
}
