package cn.mucang.android.jiakaoyi.signal.communicate.receive;

import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.autopilot.AutoPilotError;
import cn.mucang.android.jiakaoyi.signal.autopilot.AutoPilotMode;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class e extends l {

    public static class a extends m {
        public final Pos b;
        public final Pos c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final double f5415d;

        public a(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            this.f5428a = true;
            this.c = new Pos(rVar.k() * 0.1d, rVar.k() * 0.1d);
            this.b = new Pos(rVar.k() * 0.1d, rVar.k() * 0.1d);
            this.f5415d = ((double) rVar.l()) * 0.1d;
        }
    }

    public static class b extends m {
        public final AutoPilotError b;

        public b(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            this.f5428a = true;
            this.b = AutoPilotError.parse(rVar.e());
        }
    }

    public static class c extends m {
        public final AutoPilotMode b;

        public c(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
            super(i, rVar);
            this.f5428a = true;
            this.b = AutoPilotMode.parse(rVar.e());
        }
    }

    public e(int i, cn.mucang.android.jiakaoyi.signal.communicate.r rVar) {
        super(i, rVar);
        byte bE = rVar.e();
        if (bE == -2) {
            Tiger.h(new a(i, rVar));
        } else if (bE == 1) {
            Tiger.h(new c(i, rVar));
        } else {
            if (bE != 2) {
                return;
            }
            Tiger.h(new b(i, rVar));
        }
    }
}
