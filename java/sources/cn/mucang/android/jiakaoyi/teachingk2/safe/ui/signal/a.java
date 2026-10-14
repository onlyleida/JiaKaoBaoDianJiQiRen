package cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal;

import android.graphics.Color;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import cn.mucang.android.jiakaoyi.teachingk2.provider.AbsTeachBaseProvider;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f7878d = Color.parseColor("#5ACBFF");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f7879e = Color.parseColor("#775ACBFF");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f7880a;
    public boolean b;
    public b[] c;

    public a(int i, boolean z) {
        this.f7880a = i;
        this.b = z;
        this.c = new b[i];
        int i2 = 0;
        while (true) {
            b[] bVarArr = this.c;
            if (i2 >= bVarArr.length) {
                return;
            }
            bVarArr[i2] = new b();
            i2++;
        }
    }

    public static a a() {
        List<a> radarRenderConfig = ((AbsTeachBaseProvider) DataProviderRegister.f3433a.a(AbsTeachBaseProvider.class, null)).getRadarRenderConfig();
        return radarRenderConfig.size() > 1 ? radarRenderConfig.get(1) : new a(10, false);
    }

    public static a b() {
        List<a> radarRenderConfig = ((AbsTeachBaseProvider) DataProviderRegister.f3433a.a(AbsTeachBaseProvider.class, null)).getRadarRenderConfig();
        return radarRenderConfig.size() > 0 ? radarRenderConfig.get(0) : new a(12, false);
    }

    public int c() {
        return 220 / this.f7880a;
    }

    public int d(int i) {
        int i2 = -(((i + 1) * c()) - 20);
        return !this.b ? i2 : i2 + 180;
    }
}
