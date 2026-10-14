package cn.mucang.android.image.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import cn.mucang.android.framework.core.R;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableTransformation;
import com.bumptech.glide.load.MultiTransformation;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.bumptech.glide.load.resource.bitmap.FitCenter;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.bumptech.glide.request.RequestOptions;

/* JADX INFO: loaded from: classes2.dex */
public class MucangRoundCornerImageView extends MucangImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3068a;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3069a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f3069a = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3069a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3069a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3069a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3069a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3069a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public MucangRoundCornerImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MucangRoundCornerImageView);
        this.f3068a = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MucangRoundCornerImageView_mCornerRadius, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // cn.mucang.android.image.view.MucangImageView
    protected RequestBuilder a(RequestBuilder requestBuilder, RequestOptions requestOptions) {
        switch (a.f3069a[getScaleType().ordinal()]) {
            case 1:
                MultiTransformation multiTransformation = new MultiTransformation(new CenterCrop(), new RoundedCorners(this.f3068a));
                requestOptions.transform(multiTransformation);
                requestOptions.transform(WebpDrawable.class, new WebpDrawableTransformation(multiTransformation));
                break;
            case 2:
                MultiTransformation multiTransformation2 = new MultiTransformation(new CenterInside(), new RoundedCorners(this.f3068a));
                requestOptions.transform(multiTransformation2);
                requestOptions.transform(WebpDrawable.class, new WebpDrawableTransformation(multiTransformation2));
                break;
            case 3:
            case 4:
            case 5:
            case 6:
                MultiTransformation multiTransformation3 = new MultiTransformation(new FitCenter(), new RoundedCorners(this.f3068a));
                requestOptions.transform(multiTransformation3);
                requestOptions.transform(WebpDrawable.class, new WebpDrawableTransformation(multiTransformation3));
                break;
            default:
                RoundedCorners roundedCorners = new RoundedCorners(this.f3068a);
                requestOptions.transform(roundedCorners);
                requestOptions.transform(WebpDrawable.class, new WebpDrawableTransformation(roundedCorners));
                break;
        }
        super.a(requestBuilder, requestOptions);
        return requestBuilder;
    }

    public void setCornerRadius(int i) {
        this.f3068a = i;
    }
}
