package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityCoachLoginBinding implements a {
    public final TtLayoutLoginCardBinding cardLayout;
    public final TextView closeIv;
    private final ConstraintLayout rootView;
    public final TtLayoutLoginScanBinding scanLayout;
    public final TextView singleTv;
    public final TextView skipped;
    public final View tabBg;
    public final LinearLayout tabLl;
    public final TextView titleIv;

    private TtActivityCoachLoginBinding(ConstraintLayout constraintLayout, TtLayoutLoginCardBinding ttLayoutLoginCardBinding, TextView textView, TtLayoutLoginScanBinding ttLayoutLoginScanBinding, TextView textView2, TextView textView3, View view, LinearLayout linearLayout, TextView textView4) {
        this.rootView = constraintLayout;
        this.cardLayout = ttLayoutLoginCardBinding;
        this.closeIv = textView;
        this.scanLayout = ttLayoutLoginScanBinding;
        this.singleTv = textView2;
        this.skipped = textView3;
        this.tabBg = view;
        this.tabLl = linearLayout;
        this.titleIv = textView4;
    }

    public static TtActivityCoachLoginBinding bind(View view) {
        String str;
        View viewFindViewById = view.findViewById(R.id.cardLayout);
        if (viewFindViewById != null) {
            TtLayoutLoginCardBinding ttLayoutLoginCardBindingBind = TtLayoutLoginCardBinding.bind(viewFindViewById);
            TextView textView = (TextView) view.findViewById(R.id.closeIv);
            if (textView != null) {
                View viewFindViewById2 = view.findViewById(R.id.scanLayout);
                if (viewFindViewById2 != null) {
                    TtLayoutLoginScanBinding ttLayoutLoginScanBindingBind = TtLayoutLoginScanBinding.bind(viewFindViewById2);
                    TextView textView2 = (TextView) view.findViewById(R.id.singleTv);
                    if (textView2 != null) {
                        TextView textView3 = (TextView) view.findViewById(R.id.skipped);
                        if (textView3 != null) {
                            View viewFindViewById3 = view.findViewById(R.id.tabBg);
                            if (viewFindViewById3 != null) {
                                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.tabLl);
                                if (linearLayout != null) {
                                    TextView textView4 = (TextView) view.findViewById(R.id.titleIv);
                                    if (textView4 != null) {
                                        return new TtActivityCoachLoginBinding((ConstraintLayout) view, ttLayoutLoginCardBindingBind, textView, ttLayoutLoginScanBindingBind, textView2, textView3, viewFindViewById3, linearLayout, textView4);
                                    }
                                    str = "titleIv";
                                } else {
                                    str = "tabLl";
                                }
                            } else {
                                str = "tabBg";
                            }
                        } else {
                            str = "skipped";
                        }
                    } else {
                        str = "singleTv";
                    }
                } else {
                    str = "scanLayout";
                }
            } else {
                str = "closeIv";
            }
        } else {
            str = "cardLayout";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityCoachLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityCoachLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_coach_login, viewGroup, false);
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
