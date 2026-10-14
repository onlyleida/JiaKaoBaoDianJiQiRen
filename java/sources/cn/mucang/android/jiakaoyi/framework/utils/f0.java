package cn.mucang.android.jiakaoyi.framework.utils;

import android.content.Context;
import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.framework.consts.Language;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class f0 {
    static {
        Language language = Language.CHINESE;
    }

    public static Context a(Context context) {
        return context;
    }

    public static Language b() {
        return Language.CHINESE;
    }

    public static boolean c() {
        return false;
    }

    public static boolean d() {
        return false;
    }

    public static boolean e() {
        return false;
    }

    public static boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return Pattern.compile("[\\u0600-\\u06FF]+").matcher(str).find();
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static void g(Context context, Language language) {
    }
}
