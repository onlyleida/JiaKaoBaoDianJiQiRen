package cn.mucang.android.jiakaoyi.teachingk2.safe;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public class SafeFactorModel implements Serializable {
    public int[] coefficients;

    public SafeFactorModel() {
        int[] iArr = new int[8];
        this.coefficients = iArr;
        Arrays.fill(iArr, 100);
    }
}
