package cn.mucang.android.image.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableTransformation;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.CircleCrop;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.request.RequestOptions;

/* JADX INFO: loaded from: classes2.dex */
public class MucangCircleImageView extends MucangImageView {

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3067a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f3067a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3067a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3067a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3067a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3067a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3067a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public MucangCircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // cn.mucang.android.image.view.MucangImageView
    protected RequestBuilder a(RequestBuilder requestBuilder, RequestOptions requestOptions) {
        switch (a.f3067a[getScaleType().ordinal()]) {
            case 1:
                MultiTransformation multiTransformation = new MultiTransformation(new CenterCrop(), new CircleCrop());
                requestOptions.transform(multiTransformation);
                requestOptions.transform(WebpDrawable.class, new WebpDrawableTransformation(multiTransformation));
                break;
            case 2:
                MultiTransformation multiTransformation2 = new MultiTransformation(new CenterInside(), new CircleCrop());
                requestOptions.transform(multiTransformation2);
                requestOptions.transform(WebpDrawable.class, new WebpDrawableTransformation(multiTransformation2));
                break;
            case 3:
            case 4:
            case 5:
            case 6:
                MultiTransformation multiTransformation3 = new MultiTransformation(new FitCenter(), new CircleCrop());
                requestOptions.transform(multiTransformation3);
                requestOptions.transform(WebpDrawable.class, new WebpDrawableTransformation(multiTransformation3));
                break;
            default:
                CircleCrop circleCrop = new CircleCrop();
                requestOptions.transform(circleCrop);
                requestOptions.transform(WebpDrawable.class, new WebpDrawableTransformation(circleCrop));
                break;
        }
        super.a(requestBuilder, requestOptions);
        return requestBuilder;
    }
}
