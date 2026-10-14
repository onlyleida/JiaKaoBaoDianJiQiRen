package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintAttribute {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f826a;
    String b;
    private AttributeType c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f829f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f830g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f831h;

    public enum AttributeType {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE,
        REFERENCE_TYPE
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f832a;

        static {
            int[] iArr = new int[AttributeType.values().length];
            f832a = iArr;
            try {
                iArr[AttributeType.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f832a[AttributeType.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f832a[AttributeType.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f832a[AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f832a[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f832a[AttributeType.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f832a[AttributeType.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f832a[AttributeType.DIMENSION_TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public ConstraintAttribute(String str, AttributeType attributeType, Object obj, boolean z) {
        this.f826a = false;
        this.b = str;
        this.c = attributeType;
        this.f826a = z;
        k(obj);
    }

    private static int b(int i) {
        int i2 = (i & (~(i >> 31))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static HashMap<String, ConstraintAttribute> c(HashMap<String, ConstraintAttribute> map, View view) {
        HashMap<String, ConstraintAttribute> map2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            ConstraintAttribute constraintAttribute = map.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    map2.put(str, new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    map2.put(str, new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
                }
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (NoSuchMethodException e3) {
                e3.printStackTrace();
            } catch (InvocationTargetException e4) {
                e4.printStackTrace();
            }
        }
        return map2;
    }

    public static void h(Context context, XmlPullParser xmlPullParser, HashMap<String, ConstraintAttribute> map) {
        AttributeType attributeType;
        Object objValueOf;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.CustomAttribute);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string = null;
        Object objValueOf2 = null;
        AttributeType attributeType2 = null;
        boolean z = false;
        for (int i = 0; i < indexCount; i++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.CustomAttribute_attributeName) {
                string = typedArrayObtainStyledAttributes.getString(index);
                if (string != null && string.length() > 0) {
                    string = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                }
            } else if (index == R.styleable.CustomAttribute_methodName) {
                string = typedArrayObtainStyledAttributes.getString(index);
                z = true;
            } else if (index == R.styleable.CustomAttribute_customBoolean) {
                objValueOf2 = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                attributeType2 = AttributeType.BOOLEAN_TYPE;
            } else {
                if (index == R.styleable.CustomAttribute_customColorValue) {
                    attributeType = AttributeType.COLOR_TYPE;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == R.styleable.CustomAttribute_customColorDrawableValue) {
                    attributeType = AttributeType.COLOR_DRAWABLE_TYPE;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else if (index == R.styleable.CustomAttribute_customPixelDimension) {
                    attributeType = AttributeType.DIMENSION_TYPE;
                    objValueOf = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED), context.getResources().getDisplayMetrics()));
                } else if (index == R.styleable.CustomAttribute_customDimension) {
                    attributeType = AttributeType.DIMENSION_TYPE;
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED));
                } else if (index == R.styleable.CustomAttribute_customFloatValue) {
                    attributeType = AttributeType.FLOAT_TYPE;
                    objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == R.styleable.CustomAttribute_customIntegerValue) {
                    attributeType = AttributeType.INT_TYPE;
                    objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                } else if (index == R.styleable.CustomAttribute_customStringValue) {
                    attributeType = AttributeType.STRING_TYPE;
                    objValueOf = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R.styleable.CustomAttribute_customReference) {
                    attributeType = AttributeType.REFERENCE_TYPE;
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId == -1) {
                        resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                    }
                    objValueOf = Integer.valueOf(resourceId);
                }
                Object obj = objValueOf;
                attributeType2 = attributeType;
                objValueOf2 = obj;
            }
        }
        if (string != null && objValueOf2 != null) {
            map.put(string, new ConstraintAttribute(string, attributeType2, objValueOf2, z));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void i(View view, HashMap<String, ConstraintAttribute> map) {
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            ConstraintAttribute constraintAttribute = map.get(str);
            String str2 = constraintAttribute.f826a ? str : "set" + str;
            try {
                switch (a.f832a[constraintAttribute.c.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f827d));
                        break;
                    case 2:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.f830g));
                        break;
                    case 3:
                        cls.getMethod(str2, CharSequence.class).invoke(view, constraintAttribute.f829f);
                        break;
                    case 4:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f831h));
                        break;
                    case 5:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(constraintAttribute.f831h);
                        method.invoke(view, colorDrawable);
                        break;
                    case 6:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.f827d));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.f828e));
                        break;
                    case 8:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.f828e));
                        break;
                }
            } catch (IllegalAccessException e2) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e2.printStackTrace();
            } catch (NoSuchMethodException e3) {
                Log.e("TransitionLayout", e3.getMessage());
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                StringBuilder sb = new StringBuilder();
                sb.append(cls.getName());
                sb.append(" must have a method ");
                sb.append(str2);
                Log.e("TransitionLayout", sb.toString());
            } catch (InvocationTargetException e4) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e4.printStackTrace();
            }
        }
    }

    public void a(View view) {
        String str;
        Class<?> cls = view.getClass();
        String str2 = this.b;
        if (this.f826a) {
            str = str2;
        } else {
            str = "set" + str2;
        }
        try {
            switch (a.f832a[this.c.ordinal()]) {
                case 1:
                case 6:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(this.f827d));
                    break;
                case 2:
                    cls.getMethod(str, Boolean.TYPE).invoke(view, Boolean.valueOf(this.f830g));
                    break;
                case 3:
                    cls.getMethod(str, CharSequence.class).invoke(view, this.f829f);
                    break;
                case 4:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(this.f831h));
                    break;
                case 5:
                    Method method = cls.getMethod(str, Drawable.class);
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(this.f831h);
                    method.invoke(view, colorDrawable);
                    break;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(this.f828e));
                    break;
                case 8:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(this.f828e));
                    break;
                default:
                    break;
            }
        } catch (IllegalAccessException e2) {
            Log.e("TransitionLayout", " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            Log.e("TransitionLayout", e3.getMessage());
            Log.e("TransitionLayout", " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
            StringBuilder sb = new StringBuilder();
            sb.append(cls.getName());
            sb.append(" must have a method ");
            sb.append(str);
            Log.e("TransitionLayout", sb.toString());
        } catch (InvocationTargetException e4) {
            Log.e("TransitionLayout", " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
            e4.printStackTrace();
        }
    }

    public AttributeType d() {
        return this.c;
    }

    public float e() {
        switch (a.f832a[this.c.ordinal()]) {
            case 2:
                if (this.f830g) {
                    return 1.0f;
                }
                return BitmapDescriptorFactory.HUE_RED;
            case 3:
                throw new RuntimeException("Cannot interpolate String");
            case 4:
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                return this.f827d;
            case 7:
                return this.f828e;
            case 8:
                return this.f828e;
            default:
                return Float.NaN;
        }
    }

    public void f(float[] fArr) {
        switch (a.f832a[this.c.ordinal()]) {
            case 2:
                fArr[0] = this.f830g ? 1.0f : BitmapDescriptorFactory.HUE_RED;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int i = this.f831h;
                int i2 = (i >> 24) & 255;
                float fPow = (float) Math.pow(((i >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((i >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((i & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = i2 / 255.0f;
                return;
            case 6:
                fArr[0] = this.f827d;
                return;
            case 7:
                fArr[0] = this.f828e;
                return;
            case 8:
                fArr[0] = this.f828e;
                return;
            default:
                return;
        }
    }

    public int g() {
        int i = a.f832a[this.c.ordinal()];
        return (i == 4 || i == 5) ? 4 : 1;
    }

    public void j(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String str = "set" + this.b;
        try {
            switch (a.f832a[this.c.ordinal()]) {
                case 2:
                    Method method = cls.getMethod(str, Boolean.TYPE);
                    Object[] objArr = new Object[1];
                    objArr[0] = Boolean.valueOf(fArr[0] > 0.5f);
                    method.invoke(view, objArr);
                    return;
                case 3:
                    throw new RuntimeException("unable to interpolate strings " + this.b);
                case 4:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((b((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (b((int) (fArr[3] * 255.0f)) << 24) | (b((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | b((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 5:
                    Method method2 = cls.getMethod(str, Drawable.class);
                    int iB = (b((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (b((int) (fArr[3] * 255.0f)) << 24) | (b((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | b((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(iB);
                    method2.invoke(view, colorDrawable);
                    return;
                case 6:
                    cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 8:
                    cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e2) {
            Log.e("TransitionLayout", "cannot access method " + str + " on View \"" + androidx.constraintlayout.motion.widget.a.c(view) + "\"");
            e2.printStackTrace();
        } catch (NoSuchMethodException e3) {
            Log.e("TransitionLayout", "no method " + str + " on View \"" + androidx.constraintlayout.motion.widget.a.c(view) + "\"");
            e3.printStackTrace();
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
        }
    }

    public void k(Object obj) {
        switch (a.f832a[this.c.ordinal()]) {
            case 1:
            case 6:
                this.f827d = ((Integer) obj).intValue();
                break;
            case 2:
                this.f830g = ((Boolean) obj).booleanValue();
                break;
            case 3:
                this.f829f = (String) obj;
                break;
            case 4:
            case 5:
                this.f831h = ((Integer) obj).intValue();
                break;
            case 7:
                this.f828e = ((Float) obj).floatValue();
                break;
            case 8:
                this.f828e = ((Float) obj).floatValue();
                break;
        }
    }

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        this.f826a = false;
        this.b = constraintAttribute.b;
        this.c = constraintAttribute.c;
        k(obj);
    }
}
