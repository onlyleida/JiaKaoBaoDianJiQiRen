package f.a.a.b.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import cn.mucang.android.core.utils.d;
import cn.mucang.android.core.utils.n0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableTransformation;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.CircleCrop;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import java.io.File;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: f.a.a.b.a.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0299a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f14503a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f14503a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14503a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14503a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14503a[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f14503a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f14503a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private static MultiTransformation a(ImageView imageView) {
        int i = C0299a.f14503a[imageView.getScaleType().ordinal()];
        return (i == 1 || i == 2 || i == 3 || i == 4) ? new MultiTransformation(new FitCenter(), new CircleCrop()) : new MultiTransformation(new CenterCrop(), new CircleCrop());
    }

    private static MultiTransformation b(ImageView imageView, int i) {
        int i2 = C0299a.f14503a[imageView.getScaleType().ordinal()];
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4) {
            return new MultiTransformation(new FitCenter(), new RoundedCorners(i));
        }
        return i2 != 6 ? new MultiTransformation(new CenterCrop(), new RoundedCorners(i)) : new MultiTransformation(new CenterInside(), new RoundedCorners(i));
    }

    public static Bitmap c(Context context, String str) {
        return d(context, str, -1L, null, null);
    }

    public static Bitmap d(Context context, String str, long j, TimeUnit timeUnit, DiskCacheStrategy diskCacheStrategy) {
        return (Bitmap) e(context, str, j, timeUnit, diskCacheStrategy, Bitmap.class);
    }

    private static Object e(Context context, String str, long j, TimeUnit timeUnit, DiskCacheStrategy diskCacheStrategy, Class cls) {
        Object obj = null;
        if (context == null || n0.e(str) || d.d(d.b(context))) {
            return null;
        }
        FutureTarget futureTargetSubmit = Glide.with(context).as(cls).load(str).apply((BaseRequestOptions<?>) (diskCacheStrategy == null ? new RequestOptions().diskCacheStrategy(DiskCacheStrategy.RESOURCE) : new RequestOptions().diskCacheStrategy(diskCacheStrategy))).submit(Integer.MIN_VALUE, Integer.MIN_VALUE);
        try {
            obj = (j <= 0 || timeUnit == null) ? futureTargetSubmit.get() : futureTargetSubmit.get(j, timeUnit);
            return obj;
        } catch (InterruptedException e2) {
            Log.d("Exception", e2.toString());
            return obj;
        } catch (ExecutionException e3) {
            Log.d("Exception", e3.toString());
            return obj;
        } catch (TimeoutException e4) {
            Log.d("Exception", e4.toString());
            return obj;
        }
    }

    private static void f(ImageView imageView, Object obj, RequestOptions requestOptions, int i, int i2, RequestListener requestListener, boolean z, int i3) {
        if (imageView == null || d.d(d.b(imageView.getContext()))) {
            return;
        }
        if (requestOptions == null) {
            requestOptions = new RequestOptions();
        }
        if (i > 0) {
            requestOptions = requestOptions.placeholder(i);
        }
        if (i2 > 0) {
            requestOptions = requestOptions.error(i2);
        }
        MultiTransformation multiTransformationB = null;
        if (z) {
            multiTransformationB = a(imageView);
        } else if (i3 > 0) {
            multiTransformationB = b(imageView, i3);
        }
        if (multiTransformationB != null) {
            requestOptions = requestOptions.transform(multiTransformationB).transform(WebpDrawable.class, new WebpDrawableTransformation(multiTransformationB));
        }
        RequestBuilder<Drawable> requestBuilderApply = Glide.with(imageView.getContext()).load(obj).apply((BaseRequestOptions<?>) requestOptions);
        if (requestListener != null) {
            requestBuilderApply.listener(requestListener);
        }
        requestBuilderApply.into(imageView);
    }

    public static void g(ImageView imageView, String str, int i, int i2, RequestListener requestListener) {
        f(imageView, str, null, i, i2, requestListener, true, -1);
    }

    public static void h(ImageView imageView, File file, int i) {
        f(imageView, file, null, i, -1, null, false, -1);
    }

    public static void i(ImageView imageView, String str, int i) {
        f(imageView, str, null, i, -1, null, false, -1);
    }

    public static void j(ImageView imageView, String str, int i, RequestListener requestListener) {
        f(imageView, str, null, i, -1, requestListener, false, -1);
    }
}
