package cn.mucang.android.jiakaoyi.framework.tts.play.g;

import cn.mucang.android.jiakaoyi.framework.tts.play.TtsSynchronizer;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.tts.play.e f3559a;
    private volatile o b;
    private volatile boolean c = false;

    class a implements cn.mucang.android.jiakaoyi.framework.tts.play.e {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void a(o oVar) {
            if (f.this.b == oVar) {
                f.this.c = false;
                f.this.f3559a.a(oVar);
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void b(o oVar) {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void c(o oVar) {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void d(o oVar) {
        }
    }

    public f(cn.mucang.android.jiakaoyi.framework.tts.play.e eVar, o oVar) {
        this.f3559a = eVar;
        this.b = oVar;
    }

    public boolean d() {
        return this.c;
    }

    public void e(o oVar) {
        this.c = true;
        TtsSynchronizer.f3521a.m(oVar, new a());
    }

    public void f() {
        TtsSynchronizer.f3521a.n(this.b);
    }
}
