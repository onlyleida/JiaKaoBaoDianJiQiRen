package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogRouteMoveBrakePointBinding implements a {
    public final EditText etDistance;
    private final LinearLayout rootView;
    public final Spinner spinner;
    public final TextView tvCancel;
    public final TextView tvConfirm;

    private DialogRouteMoveBrakePointBinding(LinearLayout linearLayout, EditText editText, Spinner spinner, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.etDistance = editText;
        this.spinner = spinner;
        this.tvCancel = textView;
        this.tvConfirm = textView2;
    }

    public static DialogRouteMoveBrakePointBinding bind(View view) {
        int i = R.id.et_distance;
        EditText editText = (EditText) view.findViewById(i);
        if (editText != null) {
            i = R.id.spinner;
            Spinner spinner = (Spinner) view.findViewById(i);
            if (spinner != null) {
                i = R.id.tv_cancel;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.tv_confirm;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        return new DialogRouteMoveBrakePointBinding((LinearLayout) view, editText, spinner, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogRouteMoveBrakePointBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogRouteMoveBrakePointBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_route_move_brake_point, viewGroup, false);
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
