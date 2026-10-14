package cn.mucang.android.jiakaoyi.teachingk2.audio;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import cn.mucang.android.image.view.MucangImageView;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020\u000eH\u0014J\b\u0010\u0014\u001a\u00020\u000eH\u0014J\b\u0010\u0015\u001a\u00020\u000eH\u0014J\u000e\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/audio/AudioParentView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "bgView", "Landroid/widget/ImageView;", "iconIv", "Lcn/mucang/android/image/view/MucangImageView;", "textTv", "Landroid/widget/TextView;", "changeStatus", "", "status", "", "time", "", "onAttachedToWindow", "onDetachedFromWindow", "onFinishInflate", "refreshTime", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AudioParentView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f6162a;
    private MucangImageView b;
    private TextView c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioParentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        r.e(context, "context");
    }

    public final void a(int i, String time) {
        r.e(time, "time");
        if (i == 1) {
            ImageView imageView = this.f6162a;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.bg_calling);
            }
            MucangImageView mucangImageView = this.b;
            if (mucangImageView != null) {
                mucangImageView.c(R.raw.ic_stop_call, 0);
            }
            TextView textView = this.c;
            if (textView == null) {
                return;
            }
            textView.setText(k0.a(R.string.teachbase_calling));
            return;
        }
        if (i != 2) {
            ImageView imageView2 = this.f6162a;
            if (imageView2 != null) {
                imageView2.setImageResource(R.drawable.bg_call);
            }
            MucangImageView mucangImageView2 = this.b;
            if (mucangImageView2 != null) {
                mucangImageView2.setImageResource(R.drawable.ic_call);
            }
            TextView textView2 = this.c;
            if (textView2 == null) {
                return;
            }
            textView2.setText(k0.a(R.string.teachbase_emergency_call));
            return;
        }
        ImageView imageView3 = this.f6162a;
        if (imageView3 != null) {
            imageView3.setImageResource(R.drawable.bg_call);
        }
        MucangImageView mucangImageView3 = this.b;
        if (mucangImageView3 != null) {
            mucangImageView3.setImageResource(R.drawable.ic_called);
        }
        TextView textView3 = this.c;
        if (textView3 == null) {
            return;
        }
        textView3.setText(time);
    }

    public final void b(String time) {
        r.e(time, "time");
        TextView textView = this.c;
        if (textView == null) {
            return;
        }
        textView.setText(time);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AudioManager.f6169a.i(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AudioManager.f6169a.p(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f6162a = (ImageView) findViewById(R.id.bgView);
        this.b = (MucangImageView) findViewById(R.id.iconIv);
        this.c = (TextView) findViewById(R.id.textTv);
    }
}
