package f.a.a.f;

import android.content.Context;
import cn.mucang.android.core.api.url.BasicParamsBuilder;
import cn.mucang.android.core.api.url.c;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.framework.core.R;
import f.a.a.a.activity.h;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f14544a;
    public static String b;

    static {
        f14544a = MucangConfig.getContext().getString(R.string.core__user_agreement_url);
        b = MucangConfig.getContext().getString(R.string.core__privacy_agreement_url);
        BasicParamsBuilder basicParamsBuilderE = BasicParamsBuilder.e();
        basicParamsBuilderE.h();
        Map<String, String> mapD = basicParamsBuilderE.d();
        f14544a = c.d(f14544a, mapD);
        b = c.d(b, mapD);
    }

    public static void a(Context context) {
        h.e(f14544a);
    }

    public static void b(Context context) {
        h.e(b);
    }
}
