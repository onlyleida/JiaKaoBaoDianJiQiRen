package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteSaveDialogBinding implements a {
    public final ImageView closeIv;
    public final ImageView isPublicIv;
    public final ImageView line1;
    public final ImageView line2;
    public final ImageView line3;
    public final TextView nameDescTv;
    public final EditText nameEt;
    public final LinearLayout nameLayout;
    public final TextView okTv;
    public final FrameLayout publicLayout;
    private final FrameLayout rootView;
    public final TextView titleTv;

    private RouteSaveDialogBinding(FrameLayout frameLayout, ImageView imageView, ImageView imageView2, ImageView imageView3, ImageView imageView4, ImageView imageView5, TextView textView, EditText editText, LinearLayout linearLayout, TextView textView2, FrameLayout frameLayout2, TextView textView3) {
        this.rootView = frameLayout;
        this.closeIv = imageView;
        this.isPublicIv = imageView2;
        this.line1 = imageView3;
        this.line2 = imageView4;
        this.line3 = imageView5;
        this.nameDescTv = textView;
        this.nameEt = editText;
        this.nameLayout = linearLayout;
        this.okTv = textView2;
        this.publicLayout = frameLayout2;
        this.titleTv = textView3;
    }

    public static RouteSaveDialogBinding bind(View view) {
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.isPublicIv;
            ImageView imageView2 = (ImageView) view.findViewById(i);
            if (imageView2 != null) {
                i = R.id.line1;
                ImageView imageView3 = (ImageView) view.findViewById(i);
                if (imageView3 != null) {
                    i = R.id.line2;
                    ImageView imageView4 = (ImageView) view.findViewById(i);
                    if (imageView4 != null) {
                        i = R.id.line3;
                        ImageView imageView5 = (ImageView) view.findViewById(i);
                        if (imageView5 != null) {
                            i = R.id.nameDescTv;
                            TextView textView = (TextView) view.findViewById(i);
                            if (textView != null) {
                                i = R.id.nameEt;
                                EditText editText = (EditText) view.findViewById(i);
                                if (editText != null) {
                                    i = R.id.nameLayout;
                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                    if (linearLayout != null) {
                                        i = R.id.okTv;
                                        TextView textView2 = (TextView) view.findViewById(i);
                                        if (textView2 != null) {
                                            i = R.id.publicLayout;
                                            FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                                            if (frameLayout != null) {
                                                i = R.id.titleTv;
                                                TextView textView3 = (TextView) view.findViewById(i);
                                                if (textView3 != null) {
                                                    return new RouteSaveDialogBinding((FrameLayout) view, imageView, imageView2, imageView3, imageView4, imageView5, textView, editText, linearLayout, textView2, frameLayout, textView3);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RouteSaveDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RouteSaveDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.route_save_dialog, viewGroup, false);
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
