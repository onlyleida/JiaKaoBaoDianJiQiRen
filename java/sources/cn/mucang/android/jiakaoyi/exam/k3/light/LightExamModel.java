package cn.mucang.android.jiakaoyi.exam.k3.light;

import android.os.SystemClock;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LightExamModel implements Serializable {
    public static final int MAX_ORDER = 20;
    public static final int TYPE_END = 20;
    public static final int TYPE_ORDINARY = 10;
    public static final int TYPE_START = 1;
    public int configId;
    public int deductId;
    public String desc;
    public int examProgramId;
    public long examSiteId;
    private int flashConfigValue;
    public String icon;
    public boolean isEnd;
    public boolean isFinish;
    public boolean isPlaying;
    public boolean isStart;
    private long lastFrameTime;
    private long leftTime;
    public Map<Light, Boolean> lightCache;
    private Map<Light, Integer> lightCount;
    public List<Light> lights;
    public boolean needOrder;
    public List<Light> notAllowed;
    private Map<Light, Integer> openLightCount;
    private int orderIndex;
    public int playOrder;
    private long rightTime;
    public String standard;
    public long startWaitTime;
    public int tag;
    public long turnLeftTime;
    public long turnRightTime;
    public int type;
    public int voiceCode;

    public LightExamModel() {
        this.playOrder = 0;
        this.startWaitTime = 0L;
        this.lightCache = new HashMap();
        this.lightCount = new HashMap();
        this.openLightCount = new HashMap();
        this.orderIndex = 0;
        this.leftTime = 0L;
        this.turnLeftTime = -1L;
        this.rightTime = 0L;
        this.turnRightTime = -1L;
        this.isPlaying = false;
        this.lastFrameTime = 0L;
        this.isStart = false;
        this.isEnd = false;
    }

    private boolean isFlashLight() {
        int iOpenLightCount = openLightCount(Light.FarLight);
        cn.mucang.android.jiakaoyi.framework.log.f.o("farLightCount " + iOpenLightCount + " ; flashConfigValue " + this.flashConfigValue);
        t.a("TimeTag", "farLightCount " + iOpenLightCount + " ; flashConfigValue " + this.flashConfigValue);
        return iOpenLightCount >= this.flashConfigValue + 1;
    }

    private boolean isLightOn(int i, Light light) {
        return cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, light.lightId);
    }

    private boolean lastIsLight(Light light) {
        Boolean bool = this.lightCache.get(light);
        return bool != null && bool.booleanValue();
    }

    private void setLight(cn.mucang.android.jiakaoyi.signal.c.e eVar, Light light) {
        boolean zJ = eVar.d().j(light);
        this.lightCache.put(light, Boolean.valueOf(zJ));
        if (zJ) {
            this.lightCount.put(light, 1);
        }
    }

    public boolean allLightOn() {
        Iterator<Light> it = this.lights.iterator();
        while (it.hasNext()) {
            if (!isLight(it.next())) {
                return false;
            }
        }
        return true;
    }

    public void calculateOrder() {
        if (this.needOrder && this.orderIndex <= this.lights.size() - 1) {
            Light light = this.lights.get(this.orderIndex);
            if (!isLight(light)) {
                this.lightCache.remove(light);
            } else if (light == Light.FlashLight || this.lightCache.containsKey(light)) {
                this.orderIndex++;
            }
        }
    }

    public boolean checkWrongOrderLight() {
        if (!this.needOrder) {
            return false;
        }
        for (int i = this.orderIndex + 1; i < this.lights.size(); i++) {
            Light light = this.lights.get(i);
            if (isLight(light)) {
                if (light == Light.FlashLight) {
                    Map<Light, Boolean> map = this.lightCache;
                    Light light2 = Light.NearLight;
                    map.remove(light2);
                    Map<Light, Boolean> map2 = this.lightCache;
                    Light light3 = Light.FarLight;
                    map2.remove(light3);
                    this.lightCount.remove(light2);
                    this.lightCount.remove(light3);
                } else {
                    this.lightCache.remove(light);
                    this.lightCount.remove(light);
                }
                return true;
            }
        }
        return false;
    }

    public LightExamModel copy() {
        LightExamModel lightExamModel = new LightExamModel();
        lightExamModel.configId = this.configId;
        lightExamModel.deductId = this.deductId;
        lightExamModel.desc = this.desc;
        lightExamModel.examProgramId = this.examProgramId;
        lightExamModel.examSiteId = this.examSiteId;
        lightExamModel.icon = this.icon;
        lightExamModel.lights = this.lights;
        lightExamModel.needOrder = this.needOrder;
        lightExamModel.notAllowed = this.notAllowed;
        lightExamModel.playOrder = this.playOrder;
        lightExamModel.voiceCode = this.voiceCode;
        lightExamModel.tag = this.tag;
        lightExamModel.type = this.type;
        lightExamModel.standard = this.standard;
        return lightExamModel;
    }

    public String getLog() {
        return "deductId:" + this.deductId + ",desc:" + this.desc + ",examProgramId:" + this.examProgramId + ",lights" + this.lights.toString() + ",notAllowed:" + this.notAllowed.toString() + ",playOrder:" + this.playOrder + ",standard:" + this.standard + ",tag:" + this.tag + ",type:" + this.type;
    }

    public int getShowImageRes() {
        List<Light> list = this.lights;
        Light light = Light.FrontFogLight;
        if (list.contains(light)) {
            return light.iconRes;
        }
        List<Light> list2 = this.lights;
        Light light2 = Light.WarningLight;
        if (list2.contains(light2)) {
            return light2.iconRes;
        }
        List<Light> list3 = this.lights;
        Light light3 = Light.WidthLight;
        if (list3.contains(light3)) {
            return light3.iconRes;
        }
        if (this.lights.contains(Light.FlashLight)) {
            return Light.FarLight.iconRes;
        }
        List<Light> list4 = this.lights;
        Light light4 = Light.FarLight;
        if (list4.contains(light4)) {
            return light4.iconRes;
        }
        int i = this.lights.get(0).iconRes;
        if (i != 0) {
            return i;
        }
        List<Light> list5 = this.lights;
        return list5.get(list5.size() - 1).iconRes;
    }

    public boolean isFinish() {
        if (this.needOrder) {
            return this.orderIndex > this.lights.size() - 1;
        }
        return allLightOn();
    }

    public boolean isLast() {
        return this.isEnd;
    }

    public boolean isLight(Light light) {
        if (light == Light.FlashLight) {
            return isFlashLight();
        }
        if (light == Light.Off) {
            return lastIsLight(light);
        }
        return lightCount(light) > 0;
    }

    public boolean isOffLight() {
        Iterator<Light> it = this.lights.iterator();
        while (it.hasNext()) {
            if (it.next() == Light.Off) {
                return true;
            }
        }
        return false;
    }

    public boolean isSpecialLight() {
        return this.tag == 1;
    }

    public boolean isStart() {
        return this.isStart;
    }

    public int lightCount(Light light) {
        Integer num = this.lightCount.get(light);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public void mapAllLights(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        for (Light light : Light.values()) {
            set(light, eVar.d().j(light));
        }
    }

    public void mapLight(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        for (Light light : this.lights) {
            if (light == Light.FlashLight) {
                setLight(eVar, Light.NearLight);
                setLight(eVar, Light.FarLight);
            } else {
                setLight(eVar, light);
            }
        }
    }

    public int openLightCount(Light light) {
        Integer num = this.openLightCount.get(light);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public void reset() {
        this.leftTime = 0L;
        this.turnLeftTime = -1L;
        this.rightTime = 0L;
        this.turnRightTime = -1L;
        this.orderIndex = 0;
        this.lightCount.clear();
        this.lightCache.clear();
        this.openLightCount.clear();
        this.lastFrameTime = 0L;
        this.startWaitTime = 0L;
        this.isFinish = false;
    }

    public void set(Light light, boolean z) {
        if (light == Light.Off) {
            this.lightCache.put(light, Boolean.valueOf(z));
            return;
        }
        if (z && !lastIsLight(light)) {
            this.lightCount.put(light, Integer.valueOf(lightCount(light) + 1));
        }
        Light light2 = Light.TurnLeftLight;
        if (light == light2 && z && this.leftTime == 0) {
            this.leftTime = SystemClock.elapsedRealtime();
        }
        if (light == light2 && !z) {
            this.leftTime = 0L;
        }
        if (light == light2 && z && this.leftTime > 0) {
            this.turnLeftTime = SystemClock.elapsedRealtime() - this.leftTime;
        }
        Light light3 = Light.TurnRightLight;
        if (light == light3 && z && this.rightTime == 0) {
            this.rightTime = SystemClock.elapsedRealtime();
        }
        if (light == light3 && !z) {
            this.rightTime = 0L;
        }
        if (light == light3 && z && this.rightTime > 0) {
            this.turnRightTime = SystemClock.elapsedRealtime() - this.rightTime;
        }
        this.lightCache.put(light, Boolean.valueOf(z));
    }

    public void setFlashConfigValue(int i) {
        this.flashConfigValue = i;
    }

    public String toString() {
        return "{ desc='" + this.desc + '}';
    }

    public void updateLightsState(CarModel carModel) {
        boolean z;
        int i = carModel.x;
        if (this.lastFrameTime == carModel.L) {
            return;
        }
        boolean z2 = this.lights.contains(Light.RearFogLight) && this.lights.contains(Light.FrontFogLight);
        boolean z3 = this.lights.contains(Light.FarLight) && this.lights.contains(Light.NearLight);
        boolean zContains = this.lights.contains(Light.FlashLight);
        for (Light light : this.lights) {
            if (light == Light.Off) {
                Light[] lightArrValues = Light.values();
                int length = lightArrValues.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = true;
                        break;
                    } else {
                        if (isLightOn(i, lightArrValues[i2])) {
                            z = false;
                            break;
                        }
                        i2++;
                    }
                }
                set(light, z);
            } else if (zContains && (light == Light.FlashLight || light == Light.NearLight || light == Light.FarLight)) {
                Light light2 = Light.NearLight;
                set(light2, isLightOn(i, light2));
                Light light3 = Light.FarLight;
                set(light3, isLightOn(i, light3));
            } else {
                Light light4 = Light.FrontFogLight;
                if (light != light4 && light != Light.RearFogLight) {
                    Light light5 = Light.NearLight;
                    if (light != light5 && light != Light.FarLight) {
                        set(light, isLightOn(i, light));
                    } else if (z3) {
                        set(light, isLightOn(i, light5) || isLightOn(i, Light.FarLight));
                    } else {
                        set(light, isLightOn(i, light));
                    }
                } else if (z2) {
                    set(light, isLightOn(i, light4) || isLightOn(i, Light.RearFogLight));
                } else {
                    set(light, isLightOn(i, light));
                }
            }
        }
        this.lastFrameTime = carModel.L;
    }

    public void updateOpenLightCount(CarModel carModel, List<Light> list) {
        if (this.lastFrameTime == carModel.L || list.isEmpty()) {
            return;
        }
        for (Light light : Light.values()) {
            if (list.contains(light)) {
                this.openLightCount.put(light, Integer.valueOf(openLightCount(light) + 1));
            }
        }
    }

    public LightExamModel(int i, int i2, String str, String str2, List<Light> list) {
        this(i, i2, str, str2, list, null);
    }

    public LightExamModel(int i, int i2, String str, String str2, List<Light> list, List<Light> list2) {
        this(i, i2, false, str, str2, list, list2);
    }

    public LightExamModel(int i, int i2, boolean z, String str, String str2, List<Light> list, List<Light> list2) {
        this.playOrder = 0;
        this.startWaitTime = 0L;
        this.lightCache = new HashMap();
        this.lightCount = new HashMap();
        this.openLightCount = new HashMap();
        this.orderIndex = 0;
        this.leftTime = 0L;
        this.turnLeftTime = -1L;
        this.rightTime = 0L;
        this.turnRightTime = -1L;
        this.isPlaying = false;
        this.lastFrameTime = 0L;
        this.isStart = false;
        this.isEnd = false;
        this.desc = str;
        this.examProgramId = i;
        this.deductId = i2;
        this.standard = str2;
        this.lights = list;
        this.notAllowed = list2;
        this.needOrder = z;
    }
}
