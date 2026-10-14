package cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior;

import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.c.f.a;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl.BowBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl.FlameBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl.GearBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl.IgnitionBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl.ObserveBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl.SitBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl.SpeedBehaviorCheck;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.behavior.impl.StartBehaviorCheck;
import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.behavior.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\u000bH\u0007J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b0\u0007j\b\u0012\u0004\u0012\u00020\b`\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehaviorManager;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "checkList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;", SpeechUtility.TAG_RESOURCE_RESULT, "Ljava/util/HashSet;", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;", "Lkotlin/collections/HashSet;", "check", "", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "onSignalChanged", "startStep", "stopStep", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TrainBehaviorManager implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TrainBehaviorManager f8378a = new TrainBehaviorManager();
    private static final List<BaseBehaviorCheck> b;
    private static final HashSet<TrainBehavior> c;

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        c = new HashSet<>();
        arrayList.add(new SpeedBehaviorCheck());
        arrayList.add(new GearBehaviorCheck());
        arrayList.add(new FlameBehaviorCheck());
        arrayList.add(new StartBehaviorCheck());
        arrayList.add(new IgnitionBehaviorCheck());
        arrayList.add(new BowBehaviorCheck());
        arrayList.add(new SitBehaviorCheck());
        arrayList.add(new ObserveBehaviorCheck());
    }

    private TrainBehaviorManager() {
    }

    private final void a(e eVar) {
        Iterator<T> it = b.iterator();
        while (it.hasNext()) {
            TrainBehavior trainBehaviorC = ((BaseBehaviorCheck) it.next()).c(eVar);
            if (trainBehaviorC != null) {
                c.add(trainBehaviorC);
                w.a(trainBehaviorC.getCode());
            }
        }
    }

    public static final void b() {
        c.clear();
        d.m.b(f8378a);
    }

    public static final String c() {
        Object next;
        d.m.n(f8378a);
        Iterator<T> it = b.iterator();
        while (it.hasNext()) {
            TrainBehavior trainBehaviorD = ((BaseBehaviorCheck) it.next()).d();
            if (trainBehaviorD != null) {
                c.add(trainBehaviorD);
                w.a(trainBehaviorD.getCode());
            }
        }
        HashSet<TrainBehavior> hashSet = c;
        if (hashSet.isEmpty()) {
            return null;
        }
        Iterator it2 = CollectionsKt___CollectionsKt.M0(hashSet).iterator();
        if (it2.hasNext()) {
            next = it2.next();
            if (it2.hasNext()) {
                int code = ((TrainBehavior) next).getCode();
                do {
                    Object next2 = it2.next();
                    int code2 = ((TrainBehavior) next2).getCode();
                    if (code > code2) {
                        next = next2;
                        code = code2;
                    }
                } while (it2.hasNext());
            }
        } else {
            next = null;
        }
        TrainBehavior trainBehavior = (TrainBehavior) next;
        if (trainBehavior == null) {
            return null;
        }
        return trainBehavior.getDesc();
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        a(signalGetter);
    }
}
