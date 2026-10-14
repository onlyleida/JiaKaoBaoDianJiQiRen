package cn.mucang.android.jiakaoyi.framework.tts.play;

import cn.mucang.android.account.AccountManager;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.models.SynthResultModel;
import cn.mucang.android.jiakaoyi.framework.tts.voice.n;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;
import cn.mucang.android.jiakaoyi.framework.utils.q;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile o f3536a;
    private volatile b b;
    private final e c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ExecutorService f3538e = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f3537d = 1.0f;

    /* JADX INFO: Access modifiers changed from: private */
    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final o f3539a;
        private cn.mucang.android.jiakaoyi.framework.tts.play.g.e b;
        private cn.mucang.android.jiakaoyi.framework.tts.play.g.d c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private cn.mucang.android.jiakaoyi.framework.tts.play.g.f f3540d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private volatile boolean f3541e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f3542f;

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void c(o oVar, Boolean bool) {
            this.c.j();
            this.c = null;
            cn.mucang.android.jiakaoyi.framework.log.f.o("aac播放失败:tts play" + oVar.f3582e);
            i(oVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void e(o oVar, Boolean bool) {
            this.b.e();
            this.b = null;
            i(oVar);
            cn.mucang.android.jiakaoyi.framework.log.f.o("pcm播放失败:tts play" + oVar.f3582e);
        }

        private boolean f() {
            final TtsListener ttsListener;
            boolean z = this.f3539a != f.this.f3536a || this.f3541e;
            if (z && (ttsListener = this.f3539a.f3584g) != null) {
                ttsListener.getClass();
                u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.tts.play.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ttsListener.onIntercept();
                    }
                });
            }
            return z;
        }

        private void g(String str, final o oVar, boolean z) {
            if (this.f3541e || !oVar.i) {
                return;
            }
            cn.mucang.android.jiakaoyi.framework.tts.play.g.d dVar = new cn.mucang.android.jiakaoyi.framework.tts.play.g.d(f.this.c, oVar, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.framework.tts.play.c
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    this.f3534a.c(oVar, (Boolean) obj);
                }
            });
            this.c = dVar;
            dVar.k(this.f3542f);
            this.c.i(str);
            if (oVar.j == 2) {
            }
        }

        private void h(String str, final o oVar) {
            if (this.f3541e || !oVar.i) {
                return;
            }
            cn.mucang.android.jiakaoyi.framework.tts.play.g.e eVar = new cn.mucang.android.jiakaoyi.framework.tts.play.g.e(f.this.c, oVar, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.framework.tts.play.d
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    this.f3535a.e(oVar, (Boolean) obj);
                }
            });
            this.b = eVar;
            eVar.f(this.f3542f);
            this.b.d(str);
        }

        private void i(o oVar) {
            cn.mucang.android.jiakaoyi.framework.tts.play.g.f fVar = this.f3540d;
            if (fVar != null) {
                fVar.f();
            }
            if (this.f3541e) {
                return;
            }
            cn.mucang.android.jiakaoyi.framework.tts.play.g.f fVar2 = new cn.mucang.android.jiakaoyi.framework.tts.play.g.f(f.this.c, oVar);
            this.f3540d = fVar2;
            fVar2.e(oVar);
        }

        public boolean a() {
            cn.mucang.android.jiakaoyi.framework.tts.play.g.e eVar = this.b;
            if (eVar != null) {
                return eVar.b() && !this.f3541e;
            }
            cn.mucang.android.jiakaoyi.framework.tts.play.g.d dVar = this.c;
            if (dVar != null) {
                return dVar.a() && !this.f3541e;
            }
            cn.mucang.android.jiakaoyi.framework.tts.play.g.f fVar = this.f3540d;
            return (fVar == null || !fVar.d() || this.f3541e) ? false : true;
        }

        public void j(float f2) {
            this.f3542f = f2;
            cn.mucang.android.jiakaoyi.framework.tts.play.g.e eVar = this.b;
            if (eVar != null) {
                eVar.f(f2);
            }
            cn.mucang.android.jiakaoyi.framework.tts.play.g.d dVar = this.c;
            if (dVar != null) {
                dVar.k(f2);
            }
        }

        void k() {
            this.f3541e = true;
            cn.mucang.android.jiakaoyi.framework.tts.play.g.e eVar = this.b;
            if (eVar != null) {
                eVar.g();
            }
            cn.mucang.android.jiakaoyi.framework.tts.play.g.d dVar = this.c;
            if (dVar != null) {
                dVar.l();
            }
            cn.mucang.android.jiakaoyi.framework.tts.play.g.f fVar = this.f3540d;
            if (fVar != null) {
                fVar.f();
            }
            if (this.b == null && this.c == null && this.f3540d == null) {
                f.this.c.a(this.f3539a);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            File fileH;
            File fileH2;
            String strA = this.f3539a.a();
            try {
                o oVar = this.f3539a;
                if (oVar.f3585h == 1) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("tts TtsType " + this.f3539a.f3582e);
                    i(this.f3539a);
                    return;
                }
                if (n0.g(oVar.f3581d)) {
                    File fileJ = cn.mucang.android.jiakaoyi.framework.tts.i.b.j(this.f3539a.f3581d);
                    String absolutePath = fileJ.getAbsolutePath();
                    if (fileJ.exists()) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("tts " + this.f3539a.f3582e + "; voiceUrl=" + this.f3539a.f3581d);
                        g(absolutePath, this.f3539a, false);
                        return;
                    }
                    if (new n(this.f3539a.f3581d, absolutePath).c() != null) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("tts Download " + this.f3539a.f3582e + "; voiceUrl=" + this.f3539a.f3581d);
                        g(absolutePath, this.f3539a, false);
                        return;
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o("语音播放文件下载失败:" + this.f3539a.f3581d);
                }
                o oVar2 = this.f3539a;
                int i = oVar2.f3580a;
                String str = oVar2.b;
                if (i > 0) {
                    if (AccountManager.h().l() && (fileH2 = cn.mucang.android.jiakaoyi.framework.tts.i.b.h(String.valueOf(i))) != null && fileH2.exists()) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("tts userVoiceFile " + this.f3539a.f3582e + "; code =" + i);
                        g(fileH2.getPath(), this.f3539a, false);
                        return;
                    }
                    if (f()) {
                        return;
                    }
                    File fileA = cn.mucang.android.jiakaoyi.framework.tts.i.b.a(i, cn.mucang.android.jiakaoyi.framework.tts.i.c.d().c());
                    if (fileA != null && fileA.exists()) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("tts voicePackFile " + this.f3539a.f3582e + "; code =" + i);
                        g(fileA.getPath(), this.f3539a, false);
                        return;
                    }
                }
                if (f()) {
                    return;
                }
                if (n0.g(str) && AccountManager.h().l() && (fileH = cn.mucang.android.jiakaoyi.framework.tts.i.b.h(str)) != null && fileH.exists()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("tts " + this.f3539a.f3582e + "; userVoiceKey =" + str);
                    g(fileH.getPath(), this.f3539a, false);
                    return;
                }
                if (f()) {
                    return;
                }
                String strB = this.f3539a.b();
                File fileF = cn.mucang.android.jiakaoyi.framework.tts.i.b.f(strB);
                boolean z = q.b;
                if (z && !fileF.exists()) {
                    fileF = cn.mucang.android.jiakaoyi.framework.tts.i.b.f(strA);
                }
                if (this.f3539a.j != 2 && fileF.exists()) {
                    if (fileF.length() != 0) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("tts pcm " + this.f3539a.f3582e + "; fileKey =" + strA);
                        h(fileF.getPath(), this.f3539a);
                        return;
                    }
                    fileF.delete();
                }
                if (f()) {
                    return;
                }
                File fileD = cn.mucang.android.jiakaoyi.framework.tts.i.b.d(strB);
                if (z && !fileD.exists()) {
                    fileD = cn.mucang.android.jiakaoyi.framework.tts.i.b.d(strA);
                }
                if (fileD.exists()) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("tts mp3 " + this.f3539a.f3582e + "; fileKey =" + strA);
                    g(fileD.getPath(), this.f3539a, true);
                    return;
                }
                if (f()) {
                    return;
                }
                if (!z) {
                    File fileC = cn.mucang.android.jiakaoyi.framework.tts.i.b.c(strB);
                    if (!fileC.exists()) {
                        fileC = cn.mucang.android.jiakaoyi.framework.tts.i.b.c(strA);
                    }
                    if (fileC.exists()) {
                        cn.mucang.android.jiakaoyi.framework.log.f.o("tts aac " + this.f3539a.f3582e + "; fileKey =" + strA);
                        g(fileC.getPath(), this.f3539a, true);
                        return;
                    }
                }
                if (f()) {
                    return;
                }
                try {
                    SynthResultModel synthResultModelM = new cn.mucang.android.jiakaoyi.framework.tts.h.a().m(strA, this.f3539a);
                    if (synthResultModelM != null && n0.g(synthResultModelM.voiceUrl)) {
                        if (f()) {
                            return;
                        }
                        String str2 = synthResultModelM.voiceUrl;
                        if (!z || str2.endsWith(".mp3")) {
                            File fileA2 = cn.mucang.android.jiakaoyi.framework.tts.i.a.a(str2, strA);
                            if (f()) {
                                return;
                            }
                            if (fileA2 != null && fileA2.exists()) {
                                cn.mucang.android.jiakaoyi.framework.log.f.o("tts server aac " + this.f3539a.f3582e + "; fileKey =" + strA + "; url " + str2);
                                g(fileA2.getPath(), this.f3539a, true);
                                return;
                            }
                        }
                    }
                } catch (Throwable th) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("tts 服务器获取失败 " + strA);
                    t.d("MediaVoiceTag", "服务器获取失败，继续往下走，用tts播放:" + th.getMessage());
                }
                if (f()) {
                    return;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("tts " + this.f3539a.f3582e);
                i(this.f3539a);
            } catch (Throwable unused) {
                if (f()) {
                    return;
                }
                cn.mucang.android.jiakaoyi.framework.log.f.o("failed use tts " + this.f3539a.f3582e);
                i(this.f3539a);
            }
        }

        private b(o oVar) {
            this.f3539a = oVar;
            this.f3541e = false;
            this.f3542f = 1.0f;
        }
    }

    public f(e eVar) {
        this.c = eVar;
    }

    private void d(o oVar) {
        this.f3536a = oVar;
        if (this.b != null) {
            this.b.k();
        }
        this.b = new b(oVar);
        this.b.j(this.f3537d);
        this.f3538e.execute(this.b);
    }

    public void c() {
        h();
    }

    public boolean e() {
        b bVar = this.b;
        return bVar != null && bVar.a();
    }

    public void f(float f2) {
        this.f3537d = f2;
        b bVar = this.b;
        if (bVar != null) {
            bVar.j(f2);
        }
    }

    public void g(o oVar) {
        d(oVar);
    }

    public void h() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.k();
        }
        this.b = null;
    }
}
