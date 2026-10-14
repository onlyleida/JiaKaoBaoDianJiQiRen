package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.helper;

import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.y;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller.z;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.c1.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/CarStateAndPositionStarter;", "", "()V", "carPosition", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/CarPositionSender;", "carState", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/controller/CarStateSender;", "isInit", "", TtmlNode.START, "", "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CarStateAndPositionStarter {
    private static boolean b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CarStateAndPositionStarter f8574a = new CarStateAndPositionStarter();
    private static final z c = new z();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final y f8575d = new y();

    private CarStateAndPositionStarter() {
    }

    public static final void a() {
        if (b) {
            return;
        }
        b = true;
        c.d();
        f8575d.d();
    }

    public static final void b() {
        c.e();
        f8575d.e();
        b = false;
    }
}
