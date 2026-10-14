package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.TeachingTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityAiSignalBinding implements a {
    public final Button btnOtaStart;
    public final Button btnOtaVer;
    public final CheckBox cbElse;
    public final CheckBox cbEnableCover;
    public final CheckBox cbMask;
    public final CheckBox cbStatistic;
    public final CheckBox cbSunglasses;
    public final TextView communicationTv;
    public final RecyclerView dataRcv;
    public final TextView errorTv;
    private final ConstraintLayout rootView;
    public final TextView temp;
    public final TextView temp1;
    public final TeachingTitleBinding title;
    public final TextView tvCoverCount;
    public final TextView tvCoverEnable;
    public final TextView tvCoverType;
    public final TextView tvVersion;

    private ActivityAiSignalBinding(ConstraintLayout constraintLayout, Button button, Button button2, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, TextView textView, RecyclerView recyclerView, TextView textView2, TextView textView3, TextView textView4, TeachingTitleBinding teachingTitleBinding, TextView textView5, TextView textView6, TextView textView7, TextView textView8) {
        this.rootView = constraintLayout;
        this.btnOtaStart = button;
        this.btnOtaVer = button2;
        this.cbElse = checkBox;
        this.cbEnableCover = checkBox2;
        this.cbMask = checkBox3;
        this.cbStatistic = checkBox4;
        this.cbSunglasses = checkBox5;
        this.communicationTv = textView;
        this.dataRcv = recyclerView;
        this.errorTv = textView2;
        this.temp = textView3;
        this.temp1 = textView4;
        this.title = teachingTitleBinding;
        this.tvCoverCount = textView5;
        this.tvCoverEnable = textView6;
        this.tvCoverType = textView7;
        this.tvVersion = textView8;
    }

    public static ActivityAiSignalBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.btnOtaStart;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.btnOtaVer;
            Button button2 = (Button) view.findViewById(i);
            if (button2 != null) {
                i = R.id.cbElse;
                CheckBox checkBox = (CheckBox) view.findViewById(i);
                if (checkBox != null) {
                    i = R.id.cbEnableCover;
                    CheckBox checkBox2 = (CheckBox) view.findViewById(i);
                    if (checkBox2 != null) {
                        i = R.id.cbMask;
                        CheckBox checkBox3 = (CheckBox) view.findViewById(i);
                        if (checkBox3 != null) {
                            i = R.id.cbStatistic;
                            CheckBox checkBox4 = (CheckBox) view.findViewById(i);
                            if (checkBox4 != null) {
                                i = R.id.cbSunglasses;
                                CheckBox checkBox5 = (CheckBox) view.findViewById(i);
                                if (checkBox5 != null) {
                                    i = R.id.communicationTv;
                                    TextView textView = (TextView) view.findViewById(i);
                                    if (textView != null) {
                                        i = R.id.dataRcv;
                                        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                        if (recyclerView != null) {
                                            i = R.id.errorTv;
                                            TextView textView2 = (TextView) view.findViewById(i);
                                            if (textView2 != null) {
                                                i = R.id.temp;
                                                TextView textView3 = (TextView) view.findViewById(i);
                                                if (textView3 != null) {
                                                    i = R.id.temp1;
                                                    TextView textView4 = (TextView) view.findViewById(i);
                                                    if (textView4 != null && (viewFindViewById = view.findViewById((i = R.id.title))) != null) {
                                                        TeachingTitleBinding teachingTitleBindingBind = TeachingTitleBinding.bind(viewFindViewById);
                                                        i = R.id.tvCoverCount;
                                                        TextView textView5 = (TextView) view.findViewById(i);
                                                        if (textView5 != null) {
                                                            i = R.id.tvCoverEnable;
                                                            TextView textView6 = (TextView) view.findViewById(i);
                                                            if (textView6 != null) {
                                                                i = R.id.tvCoverType;
                                                                TextView textView7 = (TextView) view.findViewById(i);
                                                                if (textView7 != null) {
                                                                    i = R.id.tvVersion;
                                                                    TextView textView8 = (TextView) view.findViewById(i);
                                                                    if (textView8 != null) {
                                                                        return new ActivityAiSignalBinding((ConstraintLayout) view, button, button2, checkBox, checkBox2, checkBox3, checkBox4, checkBox5, textView, recyclerView, textView2, textView3, textView4, teachingTitleBindingBind, textView5, textView6, textView7, textView8);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityAiSignalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityAiSignalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_ai_signal, viewGroup, false);
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
