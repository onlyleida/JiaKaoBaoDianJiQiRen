package com.iflytek.cloud.ui.b;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.iflytek.msc.MSC;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f12427a;
    private static final String b;
    private static HashMap<String, Drawable> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static HashMap<String, Drawable> f12428d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f12429e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f12430f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f12431g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f12432h;

    static {
        String str = MSC.isIflyVersion() ? "iflytek/" : "cmcc/";
        f12427a = str;
        b = "assets/" + str;
        c = new HashMap<>();
        f12428d = new HashMap<>();
        f12429e = 3;
        f12430f = 4;
        f12431g = 7;
        f12432h = 8;
    }

    public static int[] a() {
        return new int[]{-1579033, -9933198};
    }

    public static int[] b() {
        return new int[]{20, 16};
    }

    private static InputStream c(Context context, String str) throws IOException {
        return context.getAssets().open(str);
    }

    public static View a(Context context, String str, ViewGroup viewGroup) throws Exception {
        return ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(context.getAssets().openXmlResourceParser(b + str + ".xml"), viewGroup);
    }

    public static synchronized Drawable b(Context context, String str) throws Exception {
        Drawable drawableA;
        drawableA = c.get(str);
        if (drawableA == null) {
            drawableA = a(context, str);
            c.put(str, drawableA);
        }
        return drawableA;
    }

    private static Drawable a(Context context, String str) throws Exception {
        Drawable drawableCreateFromResourceStream;
        InputStream inputStreamC = c(context, f12427a + str + ".png");
        TypedValue typedValue = new TypedValue();
        typedValue.density = 240;
        if (Build.VERSION.SDK_INT > f12429e) {
            drawableCreateFromResourceStream = b.a(context.getResources(), typedValue, inputStreamC, str, (BitmapFactory.Options) null);
        } else {
            drawableCreateFromResourceStream = Drawable.createFromResourceStream(context.getResources(), typedValue, inputStreamC, str);
        }
        if (inputStreamC != null) {
            inputStreamC.close();
        }
        return drawableCreateFromResourceStream;
    }
}
