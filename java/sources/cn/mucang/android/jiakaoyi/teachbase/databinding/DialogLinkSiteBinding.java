package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogLinkSiteBinding implements a {
    public final TextView makeSure;
    public final ImageView qrCode;
    private final LinearLayout rootView;
    public final TextView title;

    private DialogLinkSiteBinding(LinearLayout linearLayout, TextView textView, ImageView imageView, TextView textView2) {
        this.rootView = linearLayout;
        this.makeSure = textView;
        this.qrCode = imageView;
        this.title = textView2;
    }

    public static DialogLinkSiteBinding bind(View view) {
        int i = R.id.make_sure;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.qrCode;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.title;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    return new DialogLinkSiteBinding((LinearLayout) view, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogLinkSiteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogLinkSiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog__link_site, viewGroup, false);
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
