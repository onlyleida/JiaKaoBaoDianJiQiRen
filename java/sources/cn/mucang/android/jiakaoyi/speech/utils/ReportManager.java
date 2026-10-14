package cn.mucang.android.jiakaoyi.speech.utils;

import android.os.Environment;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.m;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.speech.R;
import cn.mucang.android.jiakaoyi.speech.semantic.SemanticResult;
import com.iflytek.cloud.SpeechUtility;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.k;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.speech.utils.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J\u0006\u0010\b\u001a\u00020\u0006J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0006J\u0006\u0010\u000e\u001a\u00020\nJ\u0016\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/speech/utils/ReportManager;", "", "()V", "mSpeechApi", "Lcn/mucang/android/jiakaoyi/speech/semantic/SpeechApi;", "getAsrVoicePath", "", "getRootPath", "getWakePath", "reportInvokeRet", "", "reply", "Lcn/mucang/android/jiakaoyi/speech/semantic/SemanticResult;", "anwText", "reportWakeupTimes", "uploadAsrWav", "sessionId", SpeechUtility.TAG_RESOURCE_RESULT, "speech_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ReportManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ReportManager f5930a = new ReportManager();
    private static final cn.mucang.android.jiakaoyi.speech.semantic.e b = new cn.mucang.android.jiakaoyi.speech.semantic.e();

    private ReportManager() {
    }

    private final String b() {
        File externalFilesDir;
        String absolutePath = (!r.a("mounted", Environment.getExternalStorageState()) || (externalFilesDir = MucangConfig.getContext().getExternalFilesDir(null)) == null) ? "" : externalFilesDir.getAbsolutePath();
        return n0.e(absolutePath) ? MucangConfig.getContext().getFilesDir().getAbsolutePath() : absolutePath;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(String anwText, SemanticResult reply) {
        r.e(anwText, "$anwText");
        r.e(reply, "$reply");
        try {
            b.d(reply.getRecordId(), anwText, reply.getCommandId(), r.a(anwText, reply.getTip()) || r.a(anwText, k0.a(R.string.speech_key14)));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j() {
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m139constructorimpl(Boolean.valueOf(b.e()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m139constructorimpl(k.a(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(String sessionId, String result) throws Throwable {
        r.e(sessionId, "$sessionId");
        r.e(result, "$result");
        try {
            ReportManager reportManager = f5930a;
            File file = new File(reportManager.b(), "/msc/iat-" + System.currentTimeMillis() + ".wav");
            m.c(new File(reportManager.a()), file);
            new cn.mucang.android.jiakaoyi.speech.semantic.g().b(file, sessionId, result);
            file.delete();
        } catch (Exception e2) {
            t.d("ReportManager", e2.toString());
        }
    }

    public final String a() {
        String absolutePath = new File(b(), "/msc/iat.wav").getAbsolutePath();
        r.d(absolutePath, "File(getRootPath(), \"/msc/iat.wav\").absolutePath");
        return absolutePath;
    }

    public final String c() {
        String absolutePath = new File(b(), "/msc/ivw.wav").getAbsolutePath();
        r.d(absolutePath, "File(getRootPath(), \"/msc/ivw.wav\").absolutePath");
        return absolutePath;
    }

    public final void g(final SemanticResult reply, final String anwText) {
        r.e(reply, "reply");
        r.e(anwText, "anwText");
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.utils.a
            @Override // java.lang.Runnable
            public final void run() {
                ReportManager.h(anwText, reply);
            }
        });
    }

    public final void i() {
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.utils.b
            @Override // java.lang.Runnable
            public final void run() {
                ReportManager.j();
            }
        });
    }

    public final void k(final String sessionId, final String result) {
        r.e(sessionId, "sessionId");
        r.e(result, "result");
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.speech.utils.c
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                ReportManager.l(sessionId, result);
            }
        });
    }
}
