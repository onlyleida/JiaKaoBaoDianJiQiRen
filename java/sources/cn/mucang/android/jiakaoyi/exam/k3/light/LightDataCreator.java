package cn.mucang.android.jiakaoyi.exam.k3.light;

import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LightDataCreator {
    public static final List<LightExamModel> allTopics;
    private static final List<int[]> innerGroup;

    static {
        ArrayList arrayList = new ArrayList();
        allTopics = arrayList;
        Light light = Light.NearLight;
        LightExamModel lightExamModel = new LightExamModel(1, 102106, "将要进行夜间行驶，请打开前照灯", "开始-打开近光灯", Collections.singletonList(light));
        lightExamModel.type = 1;
        arrayList.add(lightExamModel);
        List listSingletonList = Collections.singletonList(light);
        Light light2 = Light.FarLight;
        arrayList.add(new LightExamModel(2, 102110, "夜间在窄路与非机动车会车", "近光灯", listSingletonList, Collections.singletonList(light2)));
        arrayList.add(new LightExamModel(3, 102111, "夜间同方向近距离跟车行驶", "近光灯", Collections.singletonList(light), Collections.singletonList(light2)));
        arrayList.add(new LightExamModel(4, 102112, "夜间遇对方会车距对方来车将近150米", "近光灯", Collections.singletonList(light), Collections.singletonList(light2)));
        arrayList.add(new LightExamModel(5, 102118, "进入照明良好路段", "近光灯", Collections.singletonList(light)));
        arrayList.add(new LightExamModel(6, 102119, "前方通过路口", "近光灯", Collections.singletonList(light)));
        arrayList.add(new LightExamModel(7, 102120, "前方请会车", "近光灯", Collections.singletonList(light), Collections.singletonList(light2)));
        arrayList.add(new LightExamModel(8, 102121, "夜间与机动车会车", "近光灯", Collections.singletonList(light), Collections.singletonList(light2)));
        arrayList.add(new LightExamModel(9, 102107, "夜间在没有路灯，照明不良条件下行驶", "远光灯", Collections.singletonList(light2)));
        arrayList.add(new LightExamModel(10, 102117, "请将前照灯变换成远光", "远光灯", Collections.singletonList(light2)));
        Light light3 = Light.FlashLight;
        arrayList.add(new LightExamModel(11, 102113, "夜间通过急弯、坡路、拱桥、人行横道", "闪灯", Collections.singletonList(light3)));
        arrayList.add(new LightExamModel(12, 102114, "夜间通过没有交通信号灯控制的路口", "闪灯", Collections.singletonList(light3)));
        arrayList.add(new LightExamModel(13, 102123, "超越前方车辆", "闪灯", Collections.singletonList(light3)));
        Light light4 = Light.WidthLight;
        Light light5 = Light.WarningLight;
        arrayList.add(new LightExamModel(14, 102109, "路边临时停车", "示宽灯+危险警报闪光灯", Arrays.asList(light4, light5)));
        arrayList.add(new LightExamModel(15, 102115, "夜间在道路上发生故障，妨碍交通又难以移动", "示宽灯+危险警报闪光灯", Arrays.asList(light4, light5), Collections.singletonList(light2)));
        arrayList.add(new LightExamModel(16, 102116, "雾天行驶", "近光灯+危险警报闪光灯+雾灯", Arrays.asList(light, light5, Light.FrontFogLight, Light.RearFogLight)));
        LightExamModel lightExamModel2 = new LightExamModel(17, 102108, true, "夜间超车", "1.开启左转向灯，2.远近交替，3.开启右转向灯", Arrays.asList(Light.TurnLeftLight, light3, Light.TurnRightLight), null);
        lightExamModel2.tag = 1;
        arrayList.add(lightExamModel2);
        LightExamModel lightExamModel3 = new LightExamModel(18, 102122, "模拟夜间考试完成，请关闭所有灯光", "结束-关闭所有灯光", Collections.singletonList(Light.Off));
        lightExamModel3.type = 20;
        arrayList.add(lightExamModel3);
        ArrayList arrayList2 = new ArrayList();
        innerGroup = arrayList2;
        arrayList2.add(new int[]{1, 5, 8, 12, 14, 18});
        arrayList2.add(new int[]{1, 7, 6, 3, 12, 14, 13, 18});
        arrayList2.add(new int[]{1, 6, 7, 13, 5, 11, 14, 18});
        arrayList2.add(new int[]{1, 9, 7, 11, 3, 14, 18});
        arrayList2.add(new int[]{1, 6, 5, 7, 13, 18});
        arrayList2.add(new int[]{1, 10, 5, 2, 11, 3, 14, 18});
        arrayList2.add(new int[]{1, 5, 6, 8, 13, 15, 13, 18});
        arrayList2.add(new int[]{1, 5, 7, 13, 8, 12, 14, 11, 18});
    }

    static /* synthetic */ int a(LightExamModel lightExamModel, LightExamModel lightExamModel2) {
        int i = lightExamModel.playOrder;
        int i2 = lightExamModel2.playOrder;
        if (i - i2 > 0) {
            return 1;
        }
        return i - i2 < 0 ? -1 : 0;
    }

    private static void addExamModel(List<LightExamModel> list, List<LightExamModel> list2, int i) {
        if (i < 0 || i >= list2.size()) {
            return;
        }
        list.add(list2.get(i).copy());
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0186  */
    /* JADX WARN: Multi-variable type inference failed */
    public static List<LightExamModel> createLightData(List<LightExamModel> list, List<LightAssembleModel> list2, K3DengGuangStepConfig k3DengGuangStepConfig) {
        ArrayList arrayList = new ArrayList();
        if (!cn.mucang.android.jiakaoyi.signal.utils.f.b() || ((Integer) k3DengGuangStepConfig.p202142.value).intValue() == 0 ? ((Integer) k3DengGuangStepConfig.p202102.value).intValue() == 1 : ((Integer) k3DengGuangStepConfig.p202142.value).intValue() == 2) {
            if (list == null || list.size() <= 0) {
                return arrayList;
            }
            int iIntValue = ((Integer) k3DengGuangStepConfig.p202103.value).intValue();
            int i = ((Boolean) k3DengGuangStepConfig.p202104.value).booleanValue() ? 200 : 1;
            while (i > 0) {
                i--;
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                for (LightExamModel lightExamModel : list) {
                    if (lightExamModel.playOrder > 0) {
                        arrayList3.add(lightExamModel);
                    } else {
                        arrayList4.add(lightExamModel);
                    }
                }
                if (arrayList4.size() > 0) {
                    Map<Integer, List<Integer>> mapGroupByLightType = groupByLightType(arrayList4);
                    if (!mapGroupByLightType.isEmpty()) {
                        ArrayList arrayList5 = new ArrayList(mapGroupByLightType.keySet());
                        Collections.shuffle(arrayList5);
                        int size = iIntValue - mapGroupByLightType.size();
                        int i2 = 0;
                        while (i2 < iIntValue) {
                            List<Integer> list3 = mapGroupByLightType.get(arrayList5.get(i2 % arrayList5.size()));
                            if (!cn.mucang.android.core.utils.g.b(list3)) {
                                addExamModel(arrayList2, arrayList4, list3.remove((int) (((double) list3.size()) * Math.random())).intValue());
                                if (((Boolean) k3DengGuangStepConfig.p202106.value).booleanValue() && Math.random() > 0.8d && list3.size() > 0 && size > 0) {
                                    size--;
                                    i2++;
                                    addExamModel(arrayList2, arrayList4, list3.remove((int) (((double) list3.size()) * Math.random())).intValue());
                                }
                            }
                            i2++;
                        }
                    }
                }
                if (arrayList3.size() > 0) {
                    Collections.sort(arrayList3, new Comparator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.c
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return LightDataCreator.a((LightExamModel) obj, (LightExamModel) obj2);
                        }
                    });
                    for (int i3 = 0; i3 < arrayList3.size(); i3++) {
                        LightExamModel lightExamModel2 = (LightExamModel) arrayList3.get(i3);
                        int i4 = lightExamModel2.playOrder;
                        if (i4 - 1 >= 0) {
                            if (i4 <= arrayList2.size()) {
                                arrayList2.add(lightExamModel2.playOrder - 1, lightExamModel2.copy());
                            } else {
                                arrayList2.add(lightExamModel2.copy());
                            }
                        }
                    }
                    if (arrayList2.size() > 0) {
                        ((LightExamModel) arrayList2.get(0)).isStart = true;
                        if (arrayList2.size() >= 2) {
                            ((LightExamModel) arrayList2.get(arrayList2.size() - 1)).isEnd = true;
                        }
                    }
                }
                arrayList.addAll(arrayList2);
            }
        } else if (cn.mucang.android.core.utils.g.b(list2)) {
            selectInnerTopicAssemble(list, arrayList);
        } else {
            List<LightExamModel> lights = list2.get((int) (((double) list2.size()) * Math.random())).getLights();
            if (cn.mucang.android.core.utils.g.b(lights)) {
                selectInnerTopicAssemble(list, arrayList);
            } else {
                arrayList.addAll(lights);
            }
        }
        return arrayList;
    }

    private static Map<Integer, List<Integer>> groupByLightType(List<LightExamModel> list) {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        ArrayList arrayList = new ArrayList(list);
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            LightExamModel lightExamModel = list.get(i2);
            if (!cn.mucang.android.core.utils.g.b(lightExamModel.lights) && lightExamModel.playOrder <= 0) {
                int i3 = lightExamModel.lights.size() > 1 ? -1 : lightExamModel.lights.get(0).lightId;
                List arrayList2 = (List) map2.get(Integer.valueOf(i3));
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    map2.put(Integer.valueOf(i3), arrayList2);
                }
                arrayList2.add(Integer.valueOf(i2));
            }
        }
        Iterator it = map2.values().iterator();
        while (it.hasNext()) {
            map.put(Integer.valueOf(i), (List) it.next());
            i++;
        }
        return map;
    }

    private static void selectInnerTopicAssemble(List<LightExamModel> list, List<LightExamModel> list2) {
        List<int[]> list3 = innerGroup;
        for (int i : list3.get((int) (((double) list3.size()) * Math.random()))) {
            addExamModel(list2, list, i - 1);
        }
    }
}
