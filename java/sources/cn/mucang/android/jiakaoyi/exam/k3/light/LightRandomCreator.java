package cn.mucang.android.jiakaoyi.exam.k3.light;

import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.collections.y;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0007¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;", "", "()V", "buildRandomLights", "", "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;", "lights", "", "config", "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;", "exam_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LightRandomCreator {
    public static final LightRandomCreator INSTANCE = new LightRandomCreator();

    private LightRandomCreator() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final List<LightExamModel> buildRandomLights(List<? extends Object> lights, K3DengGuangStepConfig config) {
        r.e(lights, "lights");
        r.e(config, "config");
        ArrayList arrayList = new ArrayList();
        Integer num = (Integer) config.p202103.value;
        ArrayList arrayList2 = new ArrayList();
        ArrayList<LightExamModel> arrayList3 = new ArrayList();
        for (Object obj : lights) {
            if (obj instanceof LightExamModel) {
                if (((LightExamModel) obj).playOrder == 0) {
                    arrayList2.add(obj);
                } else {
                    arrayList3.add(obj);
                }
            }
        }
        if (arrayList2.size() > 0) {
            ArrayList arrayList4 = (ArrayList) t.e(arrayList2);
            r.d(num, "num");
            if (num.intValue() >= lights.size() || num.intValue() >= arrayList4.size() || num.intValue() <= 0) {
                arrayList.addAll(arrayList4);
            } else {
                List listSubList = arrayList4.subList(0, num.intValue());
                r.d(listSubList, "shuffled.subList(0, num)");
                arrayList.addAll(listSubList);
            }
        }
        if (arrayList3.size() > 0) {
            y.A(arrayList3, new Comparator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.g
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    return LightRandomCreator.m4buildRandomLights$lambda0((LightExamModel) obj2, (LightExamModel) obj3);
                }
            });
            for (LightExamModel lightExamModel : arrayList3) {
                int i = lightExamModel.playOrder;
                if (i - 1 >= 0) {
                    if (i <= arrayList.size()) {
                        arrayList.add(lightExamModel.playOrder - 1, lightExamModel.copy());
                    } else {
                        arrayList.add(lightExamModel.copy());
                    }
                }
            }
        }
        if (arrayList.size() > 0) {
            ((LightExamModel) arrayList.get(0)).isStart = true;
            if (arrayList.size() > 1) {
                ((LightExamModel) arrayList.get(arrayList.size() - 1)).isEnd = true;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: buildRandomLights$lambda-0, reason: not valid java name */
    public static final int m4buildRandomLights$lambda0(LightExamModel lightExamModel, LightExamModel lightExamModel2) {
        return r.g(lightExamModel.playOrder, lightExamModel2.playOrder);
    }
}
