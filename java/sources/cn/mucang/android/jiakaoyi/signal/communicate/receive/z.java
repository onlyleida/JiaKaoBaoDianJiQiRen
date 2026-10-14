package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class z extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f5454a;
    public final int[] b;
    public final int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f5455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MicWaveRadarSignal[] f5456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MicWaveRadarSignal f5457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final MicWaveRadarSignal[] f5458g;

    public z(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        this.f5454a = new int[12];
        this.b = new int[8];
        this.c = new int[0];
        this.f5455d = new int[0];
        int i2 = 0;
        while (true) {
            int[] iArr = this.f5454a;
            if (i2 >= iArr.length) {
                break;
            }
            iArr[i2] = rVar.l();
            i2++;
        }
        int i3 = 0;
        while (true) {
            int[] iArr2 = this.b;
            if (i3 >= iArr2.length) {
                break;
            }
            iArr2[i3] = rVar.l();
            i3++;
        }
        this.f5456e = new MicWaveRadarSignal[2];
        int i4 = 0;
        while (true) {
            MicWaveRadarSignal[] micWaveRadarSignalArr = this.f5456e;
            if (i4 >= micWaveRadarSignalArr.length) {
                this.f5457f = MicWaveRadarSignal.from(rVar);
                this.f5458g = new MicWaveRadarSignal[0];
                return;
            } else {
                micWaveRadarSignalArr[i4] = MicWaveRadarSignal.from(rVar);
                i4++;
            }
        }
    }

    public String toString() {
        return "ReceiveRadarSignal{frontRadarDis=" + Arrays.toString(this.f5454a) + ", backRadarDis=" + Arrays.toString(this.b) + ", frontMicWaveRadars=" + Arrays.toString(this.f5456e) + ", backMicWaveRadar=" + this.f5457f.toString() + '}';
    }

    public z(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar, boolean z) {
        super(i, rVar);
        int iE = rVar.e();
        int iE2 = rVar.e();
        int iE3 = rVar.e();
        int iE4 = rVar.e();
        int iE5 = rVar.e();
        int iE6 = rVar.e();
        int[] iArr = new int[iE];
        this.f5454a = iArr;
        int i2 = 0;
        if (iArr.length > 0) {
            int i3 = 0;
            while (true) {
                int[] iArr2 = this.f5454a;
                if (i3 >= iArr2.length) {
                    break;
                }
                iArr2[i3] = rVar.l();
                i3++;
            }
        }
        int[] iArr3 = new int[iE2];
        this.b = iArr3;
        if (iArr3.length > 0) {
            int i4 = 0;
            while (true) {
                int[] iArr4 = this.b;
                if (i4 >= iArr4.length) {
                    break;
                }
                iArr4[i4] = rVar.l();
                i4++;
            }
        }
        int[] iArr5 = new int[iE3];
        this.c = iArr5;
        if (iArr5.length > 0) {
            int i5 = 0;
            while (true) {
                int[] iArr6 = this.c;
                if (i5 >= iArr6.length) {
                    break;
                }
                iArr6[i5] = rVar.l();
                i5++;
            }
        }
        int[] iArr7 = new int[iE4];
        this.f5455d = iArr7;
        if (iArr7.length > 0) {
            int i6 = 0;
            while (true) {
                int[] iArr8 = this.f5455d;
                if (i6 >= iArr8.length) {
                    break;
                }
                iArr8[i6] = rVar.l();
                i6++;
            }
        }
        MicWaveRadarSignal[] micWaveRadarSignalArr = new MicWaveRadarSignal[iE5];
        this.f5456e = micWaveRadarSignalArr;
        if (micWaveRadarSignalArr.length > 0) {
            int i7 = 0;
            while (true) {
                MicWaveRadarSignal[] micWaveRadarSignalArr2 = this.f5456e;
                if (i7 >= micWaveRadarSignalArr2.length) {
                    break;
                }
                micWaveRadarSignalArr2[i7] = MicWaveRadarSignal.from(rVar);
                i7++;
            }
        }
        MicWaveRadarSignal[] micWaveRadarSignalArr3 = new MicWaveRadarSignal[iE6];
        this.f5458g = micWaveRadarSignalArr3;
        if (micWaveRadarSignalArr3.length > 0) {
            while (true) {
                MicWaveRadarSignal[] micWaveRadarSignalArr4 = this.f5458g;
                if (i2 >= micWaveRadarSignalArr4.length) {
                    break;
                }
                micWaveRadarSignalArr4[i2] = MicWaveRadarSignal.from(rVar);
                i2++;
            }
        }
        this.f5457f = new MicWaveRadarSignal();
    }
}
