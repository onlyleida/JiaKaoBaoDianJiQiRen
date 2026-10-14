package cn.mucang.jiakaoyi.uilib.utils;

import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¨\u0006\u0006"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/VoiceTextUtil;", "", "()V", "replacePauseChar", "", "inputStr", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class VoiceTextUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final VoiceTextUtil f9586a = new VoiceTextUtil();

    private VoiceTextUtil() {
    }

    public final String a(String str) {
        String strReplaceAll = Pattern.compile("\\[p[0-9]+]").matcher(str).replaceAll("");
        r.d(strReplaceAll, "compile(\"\\\\[p[0-9]+]\").m…(inputStr).replaceAll(\"\")");
        return strReplaceAll;
    }
}
