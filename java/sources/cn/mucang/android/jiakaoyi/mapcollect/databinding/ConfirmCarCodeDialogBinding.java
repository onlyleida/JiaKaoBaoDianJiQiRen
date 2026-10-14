package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ConfirmCarCodeDialogBinding implements a {
    public final TextView cancelTv;
    public final TextView carCode;
    public final EditText carCodeDesc;
    public final LinearLayout carCodeDescLl;
    public final ImageView closeIv;
    public final TextView confirmTv;
    public final View line;
    private final ConstraintLayout rootView;
    public final LinearLayout selectCarCodeLl;
    public final TextView titleTv;

    private ConfirmCarCodeDialogBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, EditText editText, LinearLayout linearLayout, ImageView imageView, TextView textView3, View view, LinearLayout linearLayout2, TextView textView4) {
        this.rootView = constraintLayout;
        this.cancelTv = textView;
        this.carCode = textView2;
        this.carCodeDesc = editText;
        this.carCodeDescLl = linearLayout;
        this.closeIv = imageView;
        this.confirmTv = textView3;
        this.line = view;
        this.selectCarCodeLl = linearLayout2;
        this.titleTv = textView4;
    }

    public static ConfirmCarCodeDialogBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.cancelTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.car_code;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.car_code_desc;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.car_code_desc_ll;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                    if (linearLayout != null) {
                        i = R.id.closeIv;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            i = R.id.confirmTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null && (viewFindViewById = view.findViewById((i = R.id.line))) != null) {
                                i = R.id.select_car_code_ll;
                                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                                if (linearLayout2 != null) {
                                    i = R.id.titleTv;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        return new ConfirmCarCodeDialogBinding((ConstraintLayout) view, textView, textView2, editText, linearLayout, imageView, textView3, viewFindViewById, linearLayout2, textView4);
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

    public static ConfirmCarCodeDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ConfirmCarCodeDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.confirm_car_code_dialog, viewGroup, false);
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
