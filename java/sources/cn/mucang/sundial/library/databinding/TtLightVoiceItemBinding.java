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
import com.tencent.open.SocialConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class TtLightVoiceItemBinding implements a {
    public final TextView desc;
    public final ImageView icon;
    public final LinearLayout llLayout;
    public final TextView name;
    private final LinearLayout rootView;

    private TtLightVoiceItemBinding(LinearLayout linearLayout, TextView textView, ImageView imageView, LinearLayout linearLayout2, TextView textView2) {
        this.rootView = linearLayout;
        this.desc = textView;
        this.icon = imageView;
        this.llLayout = linearLayout2;
        this.name = textView2;
    }

    public static TtLightVoiceItemBinding bind(View view) {
        String str;
        TextView textView = (TextView) view.findViewById(R.id.desc);
        if (textView != null) {
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.llLayout);
                if (linearLayout != null) {
                    TextView textView2 = (TextView) view.findViewById(R.id.name);
                    if (textView2 != null) {
                        return new TtLightVoiceItemBinding((LinearLayout) view, textView, imageView, linearLayout, textView2);
                    }
                    str = Constant.PROTOCOL_WEBVIEW_NAME;
                } else {
                    str = "llLayout";
                }
            } else {
                str = "icon";
            }
        } else {
            str = SocialConstants.PARAM_APP_DESC;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtLightVoiceItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtLightVoiceItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__light_voice_item, viewGroup, false);
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
