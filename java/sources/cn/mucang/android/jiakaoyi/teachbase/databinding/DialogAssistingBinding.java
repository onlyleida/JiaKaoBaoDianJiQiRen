package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogAssistingBinding implements a {
    public final ImageView brakeIv;
    public final TextView brakeTv;
    public final TextView descTv;
    public final ImageView engineIv;
    public final TextView engineTv;
    public final ImageView gearIv;
    public final TextView gearTv;
    private final ConstraintLayout rootView;
    public final TextView titleTv;
    public final TextView tvExit;

    private DialogAssistingBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, TextView textView2, ImageView imageView2, TextView textView3, ImageView imageView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.brakeIv = imageView;
        this.brakeTv = textView;
        this.descTv = textView2;
        this.engineIv = imageView2;
        this.engineTv = textView3;
        this.gearIv = imageView3;
        this.gearTv = textView4;
        this.titleTv = textView5;
        this.tvExit = textView6;
    }

    public static DialogAssistingBinding bind(View view) {
        int i = R.id.brakeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.brakeTv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.descTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.engineIv;
                    ImageView imageView2 = (ImageView) view.findViewById(i);
                    if (imageView2 != null) {
                        i = R.id.engineTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.gearIv;
                            ImageView imageView3 = (ImageView) view.findViewById(i);
                            if (imageView3 != null) {
                                i = R.id.gearTv;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    i = R.id.titleTv;
                                    TextView textView5 = (TextView) view.findViewById(i);
                                    if (textView5 != null) {
                                        i = R.id.tv_exit;
                                        TextView textView6 = (TextView) view.findViewById(i);
                                        if (textView6 != null) {
                                            return new DialogAssistingBinding((ConstraintLayout) view, imageView, textView, textView2, imageView2, textView3, imageView3, textView4, textView5, textView6);
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

    public static DialogAssistingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogAssistingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_assisting, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ConstraintLayout getRoot() {
        return this.rootView;
    }
}
