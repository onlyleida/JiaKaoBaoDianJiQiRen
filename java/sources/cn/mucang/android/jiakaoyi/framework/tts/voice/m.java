package cn.mucang.android.jiakaoyi.framework.tts.voice;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.CrossModuleCaller;
import cn.mucang.android.jiakaoyi.framework.language.LanguageManager;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsSpeaker;
import cn.mucang.android.jiakaoyi.framework.utils.f0;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class m {
    protected volatile o b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.tts.play.f f3573d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.tts.play.e f3574e;
    private final cn.mucang.android.jiakaoyi.framework.tts.play.e i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final LinkedList<o> f3572a = new LinkedList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Vector<String> f3575f = new Vector<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected cn.mucang.android.jiakaoyi.framework.h.b<o> f3576g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected Set<cn.mucang.android.jiakaoyi.framework.h.b<o>> f3577h = new HashSet();

    class a implements cn.mucang.android.jiakaoyi.framework.tts.play.e {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void f() {
            if (m.this.f3574e != null) {
                if (m.this.f3572a.size() == 0) {
                    m.this.f3574e.a(null);
                } else {
                    m.this.f3574e.a(m.this.f3572a.getFirst());
                }
            }
            m.this.u();
        }

        static /* synthetic */ void g(o oVar) {
            TtsListener ttsListener = oVar.f3584g;
            if (ttsListener != null) {
                ttsListener.onSpeakPaused();
            }
        }

        static /* synthetic */ void h(o oVar) {
            TtsListener ttsListener = oVar.f3584g;
            if (ttsListener != null) {
                ttsListener.onSpeakResumed();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void j(o oVar) {
            if (m.this.f3574e != null) {
                m.this.f3574e.d(oVar);
            }
        }

        static /* synthetic */ void k(o oVar) {
            TtsListener ttsListener = oVar.f3584g;
            if (ttsListener != null) {
                ttsListener.onSpeakBegin();
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void a(o oVar) {
            m.this.c = false;
            final TtsListener ttsListener = oVar.f3584g;
            if (ttsListener != null) {
                ttsListener.getClass();
                u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ttsListener.onSpeakEnd();
                    }
                });
            }
            o oVar2 = m.this.b;
            m.this.f3575f.remove(oVar.c);
            m.this.b = null;
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3565a.f();
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void b(final o oVar) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.c
                @Override // java.lang.Runnable
                public final void run() {
                    m.a.g(oVar);
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void c(final o oVar) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.f
                @Override // java.lang.Runnable
                public final void run() {
                    m.a.h(oVar);
                }
            });
        }

        @Override // cn.mucang.android.jiakaoyi.framework.tts.play.e
        public void d(final o oVar) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.g
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3567a.j(oVar);
                }
            });
            if (m.this.b == null) {
                return;
            }
            m.this.c = true;
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.d
                @Override // java.lang.Runnable
                public final void run() {
                    m.a.k(oVar);
                }
            });
        }
    }

    public m(int i, cn.mucang.android.jiakaoyi.framework.tts.play.e eVar) {
        a aVar = new a();
        this.i = aVar;
        this.f3574e = eVar;
        this.f3573d = new cn.mucang.android.jiakaoyi.framework.tts.play.f(aVar);
    }

    private void g(o oVar) {
        this.b = oVar;
        this.c = true;
        this.f3573d.g(oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(o oVar) {
        this.f3575f.remove(oVar.c);
        v(oVar);
    }

    private void p(o oVar) {
        Iterator<cn.mucang.android.jiakaoyi.framework.h.b<o>> it = this.f3577h.iterator();
        while (it.hasNext()) {
            it.next().callback(oVar);
        }
        cn.mucang.android.jiakaoyi.framework.h.b<o> bVar = this.f3576g;
        if (bVar != null) {
            bVar.callback(oVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        if (!u.b()) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3568a.u();
                }
            });
            return;
        }
        try {
            if (this.f3572a.isEmpty()) {
                if (i() || this.b != null) {
                    return;
                }
                p(null);
                return;
            }
            if (i()) {
                return;
            }
            o oVarPoll = this.f3572a.poll();
            if (oVarPoll == null) {
                u();
            } else if (n0.e(oVarPoll.c)) {
                u();
            } else {
                p(oVarPoll);
                g(oVarPoll);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            t.e("voice", "startLoop ", e2);
            this.c = false;
        }
    }

    public void d(cn.mucang.android.jiakaoyi.framework.h.b<o> bVar) {
        this.f3577h.add(bVar);
    }

    public TtsGrade e() {
        o oVar = this.b;
        if (oVar != null) {
            return oVar.f3583f;
        }
        return null;
    }

    public String f() {
        o oVar = this.b;
        if (oVar != null) {
            return oVar.c;
        }
        return null;
    }

    public boolean h() {
        return !this.f3572a.isEmpty();
    }

    public boolean i() {
        return this.f3573d.e() || this.c;
    }

    public boolean j(String str) {
        return this.f3575f.contains(str);
    }

    public void q() {
        if (!u.b()) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3571a.q();
                }
            });
        } else {
            w();
            this.f3573d.c();
        }
    }

    public void r(cn.mucang.android.jiakaoyi.framework.h.b<o> bVar) {
        this.f3577h.remove(bVar);
    }

    public void s(cn.mucang.android.jiakaoyi.framework.h.b<o> bVar) {
        this.f3576g = bVar;
    }

    public void t(float f2) {
        this.f3573d.f(f2);
    }

    public void v(final o oVar) {
        if (oVar == null) {
            return;
        }
        if (n0.e(oVar.c) && n0.e(oVar.b)) {
            return;
        }
        this.f3575f.add(oVar.c);
        if (!u.b()) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3570a.m(oVar);
                }
            });
            return;
        }
        if ((MucangConfig.getContext() instanceof CrossModuleCaller) && !((CrossModuleCaller) MucangConfig.getContext()).n() && oVar.f3583f != TtsGrade.VoiceRobot) {
            TtsListener ttsListener = oVar.f3584g;
            if (ttsListener != null) {
                ttsListener.getClass();
                u.f(new b(ttsListener));
            }
            this.f3575f.remove(oVar.c);
            cn.mucang.android.jiakaoyi.framework.log.f.o("当前在监听语音输入，直接返回，" + oVar.c);
            return;
        }
        LanguageManager.b(oVar);
        if (f0.f(oVar.c)) {
            oVar.m = TtsSpeaker.Padiguli;
        }
        o oVar2 = this.b;
        cn.mucang.android.jiakaoyi.framework.log.f.o(" currentTask " + oVar.c + "; ttsGrade " + oVar.f3583f);
        if (oVar2 == null) {
            this.f3572a.addLast(oVar);
        } else {
            TtsGrade ttsGrade = oVar2.f3583f;
            TtsGrade ttsGrade2 = TtsGrade.SynthVoice;
            if (ttsGrade == ttsGrade2 && oVar.f3583f != ttsGrade2 && oVar.i) {
                n(false);
                this.f3572a.addFirst(oVar);
            } else {
                TtsGrade ttsGrade3 = oVar.f3583f;
                if ((ttsGrade3 == TtsGrade.TeachDeduct || ttsGrade3 == TtsGrade.ExamDeduct) && ttsGrade.getGrade() >= oVar.f3583f.getGrade()) {
                    this.f3572a.addLast(oVar);
                } else {
                    if (oVar2.f3583f.getGrade() > oVar.f3583f.getGrade()) {
                        TtsListener ttsListener2 = oVar.f3584g;
                        if (ttsListener2 != null) {
                            ttsListener2.getClass();
                            u.f(new b(ttsListener2));
                        }
                        this.f3575f.remove(oVar.c);
                        return;
                    }
                    w();
                    this.f3575f.add(oVar.c);
                    this.f3572a.addLast(oVar);
                }
            }
        }
        u();
    }

    public void w() {
        n(true);
    }

    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public void o(final boolean z) {
        if (!u.b()) {
            u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.voice.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3569a.o(z);
                }
            });
            return;
        }
        this.b = null;
        this.c = false;
        if (z) {
            Iterator<o> it = this.f3572a.iterator();
            while (it.hasNext()) {
                TtsListener ttsListener = it.next().f3584g;
                if (ttsListener != null) {
                    ttsListener.getClass();
                    u.f(new b(ttsListener));
                }
            }
            this.f3575f.clear();
            this.f3572a.clear();
        }
        this.f3573d.h();
    }
}
