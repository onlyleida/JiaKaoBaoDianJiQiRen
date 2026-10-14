package cn.mucang.android.jiakaoyi.examk2.rule.qidianquyu;

import cn.mucang.android.jiakaoyi.engine.config.route.value.BooleanValue;
import cn.mucang.android.jiakaoyi.engine.config.route.value.StringValue;
import cn.mucang.android.jiakaoyi.examk2.c.a;
import cn.mucang.android.jiakaoyi.examk2.collision.QiDianChecker;
import cn.mucang.android.jiakaoyi.examk2.config.K2QiDianQuYuConfig;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.h;

/* JADX INFO: loaded from: classes2.dex */
public class K2_QiDianQuYu_Step1 extends a<K2QiDianQuYuConfig, h, QiDianChecker> {
    public K2_QiDianQuYu_Step1(QiDianChecker qiDianChecker, K2QiDianQuYuConfig k2QiDianQuYuConfig) {
        super(qiDianChecker, new BooleanValue(), new StringValue());
    }

    public String stepName() {
        return "起点区域";
    }
}
