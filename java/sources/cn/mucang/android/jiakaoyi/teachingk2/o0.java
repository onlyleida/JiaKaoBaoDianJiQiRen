package cn.mucang.android.jiakaoyi.teachingk2;

import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsListener;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.grade.GradeModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.voice.TeachVoiceModel;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f7432a = new b();

    private static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f7433a;
        private String b;
        private Reference<TtsListener> c;

        private b() {
        }

        static /* synthetic */ b a(b bVar, String str, String str2, TtsListener ttsListener) {
            bVar.b(str, str2, ttsListener);
            return bVar;
        }

        private b b(String str, String str2, TtsListener ttsListener) {
            this.f7433a = str;
            this.b = str2;
            this.c = new WeakReference(ttsListener);
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            TtsManager.H();
            String str = this.f7433a;
            String str2 = this.b;
            TtsGrade ttsGrade = TtsGrade.Teach;
            Reference<TtsListener> reference = this.c;
            TtsManager.y(str, str2, ttsGrade, reference == null ? null : reference.get());
        }
    }

    public static void a(VoiceModel voiceModel, GradeModel gradeModel) {
        b bVar = f7432a;
        cn.mucang.android.core.utils.u.e(bVar);
        String strB = b(voiceModel.tm.teachModelId, gradeModel, false);
        if (!voiceModel.sound || !gradeModel.getStopVoice()) {
            if (cn.mucang.android.core.utils.n0.g(voiceModel.getPlayText()) && gradeModel.getTeach()) {
                TtsManager.H();
                TtsManager.y(voiceModel.getPlayText(), strB, TtsGrade.Teach, null);
                return;
            }
            return;
        }
        n0.f();
        if (cn.mucang.android.core.utils.n0.g(voiceModel.getPlayText()) && gradeModel.getTeach()) {
            b.a(bVar, voiceModel.getPlayText(), strB, null);
            cn.mucang.android.core.utils.u.d(bVar, 300L);
        }
    }

    public static String b(String str, GradeModel gradeModel, boolean z) {
        Map<String, TeachVoiceModel> map = cn.mucang.android.jiakaoyi.teachingk2.res.n.b().f7604h;
        String str2 = null;
        if (map != null) {
            String strKey = TeachVoiceModel.key(str, z);
            TeachVoiceModel teachVoiceModel = map.get(strKey);
            if (teachVoiceModel == null) {
                cn.mucang.android.jiakaoyi.framework.log.f.o("voice url null, vid:" + str + " isError:" + z + " key:" + strKey);
                return null;
            }
            if (z) {
                str2 = teachVoiceModel.errorVoiceUrl;
            } else if (gradeModel.getLevel() == 10) {
                str2 = teachVoiceModel.lowVoiceUrl;
            } else if (gradeModel.getLevel() == 20) {
                str2 = teachVoiceModel.middleVoiceUrl;
            } else if (gradeModel.getLevel() == 30) {
                str2 = teachVoiceModel.highVoiceUrl;
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("voice vid:" + str + " url:" + str2);
        return str2;
    }
}
