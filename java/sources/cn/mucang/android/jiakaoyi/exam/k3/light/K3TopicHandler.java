package cn.mucang.android.jiakaoyi.exam.k3.light;

import android.os.SystemClock;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.Deduct;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.R;
import cn.mucang.android.jiakaoyi.exam.k3.config.K3DengGuangStepConfig;
import cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.tts.voice.l;
import cn.mucang.android.jiakaoyi.framework.utils.g0;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes2.dex */
public class K3TopicHandler {
    private final K3DengGuangStepConfig config;
    private final cn.mucang.android.jiakaoyi.framework.h.c<Boolean> deductIsOver;
    private final Map<Integer, Deduct> deducts;
    private boolean hasDeduct;
    private boolean hasLeftLightTimeDeduct;
    private boolean hasRightLightTimeDeduct;
    private boolean haveJudgeReset;
    private volatile int id;
    private boolean isBreakJudge;
    private boolean isFailure;
    private volatile boolean isPlaying;
    private boolean isPlayingDeduct;
    private boolean isPrintFirstFrame;
    private List<Light> judgeFirstFrameLights;
    private LightExamModel lastModel;
    private final boolean needPlayDeduct;
    private volatile long playEndTime;
    private long playStartTime;
    private volatile long startJudgeTime;
    public int lastCarLightState = 0;
    private boolean isStart = false;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.exam.k3.light.K3TopicHandler$1, reason: invalid class name */
    class AnonymousClass1 extends SimpleTtsListener {
        final /* synthetic */ boolean val$isPlayDingDong;
        final /* synthetic */ int val$mid;
        final /* synthetic */ String val$text;
        final /* synthetic */ int val$voiceCode;
        final /* synthetic */ String val$voiceKey;

