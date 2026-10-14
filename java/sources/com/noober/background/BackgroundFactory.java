package com.noober.background;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.noober.background.drawable.DrawableFactory;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class BackgroundFactory implements LayoutInflater.Factory2 {
    private LayoutInflater.Factory mViewCreateFactory;
    private LayoutInflater.Factory2 mViewCreateFactory2;
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final Object[] mConstructorArgs = new Object[2];
    private static final Map<String, Constructor<? extends View>> sConstructorMap = new androidx.collection.a();
    private static final HashMap<String, HashMap<String, Method>> methodMap = new HashMap<>();

    static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f13632a;
        final /* synthetic */ Context b;

        a(Method method, Context context) {
            this.f13632a = method;
            this.b = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                this.f13632a.invoke(this.b, new Object[0]);
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
    }

    private static View createView(Context context, String str, String str2) throws InflateException {
        String str3;
        Map<String, Constructor<? extends View>> map = sConstructorMap;
        Constructor<? extends View> constructor = map.get(str);
        if (constructor == null) {
            try {
                ClassLoader classLoader = context.getClassLoader();
                if (str2 != null) {
                    str3 = str2 + str;
                } else {
                    str3 = str;
                }
                constructor = classLoader.loadClass(str3).asSubclass(View.class).getConstructor(sConstructorSignature);
                map.put(str, constructor);
            } catch (Exception unused) {
                Log.w("BackgroundLibrary", "cannot create 【" + str + "】 : ");
                return null;
            }
        }
        constructor.setAccessible(true);
        return constructor.newInstance(mConstructorArgs);
    }

    private static View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            try {
                Object[] objArr = mConstructorArgs;
                objArr[0] = context;
                objArr[1] = attributeSet;
                if (-1 != str.indexOf(46)) {
                    View viewCreateView = createView(context, str, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    return viewCreateView;
                }
                View viewCreateView2 = "View".equals(str) ? createView(context, str, "android.view.") : null;
                if (viewCreateView2 == null) {
                    viewCreateView2 = createView(context, str, "android.widget.");
                }
                if (viewCreateView2 == null) {
                    viewCreateView2 = createView(context, str, "android.webkit.");
                }
                objArr[0] = null;
                objArr[1] = null;
                return viewCreateView2;
            } catch (Exception unused) {
                Log.w("BackgroundLibrary", "cannot create 【" + str + "】 : ");
                Object[] objArr2 = mConstructorArgs;
                objArr2[0] = null;
                objArr2[1] = null;
                return null;
            }
        } catch (Throwable th) {
            Object[] objArr3 = mConstructorArgs;
            objArr3[0] = null;
            objArr3[1] = null;
            throw th;
        }
    }

    private static Method findDeclaredMethod(Class cls, String str) {
        Method declaredMethod = null;
        try {
            declaredMethod = cls.getDeclaredMethod(str, new Class[0]);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            return cls.getSuperclass() != null ? findDeclaredMethod(cls.getSuperclass(), str) : declaredMethod;
        }
    }

    private static Method findMethod(Class cls, String str) {
        try {
            return cls.getMethod(str, new Class[0]);
        } catch (NoSuchMethodException unused) {
            return findDeclaredMethod(cls, str);
        }
    }

    private static Method getMethod(Class cls, String str) {
        Method methodFindMethod;
        HashMap<String, HashMap<String, Method>> map = methodMap;
        HashMap<String, Method> map2 = map.get(cls.getCanonicalName());
        if (map2 != null) {
            methodFindMethod = map.get(cls.getCanonicalName()).get(str);
        } else {
            map2 = new HashMap<>();
            map.put(cls.getCanonicalName(), map2);
            methodFindMethod = null;
        }
        if (methodFindMethod == null && (methodFindMethod = findMethod(cls, str)) != null) {
            map2.put(str, methodFindMethod);
        }
        return methodFindMethod;
    }

    private static boolean hasStatus(int i, int i2) {
        return (i & i2) == i2;
    }

    private static void setBackground(Drawable drawable, View view, TypedArray typedArray) {
        int i = R.styleable.background_bl_stroke_width;
        if (typedArray.hasValue(i)) {
            int i2 = R.styleable.background_bl_stroke_position;
            if (typedArray.hasValue(i2)) {
                float dimension = typedArray.getDimension(i, BitmapDescriptorFactory.HUE_RED);
                int i3 = typedArray.getInt(i2, 0);
                float f2 = hasStatus(i3, 2) ? dimension : -dimension;
                float f3 = hasStatus(i3, 4) ? dimension : -dimension;
                float f4 = hasStatus(i3, 8) ? dimension : -dimension;
                if (!hasStatus(i3, 16)) {
                    dimension = -dimension;
                }
                LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable});
                layerDrawable.setLayerInset(0, (int) f2, (int) f3, (int) f4, (int) dimension);
                drawable = layerDrawable;
            }
        }
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    private static void setDrawable(Drawable drawable, View view, TypedArray typedArray, TypedArray typedArray2) {
        if (!(view instanceof TextView)) {
            setBackground(drawable, view, typedArray2);
            return;
        }
        int i = R.styleable.bl_other_bl_position;
        if (!typedArray.hasValue(i)) {
            setBackground(drawable, view, typedArray2);
            return;
        }
        if (typedArray.getInt(i, 0) == 1) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            ((TextView) view).setCompoundDrawables(drawable, null, null, null);
            return;
        }
        if (typedArray.getInt(i, 0) == 2) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            ((TextView) view).setCompoundDrawables(null, drawable, null, null);
        } else if (typedArray.getInt(i, 0) == 4) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            ((TextView) view).setCompoundDrawables(null, null, drawable, null);
        } else if (typedArray.getInt(i, 0) == 8) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
            ((TextView) view).setCompoundDrawables(null, null, null, drawable);
        }
    }

    public static View setViewBackground(Context context, AttributeSet attributeSet, View view) {
        return setViewBackground(null, context, attributeSet, view);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewOnCreateView = null;
        if (str.startsWith("com.noober.background.view")) {
            return null;
        }
        LayoutInflater.Factory2 factory2 = this.mViewCreateFactory2;
        if (factory2 != null) {
            View viewOnCreateView2 = factory2.onCreateView(str, context, attributeSet);
            viewOnCreateView = viewOnCreateView2 == null ? this.mViewCreateFactory2.onCreateView(null, str, context, attributeSet) : viewOnCreateView2;
        } else {
            LayoutInflater.Factory factory = this.mViewCreateFactory;
            if (factory != null) {
                viewOnCreateView = factory.onCreateView(str, context, attributeSet);
            }
        }
        return setViewBackground(str, context, attributeSet, viewOnCreateView);
    }

    public void setInterceptFactory(LayoutInflater.Factory factory) {
        this.mViewCreateFactory = factory;
    }

    public void setInterceptFactory2(LayoutInflater.Factory2 factory2) {
        this.mViewCreateFactory2 = factory2;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0206 A[Catch: Exception -> 0x0247, all -> 0x0249, TryCatch #1 {Exception -> 0x0247, blocks: (B:36:0x00c8, B:38:0x00ce, B:41:0x00d5, B:42:0x00dc, B:43:0x00dd, B:45:0x00e3, B:48:0x00ea, B:49:0x00f1, B:50:0x00f2, B:52:0x00f9, B:54:0x00fd, B:79:0x017d, B:81:0x0181, B:83:0x0187, B:89:0x01a6, B:91:0x01af, B:93:0x01b7, B:97:0x01c2, B:99:0x01d5, B:100:0x01fe, B:102:0x0206, B:104:0x0210, B:106:0x021e, B:84:0x0192, B:86:0x0196, B:88:0x019c, B:55:0x010c, B:57:0x0112, B:59:0x011e, B:61:0x0124, B:62:0x0135, B:64:0x013b, B:65:0x0143, B:68:0x014b, B:70:0x0151, B:71:0x0159, B:72:0x0162, B:74:0x0168, B:76:0x0178), top: B:128:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0210 A[Catch: Exception -> 0x0247, all -> 0x0249, TryCatch #1 {Exception -> 0x0247, blocks: (B:36:0x00c8, B:38:0x00ce, B:41:0x00d5, B:42:0x00dc, B:43:0x00dd, B:45:0x00e3, B:48:0x00ea, B:49:0x00f1, B:50:0x00f2, B:52:0x00f9, B:54:0x00fd, B:79:0x017d, B:81:0x0181, B:83:0x0187, B:89:0x01a6, B:91:0x01af, B:93:0x01b7, B:97:0x01c2, B:99:0x01d5, B:100:0x01fe, B:102:0x0206, B:104:0x0210, B:106:0x021e, B:84:0x0192, B:86:0x0196, B:88:0x019c, B:55:0x010c, B:57:0x0112, B:59:0x011e, B:61:0x0124, B:62:0x0135, B:64:0x013b, B:65:0x0143, B:68:0x014b, B:70:0x0151, B:71:0x0159, B:72:0x0162, B:74:0x0168, B:76:0x0178), top: B:128:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x021e A[Catch: Exception -> 0x0247, all -> 0x0249, TRY_LEAVE, TryCatch #1 {Exception -> 0x0247, blocks: (B:36:0x00c8, B:38:0x00ce, B:41:0x00d5, B:42:0x00dc, B:43:0x00dd, B:45:0x00e3, B:48:0x00ea, B:49:0x00f1, B:50:0x00f2, B:52:0x00f9, B:54:0x00fd, B:79:0x017d, B:81:0x0181, B:83:0x0187, B:89:0x01a6, B:91:0x01af, B:93:0x01b7, B:97:0x01c2, B:99:0x01d5, B:100:0x01fe, B:102:0x0206, B:104:0x0210, B:106:0x021e, B:84:0x0192, B:86:0x0196, B:88:0x019c, B:55:0x010c, B:57:0x0112, B:59:0x011e, B:61:0x0124, B:62:0x0135, B:64:0x013b, B:65:0x0143, B:68:0x014b, B:70:0x0151, B:71:0x0159, B:72:0x0162, B:74:0x0168, B:76:0x0178), top: B:128:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x0243  */
    /* JADX WARN: Code duplicated, block: B:81:0x0181 A[Catch: Exception -> 0x0247, all -> 0x0249, TryCatch #1 {Exception -> 0x0247, blocks: (B:36:0x00c8, B:38:0x00ce, B:41:0x00d5, B:42:0x00dc, B:43:0x00dd, B:45:0x00e3, B:48:0x00ea, B:49:0x00f1, B:50:0x00f2, B:52:0x00f9, B:54:0x00fd, B:79:0x017d, B:81:0x0181, B:83:0x0187, B:89:0x01a6, B:91:0x01af, B:93:0x01b7, B:97:0x01c2, B:99:0x01d5, B:100:0x01fe, B:102:0x0206, B:104:0x0210, B:106:0x021e, B:84:0x0192, B:86:0x0196, B:88:0x019c, B:55:0x010c, B:57:0x0112, B:59:0x011e, B:61:0x0124, B:62:0x0135, B:64:0x013b, B:65:0x0143, B:68:0x014b, B:70:0x0151, B:71:0x0159, B:72:0x0162, B:74:0x0168, B:76:0x0178), top: B:128:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0192 A[Catch: Exception -> 0x0247, all -> 0x0249, TryCatch #1 {Exception -> 0x0247, blocks: (B:36:0x00c8, B:38:0x00ce, B:41:0x00d5, B:42:0x00dc, B:43:0x00dd, B:45:0x00e3, B:48:0x00ea, B:49:0x00f1, B:50:0x00f2, B:52:0x00f9, B:54:0x00fd, B:79:0x017d, B:81:0x0181, B:83:0x0187, B:89:0x01a6, B:91:0x01af, B:93:0x01b7, B:97:0x01c2, B:99:0x01d5, B:100:0x01fe, B:102:0x0206, B:104:0x0210, B:106:0x021e, B:84:0x0192, B:86:0x0196, B:88:0x019c, B:55:0x010c, B:57:0x0112, B:59:0x011e, B:61:0x0124, B:62:0x0135, B:64:0x013b, B:65:0x0143, B:68:0x014b, B:70:0x0151, B:71:0x0159, B:72:0x0162, B:74:0x0168, B:76:0x0178), top: B:128:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0196 A[Catch: Exception -> 0x0247, all -> 0x0249, TryCatch #1 {Exception -> 0x0247, blocks: (B:36:0x00c8, B:38:0x00ce, B:41:0x00d5, B:42:0x00dc, B:43:0x00dd, B:45:0x00e3, B:48:0x00ea, B:49:0x00f1, B:50:0x00f2, B:52:0x00f9, B:54:0x00fd, B:79:0x017d, B:81:0x0181, B:83:0x0187, B:89:0x01a6, B:91:0x01af, B:93:0x01b7, B:97:0x01c2, B:99:0x01d5, B:100:0x01fe, B:102:0x0206, B:104:0x0210, B:106:0x021e, B:84:0x0192, B:86:0x0196, B:88:0x019c, B:55:0x010c, B:57:0x0112, B:59:0x011e, B:61:0x0124, B:62:0x0135, B:64:0x013b, B:65:0x0143, B:68:0x014b, B:70:0x0151, B:71:0x0159, B:72:0x0162, B:74:0x0168, B:76:0x0178), top: B:128:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x01af A[Catch: Exception -> 0x0247, all -> 0x0249, TryCatch #1 {Exception -> 0x0247, blocks: (B:36:0x00c8, B:38:0x00ce, B:41:0x00d5, B:42:0x00dc, B:43:0x00dd, B:45:0x00e3, B:48:0x00ea, B:49:0x00f1, B:50:0x00f2, B:52:0x00f9, B:54:0x00fd, B:79:0x017d, B:81:0x0181, B:83:0x0187, B:89:0x01a6, B:91:0x01af, B:93:0x01b7, B:97:0x01c2, B:99:0x01d5, B:100:0x01fe, B:102:0x0206, B:104:0x0210, B:106:0x021e, B:84:0x0192, B:86:0x0196, B:88:0x019c, B:55:0x010c, B:57:0x0112, B:59:0x011e, B:61:0x0124, B:62:0x0135, B:64:0x013b, B:65:0x0143, B:68:0x014b, B:70:0x0151, B:71:0x0159, B:72:0x0162, B:74:0x0168, B:76:0x0178), top: B:128:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01b7 A[Catch: Exception -> 0x0247, all -> 0x0249, TryCatch #1 {Exception -> 0x0247, blocks: (B:36:0x00c8, B:38:0x00ce, B:41:0x00d5, B:42:0x00dc, B:43:0x00dd, B:45:0x00e3, B:48:0x00ea, B:49:0x00f1, B:50:0x00f2, B:52:0x00f9, B:54:0x00fd, B:79:0x017d, B:81:0x0181, B:83:0x0187, B:89:0x01a6, B:91:0x01af, B:93:0x01b7, B:97:0x01c2, B:99:0x01d5, B:100:0x01fe, B:102:0x0206, B:104:0x0210, B:106:0x021e, B:84:0x0192, B:86:0x0196, B:88:0x019c, B:55:0x010c, B:57:0x0112, B:59:0x011e, B:61:0x0124, B:62:0x0135, B:64:0x013b, B:65:0x0143, B:68:0x014b, B:70:0x0151, B:71:0x0159, B:72:0x0162, B:74:0x0168, B:76:0x0178), top: B:128:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x01bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:96:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:98:0x01d3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x01d5 A[Catch: Exception -> 0x0247, all -> 0x0249, TryCatch #1 {Exception -> 0x0247, blocks: (B:36:0x00c8, B:38:0x00ce, B:41:0x00d5, B:42:0x00dc, B:43:0x00dd, B:45:0x00e3, B:48:0x00ea, B:49:0x00f1, B:50:0x00f2, B:52:0x00f9, B:54:0x00fd, B:79:0x017d, B:81:0x0181, B:83:0x0187, B:89:0x01a6, B:91:0x01af, B:93:0x01b7, B:97:0x01c2, B:99:0x01d5, B:100:0x01fe, B:102:0x0206, B:104:0x0210, B:106:0x021e, B:84:0x0192, B:86:0x0196, B:88:0x019c, B:55:0x010c, B:57:0x0112, B:59:0x011e, B:61:0x0124, B:62:0x0135, B:64:0x013b, B:65:0x0143, B:68:0x014b, B:70:0x0151, B:71:0x0159, B:72:0x0162, B:74:0x0168, B:76:0x0178), top: B:128:0x00c8 }] */
    private static View setViewBackground(String str, Context context, AttributeSet attributeSet, View view) {
        View viewCreateViewFromTag;
        GradientDrawable gradientDrawable;
        Drawable selectorPre21Drawable;
        int i;
        String string;
        Context context2;
        Method method;
        int i2;
        int color;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.background);
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.background_press);
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, R.styleable.background_selector);
        TypedArray typedArrayObtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, R.styleable.text_selector);
        TypedArray typedArrayObtainStyledAttributes5 = context.obtainStyledAttributes(attributeSet, R.styleable.background_button_drawable);
        TypedArray typedArrayObtainStyledAttributes6 = context.obtainStyledAttributes(attributeSet, R.styleable.bl_other);
        TypedArray typedArrayObtainStyledAttributes7 = context.obtainStyledAttributes(attributeSet, R.styleable.bl_anim);
        TypedArray typedArrayObtainStyledAttributes8 = context.obtainStyledAttributes(attributeSet, R.styleable.background_multi_selector);
        TypedArray typedArrayObtainStyledAttributes9 = context.obtainStyledAttributes(attributeSet, R.styleable.background_multi_selector_text);
        int i3 = Build.VERSION.SDK_INT;
        TypedArray typedArrayObtainStyledAttributes10 = i3 < 21 ? context.obtainStyledAttributes(attributeSet, R.styleable.background_selector_pre_21) : null;
        try {
            try {
                if (typedArrayObtainStyledAttributes.getIndexCount() == 0 && typedArrayObtainStyledAttributes3.getIndexCount() == 0 && typedArrayObtainStyledAttributes2.getIndexCount() == 0 && typedArrayObtainStyledAttributes4.getIndexCount() == 0 && typedArrayObtainStyledAttributes5.getIndexCount() == 0 && typedArrayObtainStyledAttributes7.getIndexCount() == 0 && typedArrayObtainStyledAttributes8.getIndexCount() == 0 && typedArrayObtainStyledAttributes9.getIndexCount() == 0) {
                    typedArrayObtainStyledAttributes.recycle();
                    typedArrayObtainStyledAttributes2.recycle();
                    typedArrayObtainStyledAttributes3.recycle();
                    typedArrayObtainStyledAttributes4.recycle();
                    typedArrayObtainStyledAttributes5.recycle();
                    typedArrayObtainStyledAttributes6.recycle();
                    typedArrayObtainStyledAttributes7.recycle();
                    typedArrayObtainStyledAttributes8.recycle();
                    typedArrayObtainStyledAttributes9.recycle();
                    if (typedArrayObtainStyledAttributes10 != null) {
                        typedArrayObtainStyledAttributes10.recycle();
                    }
                    return view;
                }
                viewCreateViewFromTag = view == null ? createViewFromTag(context, str, attributeSet) : view;
                if (viewCreateViewFromTag == null) {
                    typedArrayObtainStyledAttributes.recycle();
                    typedArrayObtainStyledAttributes2.recycle();
                    typedArrayObtainStyledAttributes3.recycle();
                    typedArrayObtainStyledAttributes4.recycle();
                    typedArrayObtainStyledAttributes5.recycle();
                    typedArrayObtainStyledAttributes6.recycle();
                    typedArrayObtainStyledAttributes7.recycle();
                    typedArrayObtainStyledAttributes8.recycle();
                    typedArrayObtainStyledAttributes9.recycle();
                    if (typedArrayObtainStyledAttributes10 != null) {
                        typedArrayObtainStyledAttributes10.recycle();
                    }
                    return null;
                }
                try {
                    if (typedArrayObtainStyledAttributes3.getIndexCount() > 0 && typedArrayObtainStyledAttributes8.getIndexCount() > 0) {
                        throw new IllegalArgumentException("Background_selector and background_multi_selector cannot be used simultaneously");
                    }
                    if (typedArrayObtainStyledAttributes4.getIndexCount() > 0 && typedArrayObtainStyledAttributes9.getIndexCount() > 0) {
                        throw new IllegalArgumentException("text_selector and background_multi_selector_text cannot be used simultaneously");
                    }
                    if (typedArrayObtainStyledAttributes5.getIndexCount() <= 0 || !(viewCreateViewFromTag instanceof CompoundButton)) {
                        if (typedArrayObtainStyledAttributes3.getIndexCount() <= 0) {
                            if (typedArrayObtainStyledAttributes2.getIndexCount() > 0) {
                                GradientDrawable drawable = DrawableFactory.getDrawable(typedArrayObtainStyledAttributes);
                                StateListDrawable pressDrawable = DrawableFactory.getPressDrawable(drawable, typedArrayObtainStyledAttributes, typedArrayObtainStyledAttributes2);
                                viewCreateViewFromTag.setClickable(true);
                                setDrawable(pressDrawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                                gradientDrawable = drawable;
                                selectorPre21Drawable = pressDrawable;
                            } else if (typedArrayObtainStyledAttributes8.getIndexCount() > 0) {
                                selectorPre21Drawable = DrawableFactory.getMultiSelectorDrawable(context, typedArrayObtainStyledAttributes8, typedArrayObtainStyledAttributes);
                                setBackground(selectorPre21Drawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                            } else {
                                if (typedArrayObtainStyledAttributes.getIndexCount() > 0) {
                                    if (typedArrayObtainStyledAttributes10 == null || typedArrayObtainStyledAttributes10.getIndexCount() <= 0) {
                                        GradientDrawable drawable2 = DrawableFactory.getDrawable(typedArrayObtainStyledAttributes);
                                        setDrawable(drawable2, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                                        gradientDrawable = drawable2;
                                    } else {
                                        selectorPre21Drawable = DrawableFactory.getSelectorPre21Drawable(typedArrayObtainStyledAttributes);
                                        setDrawable(selectorPre21Drawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                                    }
                                } else if (typedArrayObtainStyledAttributes7.getIndexCount() > 0) {
                                    AnimationDrawable animationDrawable = DrawableFactory.getAnimationDrawable(typedArrayObtainStyledAttributes7);
                                    setBackground(animationDrawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                                    if (typedArrayObtainStyledAttributes7.getBoolean(R.styleable.bl_anim_bl_anim_auto_start, false)) {
                                        animationDrawable.start();
                                    }
                                }
                                selectorPre21Drawable = null;
                            }
                            if (!(viewCreateViewFromTag instanceof TextView) && typedArrayObtainStyledAttributes4.getIndexCount() > 0) {
                                ((TextView) viewCreateViewFromTag).setTextColor(DrawableFactory.getTextSelectorColor(typedArrayObtainStyledAttributes4));
                            } else if ((viewCreateViewFromTag instanceof TextView) && typedArrayObtainStyledAttributes9.getIndexCount() > 0) {
                                ((TextView) viewCreateViewFromTag).setTextColor(DrawableFactory.getMultiTextColorSelectorColorCreator(context, typedArrayObtainStyledAttributes9));
                            }
                            if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.background_bl_ripple_enable, false)) {
                                i2 = R.styleable.background_bl_ripple_color;
                                if (typedArrayObtainStyledAttributes.hasValue(i2)) {
                                    color = typedArrayObtainStyledAttributes.getColor(i2, 0);
                                    if (i3 >= 21) {
                                        if (selectorPre21Drawable == null) {
                                            selectorPre21Drawable = gradientDrawable;
                                        }
                                        RippleDrawable rippleDrawable = new RippleDrawable(ColorStateList.valueOf(color), selectorPre21Drawable, selectorPre21Drawable);
                                        viewCreateViewFromTag.setClickable(true);
                                        setBackground(rippleDrawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                                    } else if (selectorPre21Drawable == null) {
                                        StateListDrawable stateListDrawable = new StateListDrawable();
                                        GradientDrawable drawable3 = DrawableFactory.getDrawable(typedArrayObtainStyledAttributes);
                                        drawable3.setColor(color);
                                        stateListDrawable.addState(new int[]{-16842919}, gradientDrawable);
                                        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, drawable3);
                                        viewCreateViewFromTag.setClickable(true);
                                        setDrawable(stateListDrawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                                    }
                                }
                            }
                            i = R.styleable.bl_other_bl_function;
                            if (typedArrayObtainStyledAttributes6.hasValue(i)) {
                                string = typedArrayObtainStyledAttributes6.getString(i);
                                if (!TextUtils.isEmpty(string)) {
                                    context2 = viewCreateViewFromTag.getContext();
                                    method = getMethod(context2.getClass(), string);
                                    if (method != null) {
                                        viewCreateViewFromTag.setOnClickListener(new a(method, context2));
                                    }
                                }
                            }
                            typedArrayObtainStyledAttributes.recycle();
                            typedArrayObtainStyledAttributes2.recycle();
                            typedArrayObtainStyledAttributes3.recycle();
                            typedArrayObtainStyledAttributes4.recycle();
                            typedArrayObtainStyledAttributes5.recycle();
                            typedArrayObtainStyledAttributes6.recycle();
                            typedArrayObtainStyledAttributes7.recycle();
                            typedArrayObtainStyledAttributes8.recycle();
                            typedArrayObtainStyledAttributes9.recycle();
                            if (typedArrayObtainStyledAttributes10 != null) {
                                typedArrayObtainStyledAttributes10.recycle();
                            }
                            return viewCreateViewFromTag;
                        }
                        selectorPre21Drawable = DrawableFactory.getSelectorDrawable(typedArrayObtainStyledAttributes, typedArrayObtainStyledAttributes3);
                        viewCreateViewFromTag.setClickable(true);
                        setDrawable(selectorPre21Drawable, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                        gradientDrawable = null;
                        if (!(viewCreateViewFromTag instanceof TextView)) {
                            if (viewCreateViewFromTag instanceof TextView) {
                                ((TextView) viewCreateViewFromTag).setTextColor(DrawableFactory.getMultiTextColorSelectorColorCreator(context, typedArrayObtainStyledAttributes9));
                            }
                        } else if (viewCreateViewFromTag instanceof TextView) {
                            ((TextView) viewCreateViewFromTag).setTextColor(DrawableFactory.getMultiTextColorSelectorColorCreator(context, typedArrayObtainStyledAttributes9));
                        }
                        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.background_bl_ripple_enable, false)) {
                            i2 = R.styleable.background_bl_ripple_color;
                            if (typedArrayObtainStyledAttributes.hasValue(i2)) {
                                color = typedArrayObtainStyledAttributes.getColor(i2, 0);
                                if (i3 >= 21) {
                                    if (selectorPre21Drawable == null) {
                                        selectorPre21Drawable = gradientDrawable;
                                    }
                                    RippleDrawable rippleDrawable2 = new RippleDrawable(ColorStateList.valueOf(color), selectorPre21Drawable, selectorPre21Drawable);
                                    viewCreateViewFromTag.setClickable(true);
                                    setBackground(rippleDrawable2, viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                                } else if (selectorPre21Drawable == null) {
                                    StateListDrawable stateListDrawable2 = new StateListDrawable();
                                    GradientDrawable drawable4 = DrawableFactory.getDrawable(typedArrayObtainStyledAttributes);
                                    drawable4.setColor(color);
                                    stateListDrawable2.addState(new int[]{-16842919}, gradientDrawable);
                                    stateListDrawable2.addState(new int[]{android.R.attr.state_pressed}, drawable4);
                                    viewCreateViewFromTag.setClickable(true);
                                    setDrawable(stateListDrawable2, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                                }
                            }
                        }
                        i = R.styleable.bl_other_bl_function;
                        if (typedArrayObtainStyledAttributes6.hasValue(i)) {
                            string = typedArrayObtainStyledAttributes6.getString(i);
                            if (!TextUtils.isEmpty(string)) {
                                context2 = viewCreateViewFromTag.getContext();
                                method = getMethod(context2.getClass(), string);
                                if (method != null) {
                                    viewCreateViewFromTag.setOnClickListener(new a(method, context2));
                                }
                            }
                        }
                        typedArrayObtainStyledAttributes.recycle();
                        typedArrayObtainStyledAttributes2.recycle();
                        typedArrayObtainStyledAttributes3.recycle();
                        typedArrayObtainStyledAttributes4.recycle();
                        typedArrayObtainStyledAttributes5.recycle();
                        typedArrayObtainStyledAttributes6.recycle();
                        typedArrayObtainStyledAttributes7.recycle();
                        typedArrayObtainStyledAttributes8.recycle();
                        typedArrayObtainStyledAttributes9.recycle();
                        if (typedArrayObtainStyledAttributes10 != null) {
                            typedArrayObtainStyledAttributes10.recycle();
                        }
                        return viewCreateViewFromTag;
                    }
                    viewCreateViewFromTag.setClickable(true);
                    ((CompoundButton) viewCreateViewFromTag).setButtonDrawable(DrawableFactory.getButtonDrawable(typedArrayObtainStyledAttributes, typedArrayObtainStyledAttributes5));
                    gradientDrawable = null;
                    selectorPre21Drawable = null;
                    if (!(viewCreateViewFromTag instanceof TextView)) {
                        if (viewCreateViewFromTag instanceof TextView) {
                            ((TextView) viewCreateViewFromTag).setTextColor(DrawableFactory.getMultiTextColorSelectorColorCreator(context, typedArrayObtainStyledAttributes9));
                        }
                    } else if (viewCreateViewFromTag instanceof TextView) {
                        ((TextView) viewCreateViewFromTag).setTextColor(DrawableFactory.getMultiTextColorSelectorColorCreator(context, typedArrayObtainStyledAttributes9));
                    }
                    if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.background_bl_ripple_enable, false)) {
                        i2 = R.styleable.background_bl_ripple_color;
                        if (typedArrayObtainStyledAttributes.hasValue(i2)) {
                            color = typedArrayObtainStyledAttributes.getColor(i2, 0);
                            if (i3 >= 21) {
                                if (selectorPre21Drawable == null) {
                                    selectorPre21Drawable = gradientDrawable;
                                }
                                RippleDrawable rippleDrawable3 = new RippleDrawable(ColorStateList.valueOf(color), selectorPre21Drawable, selectorPre21Drawable);
                                viewCreateViewFromTag.setClickable(true);
                                setBackground(rippleDrawable3, viewCreateViewFromTag, typedArrayObtainStyledAttributes);
                            } else if (selectorPre21Drawable == null) {
                                StateListDrawable stateListDrawable3 = new StateListDrawable();
                                GradientDrawable drawable5 = DrawableFactory.getDrawable(typedArrayObtainStyledAttributes);
                                drawable5.setColor(color);
                                stateListDrawable3.addState(new int[]{-16842919}, gradientDrawable);
                                stateListDrawable3.addState(new int[]{android.R.attr.state_pressed}, drawable5);
                                viewCreateViewFromTag.setClickable(true);
                                setDrawable(stateListDrawable3, viewCreateViewFromTag, typedArrayObtainStyledAttributes6, typedArrayObtainStyledAttributes);
                            }
                        }
                    }
                    i = R.styleable.bl_other_bl_function;
                    if (typedArrayObtainStyledAttributes6.hasValue(i)) {
                        string = typedArrayObtainStyledAttributes6.getString(i);
                        if (!TextUtils.isEmpty(string)) {
                            context2 = viewCreateViewFromTag.getContext();
                            method = getMethod(context2.getClass(), string);
                            if (method != null) {
                                viewCreateViewFromTag.setOnClickListener(new a(method, context2));
                            }
                        }
                    }
                    typedArrayObtainStyledAttributes.recycle();
                    typedArrayObtainStyledAttributes2.recycle();
                    typedArrayObtainStyledAttributes3.recycle();
                    typedArrayObtainStyledAttributes4.recycle();
                    typedArrayObtainStyledAttributes5.recycle();
                    typedArrayObtainStyledAttributes6.recycle();
                    typedArrayObtainStyledAttributes7.recycle();
                    typedArrayObtainStyledAttributes8.recycle();
                    typedArrayObtainStyledAttributes9.recycle();
                    if (typedArrayObtainStyledAttributes10 != null) {
                        typedArrayObtainStyledAttributes10.recycle();
                    }
                    return viewCreateViewFromTag;
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception e3) {
                e = e3;
                viewCreateViewFromTag = view;
            }
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            typedArrayObtainStyledAttributes2.recycle();
            typedArrayObtainStyledAttributes3.recycle();
            typedArrayObtainStyledAttributes4.recycle();
            typedArrayObtainStyledAttributes5.recycle();
            typedArrayObtainStyledAttributes6.recycle();
            typedArrayObtainStyledAttributes7.recycle();
            typedArrayObtainStyledAttributes8.recycle();
            typedArrayObtainStyledAttributes9.recycle();
            if (typedArrayObtainStyledAttributes10 != null) {
                typedArrayObtainStyledAttributes10.recycle();
            }
            throw th;
        }
        e.printStackTrace();
        typedArrayObtainStyledAttributes.recycle();
        typedArrayObtainStyledAttributes2.recycle();
        typedArrayObtainStyledAttributes3.recycle();
        typedArrayObtainStyledAttributes4.recycle();
        typedArrayObtainStyledAttributes5.recycle();
        typedArrayObtainStyledAttributes6.recycle();
        typedArrayObtainStyledAttributes7.recycle();
        typedArrayObtainStyledAttributes8.recycle();
        typedArrayObtainStyledAttributes9.recycle();
        if (typedArrayObtainStyledAttributes10 != null) {
            typedArrayObtainStyledAttributes10.recycle();
        }
        return viewCreateViewFromTag;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return onCreateView(str, context, attributeSet);
    }
}
