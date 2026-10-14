package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.util.h;
import androidx.core.view.ViewCompat;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.C;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {
    static final PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1115a;
    Object b;
    public byte[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f1116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f1119g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    PorterDuff.Mode f1120h;
    public String i;
    public String j;

    public IconCompat() {
        this.f1115a = -1;
        this.c = null;
        this.f1116d = null;
        this.f1117e = 0;
        this.f1118f = 0;
        this.f1119g = null;
        this.f1120h = k;
        this.i = null;
    }

    private static String E(int i) {
        switch (i) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    public static IconCompat c(Bundle bundle) {
        int i = bundle.getInt("type");
        IconCompat iconCompat = new IconCompat(i);
        iconCompat.f1117e = bundle.getInt("int1");
        iconCompat.f1118f = bundle.getInt("int2");
        iconCompat.j = bundle.getString("string1");
        if (bundle.containsKey("tint_list")) {
            iconCompat.f1119g = (ColorStateList) bundle.getParcelable("tint_list");
        }
        if (bundle.containsKey("tint_mode")) {
            iconCompat.f1120h = PorterDuff.Mode.valueOf(bundle.getString("tint_mode"));
        }
        switch (i) {
            case -1:
            case 1:
            case 5:
                iconCompat.b = bundle.getParcelable("obj");
                return iconCompat;
            case 0:
            default:
                Log.w("IconCompat", "Unknown type " + i);
                return null;
            case 2:
            case 4:
            case 6:
                iconCompat.b = bundle.getString("obj");
                return iconCompat;
            case 3:
                iconCompat.b = bundle.getByteArray("obj");
                return iconCompat;
        }
    }

    public static IconCompat d(Icon icon) {
        h.f(icon);
        int iT = t(icon);
        if (iT == 2) {
            return l(null, q(icon), o(icon));
        }
        if (iT == 4) {
            return i(v(icon));
        }
        if (iT == 6) {
            return f(v(icon));
        }
        IconCompat iconCompat = new IconCompat(-1);
        iconCompat.b = icon;
        return iconCompat;
    }

    static Bitmap e(Bitmap bitmap, boolean z) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f2 = iMin;
        float f3 = 0.5f * f2;
        float f4 = 0.9166667f * f3;
        if (z) {
            float f5 = 0.010416667f * f2;
            paint.setColor(0);
            paint.setShadowLayer(f5, BitmapDescriptorFactory.HUE_RED, f2 * 0.020833334f, 1023410176);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.setShadowLayer(f5, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 503316480);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2, (-(bitmap.getHeight() - iMin)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f3, f3, f4, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat f(Uri uri) {
        if (uri != null) {
            return g(uri.toString());
        }
        throw new IllegalArgumentException("Uri must not be null.");
    }

    public static IconCompat g(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Uri must not be null.");
        }
        IconCompat iconCompat = new IconCompat(6);
        iconCompat.b = str;
        return iconCompat;
    }

    public static IconCompat h(Bitmap bitmap) {
        if (bitmap == null) {
            throw new IllegalArgumentException("Bitmap must not be null.");
        }
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.b = bitmap;
        return iconCompat;
    }

    public static IconCompat i(Uri uri) {
        if (uri != null) {
            return j(uri.toString());
        }
        throw new IllegalArgumentException("Uri must not be null.");
    }

    public static IconCompat j(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Uri must not be null.");
        }
        IconCompat iconCompat = new IconCompat(4);
        iconCompat.b = str;
        return iconCompat;
    }

    public static IconCompat k(Context context, int i) {
        if (context != null) {
            return l(context.getResources(), context.getPackageName(), i);
        }
        throw new IllegalArgumentException("Context must not be null.");
    }

    public static IconCompat l(Resources resources, String str, int i) {
        if (str == null) {
            throw new IllegalArgumentException("Package must not be null.");
        }
        if (i == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f1117e = i;
        if (resources != null) {
            try {
                iconCompat.b = resources.getResourceName(i);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.b = str;
        }
        iconCompat.j = str;
        return iconCompat;
    }

    private static int o(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        } catch (NoSuchMethodException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        } catch (InvocationTargetException e4) {
            Log.e("IconCompat", "Unable to get icon resource", e4);
            return 0;
        }
    }

    private static String q(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon package", e2);
            return null;
        } catch (NoSuchMethodException e3) {
            Log.e("IconCompat", "Unable to get icon package", e3);
            return null;
        } catch (InvocationTargetException e4) {
            Log.e("IconCompat", "Unable to get icon package", e4);
            return null;
        }
    }

    private static Resources r(Context context, String str) {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("IconCompat", String.format("Unable to find pkg=%s for icon", str), e2);
            return null;
        }
    }

    private static int t(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e2);
            return -1;
        } catch (NoSuchMethodException e3) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e3);
            return -1;
        } catch (InvocationTargetException e4) {
            Log.e("IconCompat", "Unable to get icon type " + icon, e4);
            return -1;
        }
    }

    private static Uri v(Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getUri();
        }
        try {
            return (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon uri", e2);
            return null;
        } catch (NoSuchMethodException e3) {
            Log.e("IconCompat", "Unable to get icon uri", e3);
            return null;
        } catch (InvocationTargetException e4) {
            Log.e("IconCompat", "Unable to get icon uri", e4);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Drawable y(Context context) {
        switch (this.f1115a) {
            case 1:
                return new BitmapDrawable(context.getResources(), (Bitmap) this.b);
            case 2:
                String strP = p();
                if (TextUtils.isEmpty(strP)) {
                    strP = context.getPackageName();
                }
                try {
                    return androidx.core.a.f.f.d(r(context, strP), this.f1117e, context.getTheme());
                } catch (RuntimeException e2) {
                    Log.e("IconCompat", String.format("Unable to load resource 0x%08x from pkg=%s", Integer.valueOf(this.f1117e), this.b), e2);
                }
                break;
            case 3:
                return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray((byte[]) this.b, this.f1117e, this.f1118f));
            case 4:
                InputStream inputStreamW = w(context);
                if (inputStreamW != null) {
                    return new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(inputStreamW));
                }
                return null;
            case 5:
                return new BitmapDrawable(context.getResources(), e((Bitmap) this.b, false));
            case 6:
                InputStream inputStreamW2 = w(context);
                if (inputStreamW2 != null) {
                    return Build.VERSION.SDK_INT >= 26 ? new AdaptiveIconDrawable(null, new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(inputStreamW2))) : new BitmapDrawable(context.getResources(), e(BitmapFactory.decodeStream(inputStreamW2), false));
                }
                return null;
            default:
                return null;
        }
    }

    public void A(boolean z) {
        this.i = this.f1120h.name();
        switch (this.f1115a) {
            case -1:
                if (z) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f1116d = (Parcelable) this.b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z) {
                    this.f1116d = (Parcelable) this.b;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.b;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.c = ((String) this.b).getBytes(Charset.forName(C.UTF16_NAME));
                return;
            case 3:
                this.c = (byte[]) this.b;
                return;
            case 4:
            case 6:
                this.c = this.b.toString().getBytes(Charset.forName(C.UTF16_NAME));
                return;
        }
    }

    public Bundle B() {
        Bundle bundle = new Bundle();
        switch (this.f1115a) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.b);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.b);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.b);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.b);
                break;
        }
        bundle.putInt("type", this.f1115a);
        bundle.putInt("int1", this.f1117e);
        bundle.putInt("int2", this.f1118f);
        bundle.putString("string1", this.j);
        ColorStateList colorStateList = this.f1119g;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.f1120h;
        if (mode != k) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    @Deprecated
    public Icon C() {
        return D(null);
    }

    public Icon D(Context context) {
        Icon iconCreateWithBitmap;
        int i = Build.VERSION.SDK_INT;
        switch (this.f1115a) {
            case -1:
                return (Icon) this.b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) this.b);
                break;
            case 2:
                iconCreateWithBitmap = Icon.createWithResource(p(), this.f1117e);
                break;
            case 3:
                iconCreateWithBitmap = Icon.createWithData((byte[]) this.b, this.f1117e, this.f1118f);
                break;
            case 4:
                iconCreateWithBitmap = Icon.createWithContentUri((String) this.b);
                break;
            case 5:
                iconCreateWithBitmap = i < 26 ? Icon.createWithBitmap(e((Bitmap) this.b, false)) : Icon.createWithAdaptiveBitmap((Bitmap) this.b);
                break;
            case 6:
                if (i >= 30) {
                    iconCreateWithBitmap = Icon.createWithAdaptiveBitmapContentUri(u());
                } else {
                    if (context == null) {
                        throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + u());
                    }
                    InputStream inputStreamW = w(context);
                    if (inputStreamW == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + u());
                    }
                    if (i < 26) {
                        iconCreateWithBitmap = Icon.createWithBitmap(e(BitmapFactory.decodeStream(inputStreamW), false));
                    } else {
                        iconCreateWithBitmap = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(inputStreamW));
                    }
                }
                break;
        }
        ColorStateList colorStateList = this.f1119g;
        if (colorStateList != null) {
            iconCreateWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f1120h;
        if (mode != k) {
            iconCreateWithBitmap.setTintMode(mode);
        }
        return iconCreateWithBitmap;
    }

    public void b(Context context) {
        Object obj;
        if (this.f1115a != 2 || (obj = this.b) == null) {
            return;
        }
        String str = (String) obj;
        if (str.contains(":")) {
            String str2 = str.split(":", -1)[1];
            String str3 = str2.split("/", -1)[0];
            String str4 = str2.split("/", -1)[1];
            String str5 = str.split(":", -1)[0];
            if ("0_resource_name_obfuscated".equals(str4)) {
                Log.i("IconCompat", "Found obfuscated resource, not trying to update resource id for it");
                return;
            }
            String strP = p();
            int identifier = r(context, strP).getIdentifier(str4, str3, str5);
            if (this.f1117e != identifier) {
                Log.i("IconCompat", "Id has changed for " + strP + " " + str);
                this.f1117e = identifier;
            }
        }
    }

    public Bitmap m() {
        int i = this.f1115a;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.b;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i == 1) {
            return (Bitmap) this.b;
        }
        if (i == 5) {
            return e((Bitmap) this.b, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    public int n() {
        int i = this.f1115a;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            return o((Icon) this.b);
        }
        if (i == 2) {
            return this.f1117e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public String p() {
        int i = this.f1115a;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            return q((Icon) this.b);
        }
        if (i == 2) {
            return TextUtils.isEmpty(this.j) ? ((String) this.b).split(":", -1)[0] : this.j;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public int s() {
        int i = this.f1115a;
        return (i != -1 || Build.VERSION.SDK_INT < 23) ? i : t((Icon) this.b);
    }

    public String toString() {
        if (this.f1115a == -1) {
            return String.valueOf(this.b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(E(this.f1115a));
        switch (this.f1115a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(n())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f1117e);
                if (this.f1118f != 0) {
                    sb.append(" off=");
                    sb.append(this.f1118f);
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.b);
                break;
        }
        if (this.f1119g != null) {
            sb.append(" tint=");
            sb.append(this.f1119g);
        }
        if (this.f1120h != k) {
            sb.append(" mode=");
            sb.append(this.f1120h);
        }
        sb.append(")");
        return sb.toString();
    }

    public Uri u() {
        int i = this.f1115a;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            return v((Icon) this.b);
        }
        if (i == 4 || i == 6) {
            return Uri.parse((String) this.b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public InputStream w(Context context) {
        Uri uriU = u();
        String scheme = uriU.getScheme();
        if (DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT.equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uriU);
            } catch (Exception e2) {
                Log.w("IconCompat", "Unable to load image from URI: " + uriU, e2);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.b));
        } catch (FileNotFoundException e3) {
            Log.w("IconCompat", "Unable to load image from path: " + uriU, e3);
            return null;
        }
    }

    public Drawable x(Context context) {
        b(context);
        if (Build.VERSION.SDK_INT >= 23) {
            return D(context).loadDrawable(context);
        }
        Drawable drawableY = y(context);
        if (drawableY != null && (this.f1119g != null || this.f1120h != k)) {
            drawableY.mutate();
            a.o(drawableY, this.f1119g);
            a.p(drawableY, this.f1120h);
        }
        return drawableY;
    }

    public void z() {
        this.f1120h = PorterDuff.Mode.valueOf(this.i);
        switch (this.f1115a) {
            case -1:
                Parcelable parcelable = this.f1116d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.b = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f1116d;
                if (parcelable2 != null) {
                    this.b = parcelable2;
                    return;
                }
                byte[] bArr = this.c;
                this.b = bArr;
                this.f1115a = 3;
                this.f1117e = 0;
                this.f1118f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.c, Charset.forName(C.UTF16_NAME));
                this.b = str;
                if (this.f1115a == 2 && this.j == null) {
                    this.j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.b = this.c;
                return;
        }
    }

    private IconCompat(int i) {
        this.f1115a = -1;
        this.c = null;
        this.f1116d = null;
        this.f1117e = 0;
        this.f1118f = 0;
        this.f1119g = null;
        this.f1120h = k;
        this.i = null;
        this.f1115a = i;
    }
}