        AnonymousClass1(int i, String str, int i2, String str2, boolean z) {
            this.val$mid = i;
            this.val$text = str;
            this.val$voiceCode = i2;
            this.val$voiceKey = str2;
            this.val$isPlayDingDong = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b(Boolean bool) {
            K3TopicHandler.this.isPlaying = false;
            K3TopicHandler.this.playEndTime = SystemClock.elapsedRealtime();
            if (K3TopicHandler.this.startJudgeTime == 0) {
                K3TopicHandler k3TopicHandler = K3TopicHandler.this;
                k3TopicHandler.startJudgeTime = k3TopicHandler.playEndTime;
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
        public void onSpeakEnd() {
            if (this.val$mid != K3TopicHandler.this.id) {
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("startSpeaking end text " + this.val$text + " ;voiceCode " + this.val$voiceCode + ";voiceKey " + this.val$voiceKey);
            if (this.val$isPlayDingDong) {
                g0.c(R.raw.dingdong, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.b
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        this.f3226a.b((Boolean) obj);
                    }
                });
                return;
            }
            K3TopicHandler.this.isPlaying = false;
            K3TopicHandler.this.playEndTime = SystemClock.elapsedRealtime();
            if (K3TopicHandler.this.startJudgeTime == 0) {
                K3TopicHandler k3TopicHandler = K3TopicHandler.this;
                k3TopicHandler.startJudgeTime = k3TopicHandler.playEndTime;
            }
        }
    }

    public K3TopicHandler(K3DengGuangStepConfig k3DengGuangStepConfig, Map<Integer, Deduct> map, cn.mucang.android.jiakaoyi.framework.h.c<Boolean> cVar, boolean z) {
        this.config = k3DengGuangStepConfig;
        this.deducts = map;
        this.needPlayDeduct = z;
        this.deductIsOver = cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void checkFlashLightAction(cn.mucang.android.jiakaoyi.signal.c.e eVar, List<Light> list, LightExamModel lightExamModel, LightExam.LightExamCallback lightExamCallback) {
        int iOpenLightCount;
        int iIntValue = ((Integer) this.config.p202116.value).intValue() + 1;
        int iIntValue2 = ((Integer) this.config.p202147.value).intValue();
        if (iIntValue < iIntValue2 && lightExamModel.lights.size() == 1 && lightExamModel.lights.contains(Light.FlashLight)) {
            Light light = Light.FarLight;
            if (!list.contains(light) || (iOpenLightCount = lightExamModel.openLightCount(light)) <= iIntValue2) {
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("闪灯次数超过最大设置 minCount " + iIntValue + " ; maxCount " + iIntValue2 + " ; 远光灯开启次数 " + iOpenLightCount);
            StringBuilder sb = new StringBuilder();
            sb.append("闪灯次数超过最大设置 minCount ");
            sb.append(iIntValue);
            sb.append(" ; maxCount ");
            sb.append(iIntValue2);
            t.h("TimeTag", sb.toString());
            lightExamModelDeduct(lightExamModel, lightExamModel.deductId, lightExamCallback);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean checkIsReset(LightExamModel lightExamModel, LightExamModel lightExamModel2, List<Light> list, LightExam.LightExamCallback lightExamCallback) {
        List<Light> list2;
        if (!isPauseJudge(lightExamModel2) && this.playEndTime != -1 && !this.isFailure && ((Boolean) this.config.p202119.value).booleanValue() && !this.haveJudgeReset && !list.isEmpty()) {
            this.haveJudgeReset = true;
            int i = lightExamModel2.tag;
            if (i != 2 && i != 3 && lightExamModel != null && (list2 = lightExamModel.lights) != null) {
                for (Light light : list2) {
                    if (light != Light.Off && (!((Boolean) this.config.p202121.value).booleanValue() || (light != Light.TurnRightLight && light != Light.TurnLeftLight))) {
                        if (!((Boolean) this.config.p202122.value).booleanValue() || light != Light.WarningLight) {
                            if (light == Light.FlashLight || light == Light.FarLight) {
                                boolean zD = cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.lastCarLightState, Light.FarLight.lightId);
                                boolean zD2 = cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.lastCarLightState, Light.NearLight.lightId);
                                boolean zD3 = cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.lastCarLightState, Light.WidthLight.lightId);
                                if (zD || zD2 || zD3) {
                                    cn.mucang.android.jiakaoyi.framework.log.f.o("灯光没有复位" + light);
                                    t.h("TimeTag", "灯光没有复位" + light);
                                    lightExamModelDeduct(lightExamModel2, lightExamModel2.deductId, lightExamCallback);
                                    return true;
                                }
                            } else {
                                Light light2 = Light.NearLight;
                                if (light == light2) {
                                    boolean zD4 = cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.lastCarLightState, light2.lightId);
                                    boolean zD5 = cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.lastCarLightState, Light.WidthLight.lightId);
                                    if (zD4 || zD5) {
                                        cn.mucang.android.jiakaoyi.framework.log.f.o("灯光没有复位" + light);
                                        t.h("TimeTag", "灯光没有复位" + light);
                                        lightExamModelDeduct(lightExamModel2, lightExamModel2.deductId, lightExamCallback);
                                        return true;
                                    }
                                } else if (cn.mucang.android.jiakaoyi.signal.d.j.a.d(this.lastCarLightState, light.lightId)) {
                                    cn.mucang.android.jiakaoyi.framework.log.f.o("灯光没有复位" + light);
                                    t.h("TimeTag", "灯光没有复位" + light);
                                    lightExamModelDeduct(lightExamModel2, lightExamModel2.deductId, lightExamCallback);
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private boolean checkLightChange(int i) {
        for (Light light : Light.values()) {
            if (cn.mucang.android.jiakaoyi.signal.d.j.a.a(this.lastCarLightState, light.lightId) != cn.mucang.android.jiakaoyi.signal.d.j.a.a(i, light.lightId)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    /* JADX WARN: Code duplicated, block: B:40:0x0094  */
    /* JADX WARN: Multi-variable type inference failed */
    private boolean checkLightRightFinish(cn.mucang.android.jiakaoyi.signal.c.e eVar, LightExamModel lightExamModel, ArrayList<Light> arrayList, List<Light> list, long j) {
        boolean zIsFinish;
        boolean z = false;
        if (this.isFailure) {
            return false;
        }
        if (((Boolean) this.config.p202125.value).booleanValue()) {
            if ((this.playEndTime > 0 && SystemClock.elapsedRealtime() - this.playEndTime > j) || !list.isEmpty()) {
                if (!((Boolean) this.config.p202120.value).booleanValue()) {
                    List<Light> listCheckOtherLightOn = checkOtherLightOn(arrayList, lightExamModel);
                    if (lightExamModel.isFinish() && lastLightOn(eVar, lightExamModel) && (listCheckOtherLightOn == null || listCheckOtherLightOn.size() == 0)) {
                        zIsFinish = true;
                    }
                } else if (lightExamModel.isFinish() && lastLightOn(eVar, lightExamModel)) {
                    zIsFinish = true;
                }
            }
            zIsFinish = false;
        } else if (this.playEndTime <= 0 || SystemClock.elapsedRealtime() - this.playEndTime <= j) {
            zIsFinish = false;
        } else if (((Boolean) this.config.p202118.value).booleanValue()) {
            zIsFinish = lightExamModel.isFinish();
        } else if (lightExamModel.isFinish() && lastLightOn(eVar, lightExamModel)) {
            zIsFinish = true;
        } else {
            zIsFinish = false;
        }
        if (lightExamModel.lights.contains(Light.FlashLight)) {
            Light light = Light.FarLight;
            if (lightExamModel.openLightCount(light) == 1 && eVar.d().j(light)) {
                zIsFinish = false;
            }
        }
        if (lightExamModel.deductId != 102154 || !zIsFinish) {
            return zIsFinish;
        }
        if (eVar.d().j(Light.NearLight) && !eVar.d().j(Light.FarLight)) {
            z = true;
        }
        return z;
    }

    private boolean checkNotAllowedAction(cn.mucang.android.jiakaoyi.signal.c.e eVar, List<Light> list, LightExamModel lightExamModel, LightExam.LightExamCallback lightExamCallback) {
        List<Light> list2;
        boolean z = false;
        if (isPauseJudge(lightExamModel) || list.isEmpty() || this.isFailure || (list2 = lightExamModel.notAllowed) == null) {
            return false;
        }
        for (Light light : list2) {
            if (light != Light.FlashLight) {
                if (eVar.d().j(light)) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("操作了不应该操作的灯光");
                    t.h("TimeTag", "操作了不应该操作的灯光");
                    lightExamModelDeduct(lightExamModel, lightExamModel.deductId, lightExamCallback);
                    return true;
                }
            } else if (list.contains(Light.FarLight)) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("不应该操作的FlashLight 远光被打开");
                t.h("TimeTag", "操作了不应该操作的灯光");
                lightExamModelDeduct(lightExamModel, lightExamModel.deductId, lightExamCallback);
                z = true;
            }
        }
        return z;
    }

    private List<Light> checkOpenLights(int i) {
        ArrayList arrayList = new ArrayList();
        for (Light light : Light.values()) {
            if (light != Light.Off && cn.mucang.android.jiakaoyi.signal.d.j.a.c(this.lastCarLightState, light.lightId) && cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, light.lightId)) {
                arrayList.add(light);
            }
        }
        return arrayList;
    }

    private boolean checkOpenOtherLight(List<Light> list, List<Light> list2, LightExamModel lightExamModel, LightExam.LightExamCallback lightExamCallback) {
        List<Light> list3;
        List<Light> listCheckOtherLightOn = checkOtherLightOn(list, lightExamModel);
        if (listCheckOtherLightOn == null || listCheckOtherLightOn.size() <= 0) {
            return false;
        }
        for (Light light : listCheckOtherLightOn) {
            Light light2 = Light.NearLight;
            if (light != light2) {
                Light light3 = Light.FarLight;
                if (light == light3 && lightExamModel.lights.contains(light2) && !lightExamModel.lights.contains(light3)) {
                    List<Light> list4 = lightExamModel.lights;
                    Light light4 = Light.FlashLight;
                    if (list4.contains(light4) || ((list3 = lightExamModel.notAllowed) != null && (list3.contains(light3) || lightExamModel.notAllowed.contains(light4)))) {
                    }
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("开启了不应该开的灯光2 " + light);
                t.h("TimeTag", "开启了不应该开的灯光2 " + light);
                lightExamModelDeduct(lightExamModel, lightExamModel.deductId, lightExamCallback);
                return true;
            }
            if (list2 == null || !list2.contains(Light.FarLight) || lightExamModel.openLightCount(light2) > 1) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("开启了不应该开的灯光2 " + light);
                t.h("TimeTag", "开启了不应该开的灯光2 " + light);
                lightExamModelDeduct(lightExamModel, lightExamModel.deductId, lightExamCallback);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<Light> checkOtherLightOn(List<Light> list, LightExamModel lightExamModel) {
        int i;
        if (!isPauseJudge(lightExamModel) && !this.isFailure && !((Boolean) this.config.p202120.value).booleanValue() && (i = lightExamModel.tag) != 2 && i != 3) {
            HashSet hashSet = new HashSet();
            for (Light light : lightExamModel.lights) {
                if (light != Light.Off) {
                    Light light2 = Light.FrontFogLight;
                    if (light == light2 || light == Light.RearFogLight) {
                        hashSet.add(Light.RearFogLight);
                        hashSet.add(light2);
                        hashSet.add(Light.NearLight);
                        hashSet.add(Light.WidthLight);
                    } else {
                        Light light3 = Light.NearLight;
                        if (light == light3) {
                            hashSet.add(light3);
                            hashSet.add(Light.WidthLight);
                        } else {
                            Light light4 = Light.FarLight;
                            if (light == light4) {
                                hashSet.add(light4);
                                hashSet.add(light3);
                                hashSet.add(Light.WidthLight);
                            } else if (light == Light.FlashLight) {
                                hashSet.add(light4);
                                hashSet.add(light3);
                                hashSet.add(Light.WidthLight);
                            } else {
                                hashSet.add(light);
                            }
                        }
                    }
                }
            }
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (Light light5 : list) {
                    if (!hashSet.contains(light5) && (!((Boolean) this.config.p202121.value).booleanValue() || (light5 != Light.TurnRightLight && light5 != Light.TurnLeftLight))) {
                        if (!((Boolean) this.config.p202122.value).booleanValue() || light5 != Light.WarningLight) {
                            arrayList.add(light5);
                        }
                    }
                }
                return arrayList;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0087  */
    /* JADX WARN: Multi-variable type inference failed */
    private boolean checkRobOrder(cn.mucang.android.jiakaoyi.signal.c.e eVar, LightExamModel lightExamModel, ArrayList<Light> arrayList, List<Light> list, LightExam.LightExamCallback lightExamCallback) {
        boolean z;
        if (isPauseJudge(lightExamModel)) {
            return false;
        }
        if (((Boolean) this.config.p202123.value).booleanValue() && lightExamModel.tag == 2) {
            return false;
        }
        if (((Boolean) this.config.p202124.value).booleanValue() && lightExamModel.tag == 4) {
            return false;
        }
        if (arrayList.contains(Light.FarLight) && list.size() == 1 && list.contains(Light.NearLight)) {
            return false;
        }
        if (!((Boolean) this.config.p202112.value).booleanValue() || !this.isPlaying || SystemClock.elapsedRealtime() - this.playStartTime <= 500) {
            z = false;
        } else if (!((Boolean) this.config.p202138.value).booleanValue()) {
            z = !list.isEmpty();
        } else if (this.lastCarLightState != eVar.d().x) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("抢指令");
        t.h("TimeTag", "抢指令");
        lightExamModelDeduct(lightExamModel, 102105, lightExamCallback);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0084  */
    /* JADX WARN: Code duplicated, block: B:26:0x0088  */
    /* JADX WARN: Multi-variable type inference failed */
    private boolean checkSpecialLightTime(cn.mucang.android.jiakaoyi.signal.c.e eVar, LightExamModel lightExamModel, LightExam.LightExamCallback lightExamCallback) {
        List<Light> list;
        Light light;
        if (!isPauseJudge(lightExamModel) && this.playEndTime != -1 && !this.isPlaying && isNeedCheckChaocheLightTime(lightExamModel)) {
            if (!this.hasLeftLightTimeDeduct) {
                List<Light> list2 = lightExamModel.lights;
                Light light2 = Light.TurnLeftLight;
                if (list2.contains(light2) && lightExamModel.isLight(light2) && !eVar.d().j(light2)) {
                    if (lightExamModel.turnLeftTime < ((Integer) this.config.p202109.value).intValue() * 1000) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("左转时间不够:" + lightExamModel.turnLeftTime);
                        t.h("TimeTag", "左转时间不够:" + lightExamModel.turnLeftTime);
                        lightExamModelDeduct(lightExamModel, 102102, lightExamCallback);
                        this.hasLeftLightTimeDeduct = true;
                        return true;
                    }
                } else if (!this.hasRightLightTimeDeduct) {
                    list = lightExamModel.lights;
                    light = Light.TurnRightLight;
                    if (list.contains(light) && lightExamModel.isLight(light) && !eVar.d().j(light) && lightExamModel.turnRightTime < ((Integer) this.config.p202109.value).intValue() * 1000) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("右转时间不够:" + lightExamModel.turnRightTime);
                        t.h("TimeTag", "右转时间不够:" + lightExamModel.turnRightTime);
                        lightExamModelDeduct(lightExamModel, 102102, lightExamCallback);
                        this.hasRightLightTimeDeduct = true;
                        return true;
                    }
                }
            } else if (!this.hasRightLightTimeDeduct) {
                list = lightExamModel.lights;
                light = Light.TurnRightLight;
                if (list.contains(light)) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("右转时间不够:" + lightExamModel.turnRightTime);
                    t.h("TimeTag", "右转时间不够:" + lightExamModel.turnRightTime);
                    lightExamModelDeduct(lightExamModel, 102102, lightExamCallback);
                    this.hasRightLightTimeDeduct = true;
                    return true;
                }
            }
        }
        return false;
    }

    private Boolean checkTimeOUt(cn.mucang.android.jiakaoyi.signal.c.e eVar, LightExamModel lightExamModel, ArrayList<Light> arrayList, List<Light> list, long j, LightExam.LightExamCallback lightExamCallback) {
        Boolean bool = Boolean.FALSE;
        if (isPauseJudge(lightExamModel) || this.playEndTime == -1 || this.isFailure || this.isPlaying || this.playEndTime <= 0 || SystemClock.elapsedRealtime() - this.playEndTime <= j || checkLightRightFinish(eVar, lightExamModel, arrayList, list, j)) {
            return bool;
        }
        lightExamModel.isFinish = true;
        lightExamModel.startWaitTime = SystemClock.elapsedRealtime();
        cn.mucang.android.jiakaoyi.framework.log.f.o("超过了时间，还没完成");
        t.h("TimeTag", "超过了时间，还没完成");
        if (isNeedCheckChaocheLightTime(lightExamModel) && !lightExamModel.allLightOn()) {
            lightExamModelDeduct(lightExamModel, 102101, lightExamCallback);
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("getDeduct:考试时间:" + j);
        t.h("TimeTag", "getDeduct:考试时间:" + j);
        lightExamModelDeduct(lightExamModel, lightExamModel.deductId, lightExamCallback);
        return Boolean.TRUE;
    }

    private boolean checkWrongOrder(LightExamModel lightExamModel, LightExam.LightExamCallback lightExamCallback) {
        if (isPauseJudge(lightExamModel) || this.isFailure || !lightExamModel.checkWrongOrderLight()) {
            return false;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("顺序错了");
        t.h("TimeTag", "顺序错了");
        lightExamModelDeduct(lightExamModel, lightExamModel.deductId, lightExamCallback);
        return true;
    }

    private ArrayList<Light> getAllLightsOn(int i) {
        ArrayList<Light> arrayList = new ArrayList<>();
        for (Light light : Light.values()) {
            int i2 = light.lightId;
            if (i2 != Light.Off.lightId && cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, i2)) {
                arrayList.add(light);
            }
        }
        return arrayList;
    }

    private Deduct getDeduct(int i, LightExamModel lightExamModel) {
        Map<Integer, Deduct> map = this.deducts;
        Deduct deductEmpty = map != null ? map.get(Integer.valueOf(i)) : null;
        if (deductEmpty == null) {
            deductEmpty = Deduct.empty("", Step.K3_LightSimulate);
            deductEmpty.code = i;
        }
        return Deduct.wrapDeduct(deductEmpty, lightExamModel.desc);
    }

    private void init() {
        this.isPlaying = false;
        this.hasDeduct = false;
        this.isPlayingDeduct = false;
        this.isStart = true;
        this.isPrintFirstFrame = false;
        this.isFailure = false;
        this.haveJudgeReset = false;
        this.playStartTime = 0L;
        this.playEndTime = 0L;
        this.startJudgeTime = 0L;
        this.judgeFirstFrameLights = null;
        this.hasLeftLightTimeDeduct = false;
        this.hasRightLightTimeDeduct = false;
    }

    private boolean isNeedCheckChaocheLightTime(LightExamModel lightExamModel) {
        return lightExamModel.isSpecialLight();
    }

    private boolean isPauseJudge(LightExamModel lightExamModel) {
        if (this.isPlayingDeduct) {
            return true;
        }
        return lightExamModel.isFinish;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0186  */
    /* JADX WARN: Code duplicated, block: B:58:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:63:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:69:0x01df  */
    /* JADX WARN: Multi-variable type inference failed */
    private Boolean judgeLight(cn.mucang.android.jiakaoyi.signal.c.e eVar, LightExamModel lightExamModel, int i, boolean z, long j, LightExam.LightExamCallback lightExamCallback) {
        List<Light> listCheckOtherLightOn;
        List<Light> listCheckOtherLightOn2;
        int iIntValue;
        Boolean bool = Boolean.TRUE;
        Boolean bool2 = Boolean.FALSE;
        this.isBreakJudge = false;
        List<Light> listCheckOpenLights = checkOpenLights(eVar.d().x);
        ArrayList<Light> allLightsOn = getAllLightsOn(eVar.d().x);
        ArrayList<Light> allLightsOn2 = getAllLightsOn(this.lastCarLightState);
        if (this.lastCarLightState != eVar.d().x) {
            StringBuilder sb = new StringBuilder();
            if (!allLightsOn2.isEmpty()) {
                sb.append("last lights: ");
                sb.append(allLightsOn2);
                sb.append(VectorFormat.DEFAULT_SEPARATOR);
                t.h("TimeTag", "上一次亮的灯光 " + allLightsOn2);
            }
            t.h("TimeTag", "打开的灯光 " + listCheckOpenLights);
            if (!allLightsOn.isEmpty()) {
                sb.append("current lights: ");
                sb.append(allLightsOn);
                sb.append(VectorFormat.DEFAULT_SEPARATOR);
                t.h("TimeTag", "当前亮的灯光 " + allLightsOn);
            }
            sb.append("openLights: ");
            sb.append(listCheckOpenLights);
            cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        }
        checkRobOrder(eVar, lightExamModel, allLightsOn2, listCheckOpenLights, lightExamCallback);
        if (this.isPlayingDeduct) {
            return null;
        }
        if (this.hasDeduct) {
            return bool2;
        }
        long j2 = 0;
        if (this.startJudgeTime == 0) {
            this.judgeFirstFrameLights = allLightsOn;
            return null;
        }
        if (!this.isPrintFirstFrame) {
            this.isPrintFirstFrame = true;
            cn.mucang.android.jiakaoyi.framework.log.f.o("评判的第一帧打开的灯光： " + this.judgeFirstFrameLights);
        }
        if (!isPauseJudge(lightExamModel)) {
            lightExamModel.updateOpenLightCount(eVar.d(), listCheckOpenLights);
        }
        checkTimeOUt(eVar, lightExamModel, allLightsOn, listCheckOpenLights, j, lightExamCallback);
        checkIsReset(this.lastModel, lightExamModel, listCheckOpenLights, lightExamCallback);
        if (!listCheckOpenLights.isEmpty()) {
            checkOpenOtherLight(listCheckOpenLights, this.judgeFirstFrameLights, lightExamModel, lightExamCallback);
        }
        if (checkNotAllowedAction(eVar, listCheckOpenLights, lightExamModel, lightExamCallback)) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("误操作返回");
            t.h("TimeTag", "误操作返回");
        }
        if (lightExamModel.isFinish) {
            if (this.isPlayingDeduct) {
                return null;
            }
            if (this.hasDeduct || this.isBreakJudge) {
                return bool2;
            }
            if (i != 0 && ((Boolean) this.config.p202104.value).booleanValue() && lightExamModel.isStart()) {
                iIntValue = ((Integer) this.config.p202105.value).intValue();
            } else if (((Boolean) this.config.p202125.value).booleanValue()) {
                iIntValue = ((Integer) this.config.p202113.value).intValue();
            } else {
                if (SystemClock.elapsedRealtime() - lightExamModel.startWaitTime >= j2) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("结束了");
                    sb2.append(!this.isFailure);
                    t.h("TimeTag", sb2.toString());
                    return Boolean.valueOf(!this.isFailure);
                }
                if (z && ((Boolean) this.config.p202111.value).booleanValue()) {
                    if (!isPauseJudge(lightExamModel)) {
                        lightExamModel.updateLightsState(eVar.d());
                    }
                    if (lightExamModel.lights.size() == 1 || lightExamModel.lights.get(0) != Light.Off) {
                        lightExamModel.isFinish = lightExamModel.isFinish();
                    } else {
                        lightExamModel.isFinish = allLightOff(eVar);
                    }
                }
            }
            j2 = iIntValue * 1000;
            if (SystemClock.elapsedRealtime() - lightExamModel.startWaitTime >= j2) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("结束了");
                sb3.append(!this.isFailure);
                t.h("TimeTag", sb3.toString());
                return Boolean.valueOf(!this.isFailure);
            }
            if (z) {
                if (!isPauseJudge(lightExamModel)) {
                    lightExamModel.updateLightsState(eVar.d());
                }
                if (lightExamModel.lights.size() == 1) {
                    lightExamModel.isFinish = lightExamModel.isFinish();
                } else {
                    lightExamModel.isFinish = lightExamModel.isFinish();
                }
            }
        } else {
            if (z && !((Boolean) this.config.p202111.value).booleanValue() && lightExamModel.tag == 4) {
                lightExamModel.isFinish = true;
                lightExamModel.startWaitTime = SystemClock.elapsedRealtime();
                return bool;
            }
            if (isPauseJudge(lightExamModel)) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("needPlayDeduct=" + this.needPlayDeduct + ";isPlayingDeduct=" + this.isPlayingDeduct + " ;model.isFinish=false");
            } else {
                lightExamModel.updateLightsState(eVar.d());
            }
            checkWrongOrder(lightExamModel, lightExamCallback);
            lightExamModel.calculateOrder();
            if (this.playEndTime == -1) {
                return null;
            }
            checkSpecialLightTime(eVar, lightExamModel, lightExamCallback);
            if (((Integer) this.config.p202147.value).intValue() != 0 && !listCheckOpenLights.isEmpty()) {
                checkFlashLightAction(eVar, listCheckOpenLights, lightExamModel, lightExamCallback);
            }
            if (this.isPlayingDeduct) {
                return null;
            }
            if (z && ((Boolean) this.config.p202127.value).booleanValue() && lightExamModel.isOffLight() && lightExamModel.isFinish()) {
                lightExamModel.isFinish = true;
                lightExamModel.startWaitTime = SystemClock.elapsedRealtime();
                return bool;
            }
            if (!this.isPlaying && checkLightRightFinish(eVar, lightExamModel, allLightsOn, listCheckOpenLights, j)) {
                t.h("TimeTag", "做对了 ");
                if (!((Boolean) this.config.p202120.value).booleanValue() && (listCheckOtherLightOn2 = checkOtherLightOn(allLightsOn, lightExamModel)) != null && listCheckOtherLightOn2.size() > 0) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("开启了不应该开的灯光1 " + listCheckOtherLightOn2);
                    t.h("TimeTag", "开启了不应该开的灯光1 " + listCheckOtherLightOn2);
                    lightExamModelDeduct(lightExamModel, lightExamModel.deductId, lightExamCallback);
                }
                lightExamModel.isFinish = true;
                lightExamModel.startWaitTime = SystemClock.elapsedRealtime();
                this.lastModel = lightExamModel;
            } else if (this.playEndTime > 0 && SystemClock.elapsedRealtime() - this.playEndTime > j) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("超时还没对 isFailure " + this.isFailure);
                t.h("TimeTag", "超时还没对 isFailure " + this.isFailure);
                if (!((Boolean) this.config.p202120.value).booleanValue() && (listCheckOtherLightOn = checkOtherLightOn(allLightsOn, lightExamModel)) != null && listCheckOtherLightOn.size() > 0) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("开启了不应该开的灯光3 " + listCheckOtherLightOn);
                    t.h("TimeTag", "开启了不应该开的灯光3 " + listCheckOtherLightOn);
                    lightExamModelDeduct(lightExamModel, lightExamModel.deductId, lightExamCallback);
                }
                lightExamModel.isFinish = true;
                lightExamModel.startWaitTime = SystemClock.elapsedRealtime();
                this.lastModel = lightExamModel;
            }
        }
        if (this.isBreakJudge) {
            return bool2;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void lightExamModelDeduct(LightExamModel lightExamModel, int i, LightExam.LightExamCallback lightExamCallback) {
        cn.mucang.android.jiakaoyi.framework.h.c<Boolean> cVar;
        cn.mucang.android.jiakaoyi.framework.h.c<Boolean> cVar2;
        int i2 = lightExamModel.deductId;
        Deduct deduct = i == i2 ? getDeduct(i2, lightExamModel) : getDeduct(i, lightExamModel);
        if (deduct.needAutoCheck() && !this.hasDeduct) {
            this.hasDeduct = true;
            if (i != lightExamModel.deductId) {
                lightExamCallback.onFailure(lightExamModel, getDeduct(i, lightExamModel));
                playingDeductVoice(lightExamModel, deduct);
                if (((Boolean) this.config.p202114.value).booleanValue() || (cVar = this.deductIsOver) == null || !cVar.get().booleanValue()) {
                    return;
                }
                lightExamModel.isFinish = true;
                lightExamModel.startWaitTime = SystemClock.elapsedRealtime();
                this.isBreakJudge = true;
                return;
            }
            if (this.isFailure) {
                return;
            }
            this.isFailure = true;
            lightExamCallback.onFailure(lightExamModel, deduct);
            playingDeductVoice(lightExamModel, deduct);
            if (((Boolean) this.config.p202114.value).booleanValue() || (cVar2 = this.deductIsOver) == null || !cVar2.get().booleanValue()) {
                return;
            }
            lightExamModel.isFinish = true;
            lightExamModel.startWaitTime = SystemClock.elapsedRealtime();
            this.isBreakJudge = true;
        }
    }

    private void loadCarLightState(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        this.lastCarLightState = eVar.d().x;
        this.judgeFirstFrameLights = getAllLightsOn(eVar.d().x);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void playVoice(String str, int i, String str2, boolean z) {
        this.isPlaying = true;
        int i2 = this.id;
        this.playStartTime = SystemClock.elapsedRealtime();
        TtsManager.H();
        cn.mucang.android.jiakaoyi.framework.log.f.o("startSpeaking text " + str + " ;voiceCode " + i + ";voiceKey " + str2);
        if (!((Boolean) this.config.p202138.value).booleanValue() && !((Boolean) this.config.p202112.value).booleanValue()) {
            this.startJudgeTime = this.playStartTime;
        }
        TtsManager.x(str, TtsGrade.ExamTip, new AnonymousClass1(i2, str, i, str2, z), i, str2, 2);
    }

    private void playingDeductVoice(LightExamModel lightExamModel, Deduct deduct) {
        if (!this.needPlayDeduct || this.isPlayingDeduct || n0.e(deduct.desc)) {
            return;
        }
        this.isPlayingDeduct = true;
        lightExamModel.isFinish = true;
        lightExamModel.startWaitTime = SystemClock.elapsedRealtime();
        TtsManager.v(deduct.desc, TtsGrade.ExamDeduct, new SimpleTtsListener() { // from class: cn.mucang.android.jiakaoyi.exam.k3.light.K3TopicHandler.2
            @Override // cn.mucang.android.jiakaoyi.framework.tts.SimpleTtsListener, cn.mucang.android.jiakaoyi.framework.tts.TtsListener
            public void onSpeakEnd() {
                K3TopicHandler.this.isPlayingDeduct = false;
            }
        }, deduct.code);
    }

    public boolean allLightOff(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        for (Light light : Light.values()) {
            if (eVar.d().j(light)) {
                return false;
            }
        }
        return true;
    }

    public Boolean handleTopic(cn.mucang.android.jiakaoyi.signal.c.e eVar, LightExamModel lightExamModel, int i, boolean z, long j, LightExam.LightExamCallback lightExamCallback) {
        this.id = lightExamModel.examProgramId;
        if (!this.isStart) {
            init(eVar, lightExamModel, j, lightExamCallback);
        }
        Boolean boolJudgeLight = judgeLight(eVar, lightExamModel, i, z, j, lightExamCallback);
        if (checkLightChange(eVar.d().x)) {
            this.lastCarLightState = eVar.d().x;
        }
        return boolJudgeLight;
    }

    public boolean isPause() {
        return this.isPlayingDeduct;
    }

    public boolean lastLightOn(cn.mucang.android.jiakaoyi.signal.c.e eVar, LightExamModel lightExamModel) {
        Light light;
        List<Light> list;
        int i = eVar.d().x;
        List<Light> list2 = lightExamModel.lights;
        if (list2 == null || list2.isEmpty()) {
            return true;
        }
        if (list2.size() == 2) {
            Light light2 = Light.FarLight;
            if (list2.contains(light2)) {
                Light light3 = Light.NearLight;
                if (list2.contains(light3) && (cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, light2.lightId) || cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, light3.lightId))) {
                    return true;
                }
            }
        }
        Light light4 = list2.get(list2.size() - 1);
        if (list2.size() == 1 && light4 == (light = Light.NearLight) && ((list = lightExamModel.notAllowed) == null || list.size() == 0)) {
            return cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, light.lightId) && !cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, Light.FarLight.lightId);
        }
        if (Light.FlashLight == light4) {
            return true;
        }
        if (light4 == Light.Off) {
            return allLightOff(eVar);
        }
        Light light5 = Light.RearFogLight;
        if (light4 == light5 || light4 == Light.FrontFogLight) {
            return cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, light5.lightId) || cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, Light.FrontFogLight.lightId);
        }
        Light light6 = Light.NearLight;
        if (light4 == light6) {
            return cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, light6.lightId) && !cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, Light.FarLight.lightId);
        }
        return cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, light4.lightId);
    }

