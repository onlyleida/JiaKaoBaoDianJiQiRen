package cn.mucang.jiakaoyi.uilib.rule;

import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.rule.c0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/rule/K3StartVoice;", "", "()V", "startVoiceCodes", "", "", "getStartVoiceCodes", "()Ljava/util/List;", "isHideCode", "", "code", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3StartVoice {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final K3StartVoice f9515a = new K3StartVoice();
    private static final List<Integer> b = kotlin.collections.u.m(204100, 205100, 206100, 207100, 208100, 209100, 210100, 211100, 212100, 213100, 214100, 215100, 216100, 217100, 218100, 219100, 220100, 221100, 222100, 223100, 224100, 225100, 226100, 227100);

    private K3StartVoice() {
    }

    public final boolean a(int i) {
        return b.contains(Integer.valueOf(i));
    }
}
