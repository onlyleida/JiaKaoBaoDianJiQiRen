package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import java.util.Locale;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class e {
    static void a(Activity activity) {
        Objects.requireNonNull(activity, "Argument 'activity' of type Activity (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        String strE = Utils.f().e("KEY_LOCALE");
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        if ("VALUE_FOLLOW_SYSTEM".equals(strE)) {
            Locale locale = Resources.getSystem().getConfiguration().locale;
            c(Utils.d(), locale);
            c(activity, locale);
            return;
        }
        String[] strArrSplit = strE.split("\\$");
        if (strArrSplit.length == 2) {
            Locale locale2 = new Locale(strArrSplit[0], strArrSplit[1]);
            c(Utils.d(), locale2);
            c(activity, locale2);
        } else {
            Log.e("LanguageUtils", "The string of " + strE + " is not in the correct format.");
        }
    }

    private static boolean b(CharSequence charSequence, CharSequence charSequence2) {
        int length;
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || (length = charSequence.length()) != charSequence2.length()) {
            return false;
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return charSequence.equals(charSequence2);
        }
        for (int i = 0; i < length; i++) {
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    private static void c(Context context, Locale locale) {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        Locale locale2 = configuration.locale;
        if (b(locale2.getLanguage(), locale.getLanguage()) && b(locale2.getCountry(), locale.getCountry())) {
            return;
        }
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLocale(locale);
            context.createConfigurationContext(configuration);
        } else {
            configuration.locale = locale;
        }
        resources.updateConfiguration(configuration, displayMetrics);
    }
}
