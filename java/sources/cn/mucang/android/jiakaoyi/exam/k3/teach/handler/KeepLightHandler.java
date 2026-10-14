package cn.mucang.android.jiakaoyi.exam.k3.teach.handler;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.variable.KeepLightVariable;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class KeepLightHandler implements VariableHandler<KeepLightVariable> {
    private Light[] lights;
    private float startDistance;
    private long startTime;

    private boolean checkLight(KeepLightVariable keepLightVariable, e eVar, Light light) {
        if (light == Light.Off) {
            return allLightOff(eVar);
        }
        if (keepLightVariable.on) {
            return eVar.d().j(light);
        }
        return !eVar.d().j(light);
    }

    private boolean checkLights(KeepLightVariable keepLightVariable, e eVar) {
        for (Light light : this.lights) {
            if (checkLight(keepLightVariable, eVar, light)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002d  */
    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    private boolean checkResult(KeepLightVariable keepLightVariable, e eVar) {
        boolean z;
        boolean z2;
        if (keepLightVariable.time <= 0) {
            z = true;
        } else {
            if (this.startTime == 0) {
                this.startTime = eVar.d().L;
            }
            if (eVar.d().L - this.startTime > ((long) keepLightVariable.time) * 1000) {
                z = true;
            } else {
                z = false;
            }
        }
        if (keepLightVariable.distance <= 0) {
            z2 = true;
        } else {
            if (this.startDistance == BitmapDescriptorFactory.HUE_RED) {
                this.startDistance = eVar.d().C;
            }
            if (eVar.d().C - this.startDistance > keepLightVariable.distance) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        return z2 && z;
    }

    public boolean allLightOff(e eVar) {
        for (Light light : Light.values()) {
            if (eVar.d().j(light)) {
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.exam.k3.teach.VariableHandler
    public boolean isTrigger(KeepLightVariable keepLightVariable, e eVar, ExamProcessor examProcessor, b bVar) {
        if (this.lights == null) {
            this.lights = new Light[keepLightVariable.ids.length];
            int i = 0;
            while (true) {
                int[] iArr = keepLightVariable.ids;
                if (i >= iArr.length) {
                    break;
                }
                this.lights[i] = Light.findLightWithId(iArr[i]);
                i++;
            }
        }
        if (checkLights(keepLightVariable, eVar)) {
            return checkResult(keepLightVariable, eVar);
        }
        this.startTime = 0L;
        this.startDistance = BitmapDescriptorFactory.HUE_RED;
        return false;
    }
}
