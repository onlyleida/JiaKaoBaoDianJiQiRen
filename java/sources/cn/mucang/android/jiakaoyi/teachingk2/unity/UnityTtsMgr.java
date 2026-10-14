package cn.mucang.android.jiakaoyi.teachingk2.unity;

import cn.mucang.android.jiakaoyi.framework.log.f;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.b1.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\b\u0010\t\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/UnityTtsMgr;", "", "()V", "TAG", "", "unityTtsEnable", "", "enableTts", "", "isTtsEnable", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class UnityTtsMgr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UnityTtsMgr f6361a = new UnityTtsMgr();
    private static volatile boolean b = true;

    private UnityTtsMgr() {
    }

    public static final void a(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("UnityTtsMgr");
        sb.append(": ");
        sb.append(z ? "开启" : "禁用");
        sb.append(" unity TTS");
        f.o(sb.toString());
        b = z;
    }

    public static final boolean b() {
        return b;
    }
}
