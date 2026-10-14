package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.n0;
import androidx.appcompat.widget.p;
import androidx.appcompat.widget.r;
import androidx.appcompat.widget.w;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class i {
    private static final String LOG_TAG = "AppCompatViewInflater";
    private final Object[] mConstructorArgs = new Object[2];
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {R.attr.onClick};
    private static final String[] sClassPrefixList = {"android.widget.", "android.view.", "android.webkit."};
    private static final androidx.collection.g<String, Constructor<? extends View>> sConstructorMap = new androidx.collection.g<>();

    private static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f121a;
        private final String b;
        private Method c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Context f122d;

        public a(View view, String str) {
            this.f121a = view;
            this.b = str;
        }

        private void a(Context context) {
            String str;
            Method method;
            while (context != null) {
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.b, View.class)) != null) {
                        this.c = method;
                        this.f122d = context;
                        return;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            int id = this.f121a.getId();
            if (id == -1) {
                str = "";
            } else {
                str = " with id '" + this.f121a.getContext().getResources().getResourceEntryName(id) + "'";
            }
            throw new IllegalStateException("Could not find method " + this.b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f121a.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.c == null) {
                a(this.f121a.getContext());
            }
            try {
                this.c.invoke(this.f122d, view);
            } catch (IllegalAccessException e2) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
            } catch (InvocationTargetException e3) {
                throw new IllegalStateException("Could not execute method for android:onClick", e3);
            }
        }
    }

    private void checkOnClickListener(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || ViewCompat.hasOnClickListeners(view)) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
                String string = typedArrayObtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new a(view, string));
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    private View createViewByPrefix(Context context, String str, String str2) throws InflateException, ClassNotFoundException {
        String str3;
        androidx.collection.g<String, Constructor<? extends View>> gVar = sConstructorMap;
        Constructor<? extends View> constructor = gVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(sConstructorSignature);
            gVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.mConstructorArgs);
    }

    private View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        if (str.equals("view")) {
            str = attributeSet.getAttributeValue(null, "class");
        }
        try {
            Object[] objArr = this.mConstructorArgs;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return createViewByPrefix(context, str, null);
            }
            int i = 0;
            while (true) {
                String[] strArr = sClassPrefixList;
                if (i >= strArr.length) {
                    return null;
                }
                View viewCreateViewByPrefix = createViewByPrefix(context, str, strArr[i]);
                if (viewCreateViewByPrefix != null) {
                    return viewCreateViewByPrefix;
                }
                i++;
            }
        } catch (Exception unused) {
            return null;
        } finally {
            Object[] objArr2 = this.mConstructorArgs;
            objArr2[0] = null;
            objArr2[1] = null;
        }
    }

    private static Context themifyContext(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.View, 0, 0);
        int resourceId = z ? typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_theme, 0)) != 0) {
            Log.i(LOG_TAG, "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes.recycle();
        if (resourceId != 0) {
            return ((context instanceof androidx.appcompat.d.d) && ((androidx.appcompat.d.d) context).c() == resourceId) ? context : new androidx.appcompat.d.d(context, resourceId);
        }
        return context;
    }

    private void verifyNotNull(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    protected androidx.appcompat.widget.c createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.c(context, attributeSet);
    }

    protected androidx.appcompat.widget.e createButton(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.e(context, attributeSet);
    }

    protected AppCompatCheckBox createCheckBox(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    protected androidx.appcompat.widget.f createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.f(context, attributeSet);
    }

    protected AppCompatEditText createEditText(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    protected androidx.appcompat.widget.j createImageButton(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.j(context, attributeSet);
    }

    protected AppCompatImageView createImageView(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    protected androidx.appcompat.widget.l createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.l(context, attributeSet);
    }

    protected androidx.appcompat.widget.o createRadioButton(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.o(context, attributeSet);
    }

    protected p createRatingBar(Context context, AttributeSet attributeSet) {
        return new p(context, attributeSet);
    }

    protected r createSeekBar(Context context, AttributeSet attributeSet) {
        return new r(context, attributeSet);
    }

    protected AppCompatSpinner createSpinner(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    protected w createToggleButton(Context context, AttributeSet attributeSet) {
        return new w(context, attributeSet);
    }

    protected View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    final View createView(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        View viewCreateRatingBar;
        Context context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = themifyContext(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = n0.b(context2);
        }
        str.hashCode();
        byte b = -1;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    b = 0;
                }
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    b = 1;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    b = 2;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    b = 3;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    b = 4;
                }
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    b = 5;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    b = 6;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    b = 7;
                }
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    b = 8;
                }
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    b = 9;
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    b = 10;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    b = Ascii.VT;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    b = Ascii.FF;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    b = Ascii.CR;
                }
                break;
        }
        switch (b) {
            case 0:
                viewCreateRatingBar = createRatingBar(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 1:
                viewCreateRatingBar = createCheckedTextView(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 2:
                viewCreateRatingBar = createMultiAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 3:
                viewCreateRatingBar = createTextView(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 4:
                viewCreateRatingBar = createImageButton(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 5:
                viewCreateRatingBar = createSeekBar(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 6:
                viewCreateRatingBar = createSpinner(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 7:
                viewCreateRatingBar = createRadioButton(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 8:
                viewCreateRatingBar = createToggleButton(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 9:
                viewCreateRatingBar = createImageView(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 10:
                viewCreateRatingBar = createAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 11:
                viewCreateRatingBar = createCheckBox(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 12:
                viewCreateRatingBar = createEditText(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            case 13:
                viewCreateRatingBar = createButton(context2, attributeSet);
                verifyNotNull(viewCreateRatingBar, str);
                break;
            default:
                viewCreateRatingBar = createView(context2, str, attributeSet);
                break;
        }
        if (viewCreateRatingBar == null && context != context2) {
            viewCreateRatingBar = createViewFromTag(context2, str, attributeSet);
        }
        if (viewCreateRatingBar != null) {
            checkOnClickListener(viewCreateRatingBar, attributeSet);
        }
        return viewCreateRatingBar;
    }
}
