package cn.mucang.android.jiakaoyi.exam.k3.teach;

import cn.mucang.android.jiakaoyi.engine.config.route.RuleConfig;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.AngleHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.AroundCarHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.BianDaoHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.ClutchStepHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.DiaoTouHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.DistanceHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.DoorHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.EngineHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.FingerPrintHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.FootBrakeHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.GearHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.HandBrakeHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.HuiZhenHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.KeepLightHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.LabaHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.LightHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.OffsetHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.QibuHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.SeatBeltHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.SpeedDownHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.SpeedUpHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.StopHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.ThreeTouchHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.TimeHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.handler.ZhuanWanHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.ActionEventEntry;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.Variable;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class K3TeachDataParser {
    private final Map<Integer, Creator> variableCache;

    /* JADX INFO: Access modifiers changed from: private */
    interface Creator<C extends Variable, T extends VariableHandler<C>> {
        T create();
    }

    private static class Holder {
        private static final K3TeachDataParser instance = new K3TeachDataParser();

        private Holder() {
        }
    }

    static /* synthetic */ int a(Variable variable, Variable variable2) {
        return variable.level - variable2.level;
    }

    static /* synthetic */ int b(TeachData teachData, TeachData teachData2) {
        return teachData.position - teachData2.position;
    }

    private List<List<ActionEventEntry>> createLevelVariables(List<? extends Variable> list) {
        Collections.sort(list, new Comparator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.e
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return K3TeachDataParser.a((Variable) obj, (Variable) obj2);
            }
        });
        ArrayList arrayList = new ArrayList();
        int i = -1;
        ArrayList arrayList2 = null;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Variable variable = list.get(i2);
            if (i2 == 0 || variable.level != i) {
                i = variable.level;
                arrayList2 = new ArrayList();
                arrayList.add(arrayList2);
            }
            VariableHandler<? extends Variable> variableHandler = getVariableHandler(variable);
            if (variableHandler != null && variable != null) {
                arrayList2.add(new ActionEventEntry(variable, variableHandler));
            }
        }
        return arrayList;
    }

    private List<Variable> fillVariables(Map<String, RuleConfig> map, List<Variable> list) {
        ArrayList arrayList = new ArrayList();
        for (Variable variable : list) {
            if (variable.ruleCode != null) {
                RuleConfig ruleConfig = map.get(TtmlNode.TAG_P + variable.ruleCode);
                if (ruleConfig != null) {
                    try {
                        String string = ruleConfig.value.toString();
                        if (Double.valueOf(Double.parseDouble(string)) != null) {
                            variable.value = Double.valueOf(Double.parseDouble(string));
                        }
                        arrayList.add(variable);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        cn.mucang.android.core.utils.t.d("K3Teach", "解析出错ruleCode：" + variable.ruleCode + " ; variable " + JSON.toJSONString(variable));
                    }
                } else {
                    cn.mucang.android.core.utils.t.d("K3Teach", "ruleCode：" + variable.ruleCode + " ; variable " + JSON.toJSONString(variable));
                }
            } else {
                arrayList.add(variable);
            }
        }
        return arrayList;
    }

    public static K3TeachDataParser getInstance() {
        return Holder.instance;
    }

    public ActionEventHandler createActionHandler(TeachData teachData) {
        ActionEventHandler actionEventHandler = new ActionEventHandler(teachData);
        List<Variable> list = teachData.variables;
        if (list != null && list.size() > 0) {
            actionEventHandler.entryList = createLevelVariables(teachData.variables);
        }
        List<Variable> list2 = teachData.errorVariables;
        if (list2 != null && list2.size() > 0) {
            actionEventHandler.errorEntryList = createLevelVariables(teachData.errorVariables);
        }
        return actionEventHandler;
    }

    public <T extends Variable> VariableHandler<? extends Variable> getVariableHandler(T t) {
        Creator creator = this.variableCache.get(Integer.valueOf(t.type));
        if (creator != null) {
            return creator.create();
        }
        return null;
    }

    public void setRuleConfigValue(TeachData teachData, Map<String, RuleConfig> map) {
        if (teachData != null) {
            List<Variable> list = teachData.variables;
            if (list != null && list.size() > 0) {
                List<Variable> listFillVariables = fillVariables(map, list);
                teachData.variables.clear();
                teachData.variables.addAll(listFillVariables);
            }
            List<Variable> list2 = teachData.errorVariables;
            if (list2 == null || list2.size() <= 0) {
                return;
            }
            List<Variable> listFillVariables2 = fillVariables(map, list2);
            teachData.errorVariables.clear();
            teachData.errorVariables.addAll(listFillVariables2);
        }
    }

    public List<K3TeachEntity> transformTeachData(List<K3TeachEntity> list) {
        for (K3TeachEntity k3TeachEntity : list) {
            List<TeachData> list2 = k3TeachEntity.items;
            if (list2 != null) {
                Collections.sort(list2, new Comparator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.f
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return K3TeachDataParser.b((TeachData) obj, (TeachData) obj2);
                    }
                });
                for (int i = 0; i < k3TeachEntity.items.size(); i++) {
                    TeachData teachData = k3TeachEntity.items.get(i);
                    teachData.position = i;
                    teachData.variables = TeachData.parseVariables(teachData.value);
                    teachData.errorVariables = TeachData.parseVariables(teachData.errorValue);
                }
            }
        }
        return list;
    }

    private K3TeachDataParser() {
        HashMap map = new HashMap();
        this.variableCache = map;
        map.put(Integer.valueOf(K3TeachTypes.Angle.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.h
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new AngleHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.Light.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.a
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new LightHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.Gear.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.v
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new GearHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.Laba.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.b
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new LabaHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.BianDao.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.x
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new BianDaoHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.Distance.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.d0
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new DistanceHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.FootBrake.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.n
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new FootBrakeHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.Engine.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.z
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new EngineHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.Door.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.i
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new DoorHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.FingerPrint.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.e0
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new FingerPrintHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.AroundCar.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.o
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new AroundCarHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.ThreeTouch.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.u
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new ThreeTouchHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.DiaoTou.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.p
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new DiaoTouHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.HandBrake.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.c
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new HandBrakeHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.SeatBelt.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.w
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new SeatBeltHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.SpeedUp.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.r
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new SpeedUpHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.SpeedDown.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.a0
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new SpeedDownHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.StopCar.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.q
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new StopHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.HuiZhen.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.g
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new HuiZhenHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.ZhuanWan.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.y
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new ZhuanWanHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.Offset.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.s
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new OffsetHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.Time.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.d
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new TimeHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.QiBu.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.c0
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new QibuHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.Clutch.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.t
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new ClutchStepHandler();
            }
        });
        map.put(Integer.valueOf(K3TeachTypes.KeepLight.type), new Creator() { // from class: cn.mucang.android.jiakaoyi.exam.k3.teach.b0
            @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataParser.Creator
            public final VariableHandler create() {
                return new KeepLightHandler();
            }
        });
    }
}
