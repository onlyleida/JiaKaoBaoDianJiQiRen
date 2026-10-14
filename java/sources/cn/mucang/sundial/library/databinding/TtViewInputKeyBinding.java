package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes5.dex */
public final class TtViewInputKeyBinding implements a {
    public final ImageView delete;
    public final TextView number;
    private final FrameLayout rootView;

    private TtViewInputKeyBinding(FrameLayout frameLayout, ImageView imageView, TextView textView) {
        this.rootView = frameLayout;
        this.delete = imageView;
        this.number = textView;
    }

    public static TtViewInputKeyBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.delete);
        if (imageView != null) {
            TextView textView = (TextView) view.findViewById(R.id.number);
            if (textView != null) {
                return new TtViewInputKeyBinding((FrameLayout) view, imageView, textView);
            }
            str = Constant.LOGIN_ACTIVITY_NUMBER;
        } else {
            str = InputIdCardActivity.DELETE;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtViewInputKeyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtViewInputKeyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__view_input_key, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
