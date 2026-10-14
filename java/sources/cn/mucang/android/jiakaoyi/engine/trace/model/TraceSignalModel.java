package cn.mucang.android.jiakaoyi.engine.trace.model;

import cn.mucang.android.jiakaoyi.engine.trace.storage.DataType;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;

/* JADX INFO: loaded from: classes2.dex */
public class TraceSignalModel extends TraceBaseModel {
    private static final int DATA_LENGTH = 13;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f3173d;

    public TraceSignalModel() {
        this.tp = DataType.Signal.typeId;
        this.f3173d = new int[13];
    }

    public static TraceSignalModel from(e eVar, float f2, TraceSignalModel traceSignalModel) {
        int[] iArr = new int[13];
        boolean z = false;
        iArr[0] = (int) eVar.d().b;
        iArr[1] = eVar.d().f5265a;
        iArr[2] = eVar.d().m.gear;
        iArr[3] = eVar.getCurrentPosition().f5282h;
        iArr[4] = eVar.d().r;
        iArr[5] = set(iArr[5], 0, eVar.d().f5266d);
        iArr[5] = set(iArr[5], 1, eVar.d().k);
        iArr[5] = set(iArr[5], 2, eVar.d().f5267e);
        iArr[5] = set(iArr[5], 3, eVar.d().f5268f);
        iArr[5] = set(iArr[5], 4, eVar.d().j);
        iArr[5] = set(iArr[5], 5, eVar.d().f5269g);
        iArr[5] = set(iArr[5], 6, eVar.d().l);
        iArr[5] = set(iArr[5], 7, eVar.d().i > 5);
        iArr[6] = set(iArr[6], 0, eVar.d().j(Light.TurnLeftLight));
        iArr[6] = set(iArr[6], 1, eVar.d().j(Light.TurnRightLight));
        iArr[6] = set(iArr[6], 2, eVar.d().j(Light.NearLight));
        iArr[6] = set(iArr[6], 3, eVar.d().j(Light.FarLight));
        iArr[6] = set(iArr[6], 4, eVar.d().j(Light.WarningLight));
        iArr[6] = set(iArr[6], 5, eVar.d().j(Light.RearFogLight));
        iArr[6] = set(iArr[6], 6, eVar.d().j(Light.FrontFogLight));
        iArr[6] = set(iArr[6], 7, eVar.d().j(Light.WidthLight));
        iArr[6] = set(iArr[6], 8, eVar.d().j(Light.ReturnLight));
        iArr[7] = eVar.d().H;
        iArr[8] = eVar.d().i;
        iArr[9] = eVar.d().I;
        iArr[10] = eVar.d().t.gear;
        iArr[11] = getRollWithPitch(eVar.d().U, eVar.d().T);
        iArr[12] = getRollWithPitch(eVar.d().X, eVar.d().W);
        int i = 0;
        while (true) {
            if (i >= 13) {
                z = true;
                break;
            }
            if (i == 1) {
                if (iArr[i] / 100 != traceSignalModel.f3173d[i] / 100) {
                    break;
                }
                i++;
            } else {
                if (iArr[i] != traceSignalModel.f3173d[i]) {
                    break;
                }
                i++;
            }
        }
        if (z) {
            return null;
        }
        traceSignalModel.f3173d = iArr;
        traceSignalModel.t = f2;
        return traceSignalModel;
    }

    private static int getRollWithPitch(float f2, float f3) {
        return (((short) ((((short) (f2 * 10.0f)) / 3) * 3)) << 16) | (((short) ((((short) (f3 * 10.0f)) / 3) * 3)) & 65535);
    }

    public static int set(int i, int i2, boolean z) {
        return z ? i | (1 << i2) : i & (~(1 << i2));
    }

    public void clear() {
        this.f3173d = new int[13];
    }
}
