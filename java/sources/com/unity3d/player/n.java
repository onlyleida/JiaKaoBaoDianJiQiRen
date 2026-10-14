package com.unity3d.player;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
public final class n extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f14329a;
    final int b;
    Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Bitmap f14330d;

    /* JADX INFO: renamed from: com.unity3d.player.n$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f14331a;

        static {
            int[] iArr = new int[a.a().length];
            f14331a = iArr;
            try {
                iArr[a.f14332a - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14331a[a.b - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14331a[a.c - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f14332a = 1;
        public static final int b = 2;
        public static final int c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final /* synthetic */ int[] f14333d = {1, 2, 3};

        public static int[] a() {
            return (int[]) f14333d.clone();
        }
    }

    public n(Context context, int i) {
        super(context);
        this.f14329a = i;
        int identifier = getResources().getIdentifier("unity_static_splash", "drawable", getContext().getPackageName());
        this.b = identifier;
        if (identifier != 0) {
            forceLayout();
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Bitmap bitmap = this.c;
        if (bitmap != null) {
            bitmap.recycle();
            this.c = null;
        }
        Bitmap bitmap2 = this.f14330d;
        if (bitmap2 != null) {
            bitmap2.recycle();
            this.f14330d = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.b == 0) {
            return;
        }
        if (this.c == null) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inScaled = false;
            this.c = BitmapFactory.decodeResource(getResources(), this.b, options);
        }
        int width = this.c.getWidth();
        int height = this.c.getHeight();
        int width2 = getWidth();
        int height2 = getHeight();
        if (width2 == 0 || height2 == 0) {
            return;
        }
        float f2 = width / height;
        float f3 = width2;
        float f4 = height2;
        boolean z2 = f3 / f4 <= f2;
        int[] iArr = AnonymousClass1.f14331a;
        int i5 = this.f14329a;
        int i6 = iArr[i5 - 1];
        if (i6 == 1) {
            if (width2 < width) {
                height = (int) (f3 / f2);
                width = width2;
            }
            if (height2 < height) {
                width = (int) (f4 * f2);
                height = height2;
            }
        } else if (i6 == 2 || i6 == 3) {
            if ((i5 == a.c) ^ z2) {
                height = (int) (f3 / f2);
                width = width2;
            } else {
                width = (int) (f4 * f2);
                height = height2;
            }
        }
        Bitmap bitmap = this.f14330d;
        if (bitmap != null) {
            if (bitmap.getWidth() == width && this.f14330d.getHeight() == height) {
                return;
            }
            Bitmap bitmap2 = this.f14330d;
            if (bitmap2 != this.c) {
                bitmap2.recycle();
                this.f14330d = null;
            }
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(this.c, width, height, true);
        this.f14330d = bitmapCreateScaledBitmap;
        bitmapCreateScaledBitmap.setDensity(getResources().getDisplayMetrics().densityDpi);
        ColorDrawable colorDrawable = new ColorDrawable(ViewCompat.MEASURED_STATE_MASK);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), this.f14330d);
        bitmapDrawable.setGravity(17);
        setBackground(new LayerDrawable(new Drawable[]{colorDrawable, bitmapDrawable}));
    }
}
