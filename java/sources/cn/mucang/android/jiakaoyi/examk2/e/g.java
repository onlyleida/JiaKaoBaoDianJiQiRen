package cn.mucang.android.jiakaoyi.examk2.e;

import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.examk2.collision.QiDianChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2QiDianQuYuConfig;

/* JADX INFO: loaded from: classes2.dex */
public class g extends f<cn.mucang.android.jiakaoyi.hpmap.a.a.g.h, K2QiDianQuYuConfig, QiDianChecker> {
    static BooleanValue j = new BooleanValue();
    static BooleanValue k = new BooleanValue();
    static StringValue l = new StringValue();
    static StringValue m = new StringValue();

    /* JADX WARN: Type inference failed for: r1v0, types: [T, java.lang.Boolean] */
    static {
        BooleanValue booleanValue = j;
        ?? r1 = Boolean.FALSE;
        booleanValue.value = r1;
        k.value = r1;
        l.value = "";
        m.value = "";
    }

    public g(K2QiDianQuYuConfig k2QiDianQuYuConfig, QiDianChecker qiDianChecker) {
        super(j, l, k, m, qiDianChecker);
    }
}
