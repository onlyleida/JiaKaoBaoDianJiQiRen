package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.autopilot.AutoPilotOrder;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    public static class a extends m {
        public a(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            this.f5428a = true;
            rVar.e();
        }
    }

    public static class b extends m {
        public b(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            rVar.l();
            rVar.e();
            this.f5428a = true;
        }
    }

    public static class c extends m {
        public c(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            this.f5428a = true;
            rVar.e();
            rVar.e();
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.signal.communicate.receive.d$d, reason: collision with other inner class name */
    public static class C0124d extends m {
        public final int b;
        public final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f5414d;

        public C0124d(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            rVar.e();
            this.b = rVar.j();
            this.c = rVar.j();
            this.f5414d = rVar.j();
            this.f5428a = rVar.e() == 0;
        }
    }

    public static class e extends m {
        public e(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            this.f5428a = true;
            rVar.e();
            rVar.e();
        }
    }

    public static class f extends m {
        public f(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            this.f5428a = true;
            rVar.e();
        }
    }

    public static class g extends m {
        public g(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            this.f5428a = true;
            rVar.e();
            rVar.l();
        }
    }

    public d(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        byte bE = rVar.e();
        if (bE == AutoPilotOrder.Wheel.order) {
            LiveBus.d(g.class).l(new g(i, rVar));
            return;
        }
        if (bE == AutoPilotOrder.Gear.order) {
            LiveBus.d(b.class).l(new b(i, rVar));
            return;
        }
        if (bE == AutoPilotOrder.Path.order) {
            Tiger.h(new C0124d(i, rVar));
            return;
        }
        if (bE == AutoPilotOrder.State.order) {
            LiveBus.d(f.class).l(new f(i, rVar));
            return;
        }
        if (bE == AutoPilotOrder.Speed.order) {
            LiveBus.d(e.class).l(new e(i, rVar));
        } else if (bE == AutoPilotOrder.Motor.order) {
            LiveBus.d(c.class).l(new c(i, rVar));
        } else if (bE == AutoPilotOrder.Collect.order) {
            LiveBus.d(a.class).l(new a(i, rVar));
        }
    }
}