    public void reset() {
        this.isStart = false;
        this.isFailure = false;
        this.hasDeduct = false;
        this.isPlayingDeduct = false;
        this.haveJudgeReset = false;
        this.id = -1;
        this.playEndTime = -1L;
        this.isPlaying = false;
        this.playStartTime = 0L;
        this.hasLeftLightTimeDeduct = false;
        this.hasRightLightTimeDeduct = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void init(cn.mucang.android.jiakaoyi.signal.c.e eVar, LightExamModel lightExamModel, long j, LightExam.LightExamCallback lightExamCallback) {
        int i;
        cn.mucang.android.jiakaoyi.framework.log.f.o(lightExamModel.desc + " : examTime = " + j + " ; " + lightExamModel.lights.toString() + " start " + lightExamModel.isStart + " end = " + lightExamModel.isEnd);
        t.h("TimeTag", lightExamModel.desc + " : examTime = " + j + " ; " + lightExamModel.lights.toString() + " start " + lightExamModel.isStart + " end = " + lightExamModel.isEnd);
        lightExamModel.reset();
        lightExamModel.setFlashConfigValue(((Integer) this.config.p202116.value).intValue());
        init();
        loadCarLightState(eVar);
        boolean zBooleanValue = ((Boolean) this.config.p202117.value).booleanValue();
        if (zBooleanValue && ((i = lightExamModel.playOrder) == 1 || i >= 20)) {
            zBooleanValue = ((Boolean) this.config.p202148.value).booleanValue();
        }
        playVoice(lightExamModel.desc, lightExamModel.voiceCode, l.b(lightExamModel.examProgramId), zBooleanValue);
        lightExamCallback.onStart(lightExamModel);
    }
}
