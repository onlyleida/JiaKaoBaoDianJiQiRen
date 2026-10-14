package cn.mucang.android.jiakaoyi.framework.language;

import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.util.j;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.tts.TtsSpeaker;
import cn.mucang.android.jiakaoyi.framework.tts.voice.o;
import cn.mucang.android.jiakaoyi.framework.utils.r0;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.language.a, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u001c\u0010\u0011\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004H\u0007J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\tH\u0007J\u001c\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u0007\u001a&\u0012\f\u0012\n \n*\u0004\u0018\u00010\t0\t \n*\u0012\u0012\f\u0012\n \n*\u0004\u0018\u00010\t0\t\u0018\u00010\b0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/language/LanguageManager;", "", "()V", "languageMap", "Landroid/util/SparseArray;", "", "Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;", "typeCache", "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;", "", "kotlin.jvm.PlatformType", "getLanguage", "Lcn/mucang/android/jiakaoyi/framework/language/Language;", "initLanguage", "", "task", "Lcn/mucang/android/jiakaoyi/framework/tts/voice/VoiceTask;", "setData", "array", "setLanguage", "type", "textEquals", "", "text1", "", "text2", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LanguageManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LanguageManager f3458a = new LanguageManager();
    private static final r0<Integer> b = r0.f("keyLanguageType", Language.Chinese.getType());
    private static final SparseArray<List<LanguageModel>> c = new SparseArray<>();

    private LanguageManager() {
    }

    public static final Language a() {
        Language.Companion companion = Language.INSTANCE;
        Integer numB = b.b();
        Objects.requireNonNull(numB, "null cannot be cast to non-null type kotlin.Int");
        return companion.a(numB.intValue());
    }

    public static final void b(o task) {
        r.e(task, "task");
        LanguageManager languageManager = f3458a;
        if (a() == Language.Chinese) {
            return;
        }
        SparseArray<List<LanguageModel>> sparseArray = c;
        Integer numB = b.b();
        Objects.requireNonNull(numB, "null cannot be cast to non-null type kotlin.Int");
        List<LanguageModel> list = sparseArray.get(numB.intValue());
        LanguageModel languageModel = null;
        if (list != null) {
            for (LanguageModel languageModel2 : list) {
                if (!languageManager.e(task.c, languageModel2.getChinese()) && (task.f3580a <= 0 || languageModel2.getSourceId() != task.f3580a)) {
                    if (n0.g(task.b) && languageModel2.getSourceId() > 0) {
                        String str = task.b;
                        r.d(str, "task.key");
                        if (StringsKt__StringsKt.G(str, String.valueOf(languageModel2.getSourceId()), false, 2, null)) {
                        }
                    }
                }
                languageModel = languageModel2;
            }
        }
        if (languageModel == null) {
            return;
        }
        f.o("找到匹配的维语：" + task.f3580a + ',' + ((Object) task.b) + ',' + ((Object) task.c));
        task.n = languageModel.getSecondLanguage();
        task.m = TtsSpeaker.Padiguli;
    }

    public static final void c(SparseArray<List<LanguageModel>> array) {
        r.e(array, "array");
        SparseArray<List<LanguageModel>> sparseArray = c;
        sparseArray.clear();
        j.a(sparseArray, array);
    }

    public static final void d(int i) {
        b.j(Integer.valueOf(i));
    }

    private final boolean e(String str, String str2) {
        return (str == null || str2 == null || !TextUtils.equals(StringsKt__StringsKt.J0(str).toString(), StringsKt__StringsKt.J0(str2).toString())) ? false : true;
    }
}
