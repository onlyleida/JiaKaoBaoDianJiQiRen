package cn.mucang.android.jiakaoyi.framework.utils;

import android.content.Context;
import android.graphics.Typeface;
import cn.mucang.android.jiakaoyi.framework.R;
import java.lang.reflect.Field;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap<String, Typeface> f3652a = new HashMap<>();

    public static Typeface a(Context context, String str) {
        HashMap<String, Typeface> map = f3652a;
        Typeface typeface = map.get(str);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceCreateFromAsset = Typeface.createFromAsset(context.getAssets(), str);
        map.put(str, typefaceCreateFromAsset);
        return typefaceCreateFromAsset;
    }

    public static void b(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (f0.d()) {
            try {
                context.setTheme(R.style.jiakaoyi_font_theme);
                Field declaredField = Typeface.class.getDeclaredField("SERIF");
                declaredField.setAccessible(true);
                declaredField.set(null, a(context, "fonts/ALKATIP_Basma_Tom.ttf"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        cn.mucang.android.core.utils.t.d("FontUtils", "cost time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
    }
}
