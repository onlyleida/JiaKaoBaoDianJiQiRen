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
public final class PopupCardTypeBinding implements a {
    public final TextView idTv;
    public final TextView officerTv;
    public final TextView otherTv;
    public final TextView passportTv;
    public final TextView phoneTv;
    private final ConstraintLayout rootView;
    public final ImageView triangleIv;

    private PopupCardTypeBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, ImageView imageView) {
        this.rootView = constraintLayout;
        this.idTv = textView;
        this.officerTv = textView2;
        this.otherTv = textView3;
        this.passportTv = textView4;
        this.phoneTv = textView5;
        this.triangleIv = imageView;
    }

    public static PopupCardTypeBinding bind(View view) {
        int i = R.id.idTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.officerTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.otherTv;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.passportTv;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.phoneTv;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.triangleIv;
                            ImageView imageView = (ImageView) view.findViewById(i);
                            if (imageView != null) {
                                return new PopupCardTypeBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, imageView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static PopupCardTypeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PopupCardTypeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.popup_card_type, viewGroup, false);
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
