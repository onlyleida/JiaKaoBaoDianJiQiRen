package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class MicWaveRadarSignal implements Serializable {
    public final MicWaveTarget[] targets;

    private static class MicWaveTarget implements Serializable {
        public int horDis;
        public int horSpeed;
        public int index;
        public int rcs;
        public int verDis;
        public int verSpeed;

        private MicWaveTarget() {
        }

        public String toString() {
            return "MicWaveTarget{index=" + this.index + ", verDis=" + this.verDis + ", horDis=" + this.horDis + ", verSpeed=" + this.verSpeed + ", horSpeed=" + this.horSpeed + ", rcs=" + this.rcs + '}';
        }
    }

    public MicWaveRadarSignal() {
        this.targets = new MicWaveTarget[]{new MicWaveTarget(), new MicWaveTarget(), new MicWaveTarget(), new MicWaveTarget()};
    }

    public static MicWaveRadarSignal from(cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        MicWaveRadarSignal micWaveRadarSignal = new MicWaveRadarSignal();
        int i = 0;
        while (true) {
            MicWaveTarget[] micWaveTargetArr = micWaveRadarSignal.targets;
            if (i >= micWaveTargetArr.length) {
                return micWaveRadarSignal;
            }
            MicWaveTarget micWaveTarget = micWaveTargetArr[i];
            micWaveTarget.index = rVar.o();
            micWaveTarget.verDis = rVar.l();
            micWaveTarget.horDis = rVar.l();
            micWaveTarget.verSpeed = rVar.l();
            micWaveTarget.horSpeed = rVar.l();
            micWaveTarget.rcs = (rVar.o() / 2) - 64;
            i++;
        }
    }

    public String toString() {
        return "MicWaveRadarSignal{targets=" + Arrays.toString(this.targets) + '}';
    }
}
