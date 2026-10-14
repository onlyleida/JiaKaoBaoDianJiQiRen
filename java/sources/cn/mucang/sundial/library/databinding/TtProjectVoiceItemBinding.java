package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes5.dex */
public final class TtProjectVoiceItemBinding implements a {
    public final ImageView icon;
    public final LinearLayout llLayout;
    public final TextView name;
    private final LinearLayout rootView;

    private TtProjectVoiceItemBinding(LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, TextView textView) {
        this.rootView = linearLayout;
        this.icon = imageView;
        this.llLayout = linearLayout2;
        this.name = textView;
    }

    public static TtProjectVoiceItemBinding bind(View view) {
        String str;
        ImageView imageView = (ImageView) view.findViewById(R.id.icon);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.llLayout);
            if (linearLayout != null) {
                TextView textView = (TextView) view.findViewById(R.id.name);
                if (textView != null) {
                    return new TtProjectVoiceItemBinding((LinearLayout) view, imageView, linearLayout, textView);
                }
                str = Constant.PROTOCOL_WEBVIEW_NAME;
            } else {
                str = "llLayout";
            }
        } else {
            str = "icon";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtProjectVoiceItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtProjectVoiceItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__project_voice_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayout getRoot() {
        return this.rootView;
    }
}
