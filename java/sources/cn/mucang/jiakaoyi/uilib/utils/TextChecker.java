package cn.mucang.jiakaoyi.uilib.utils;

import cn.mucang.android.core.utils.u;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.s.n, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u001a\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u0006H\u0007¨\u0006\n"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/utils/TextChecker;", "", "()V", "checkMobile", "", "mobile", "", "checkName", "str", "pre", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TextChecker {
    public static final boolean a(String str) {
        return Pattern.compile("^((13[0-9])|(14[5-7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|(19[3,5,8,9])|166|(147))\\d{8}$", 2).matcher(str).matches();
    }

    public static final boolean b(String str, String pre) {
        r.e(str, "str");
        r.e(pre, "pre");
        if (StringsKt__StringsKt.J0(str).toString().length() < 3) {
            u.h(r.m(pre, "请输入最少三个字"));
            return false;
        }
        boolean zMatches = Pattern.matches("^[a-zA-Z0-9\\u4e00-\\u9fa5]+$", str);
        if (!zMatches) {
            u.h(r.m(pre, "仅支持汉字、字母和数字"));
        }
        return zMatches;
    }

    public static /* synthetic */ boolean c(String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return b(str, str2);
    }
}
