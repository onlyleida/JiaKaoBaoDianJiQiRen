package com.noober.background.common;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.core.a.a;
import com.google.android.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes6.dex */
public class ResourceUtils {
    public static int getColor(Context context, String str) {
        Resources resources = context.getResources();
        if (str.startsWith("#")) {
            return Color.parseColor(str);
        }
        int identifier = resources.getIdentifier(str, TtmlNode.ATTR_TTS_COLOR, context.getPackageName());
        if (identifier == 0) {
            return -1;
        }
        return a.c(context, identifier);
    }

    public static Drawable getDrawable(Context context, String str) {
        Resources resources = context.getResources();
        if (str.startsWith("#")) {
            return new ColorDrawable(Color.parseColor(str));
        }
        int identifier = resources.getIdentifier(str, "drawable", context.getPackageName());
        if (identifier == 0) {
            identifier = resources.getIdentifier(str, "mipmap", context.getPackageName());
        }
        if (identifier == 0) {
            identifier = resources.getIdentifier(str, TtmlNode.ATTR_TTS_COLOR, context.getPackageName());
        }
        if (identifier == 0) {
            return null;
        }
        return a.f(context, identifier);
    }
}
