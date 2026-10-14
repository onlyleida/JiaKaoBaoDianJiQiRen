package cn.mucang.android.image.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import cn.mucang.android.core.utils.d;
import cn.mucang.android.ui.framework.mvp.b;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;

/* JADX INFO: loaded from: classes2.dex */
public class MucangImageView extends ImageView implements b {
    public MucangImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected RequestBuilder a(RequestBuilder requestBuilder, RequestOptions requestOptions) {
        requestBuilder.apply((BaseRequestOptions<?>) requestOptions);
        return requestBuilder;
    }

    protected RequestManager b() {
        return Glide.with(getContext());
    }

    public void c(int i, int i2) {
        if (d.d(d.b(getContext()))) {
            return;
        }
        b().asGif().load(Integer.valueOf(i)).apply((BaseRequestOptions<?>) new RequestOptions().placeholder(i2).diskCacheStrategy(DiskCacheStrategy.RESOURCE)).into(this);
    }

    public void d(String str, int i) {
        if (d.d(d.b(getContext()))) {
            return;
        }
        e(a(b().load(str), new RequestOptions().placeholder(i)));
    }

    protected void e(RequestBuilder requestBuilder) {
        requestBuilder.into(this);
    }

    @Override // cn.mucang.android.ui.framework.mvp.b
    public View getView() {
        return this;
    }
}
