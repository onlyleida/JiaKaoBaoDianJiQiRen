package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.TeachingTitleBinding;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCalibartionBinding implements a {
    public final AutoAssistCalibartionBinding assistLayout;
    public final TextView brakeTravel;
    public final TextView clutchTravel;
    public final RecyclerView dataRv;
    public final HalfClutchCalibartionBinding halfClutchLayout;
    public final RecyclerView menuRv;
    public final MotorCalibartionBinding motorLayout;
    private final ConstraintLayout rootView;
    public final TextView rpmTv;
    public final TextView speedTv;
    public final TextView throttleTravel;
    public final TeachingTitleBinding title;
    public final TextView wheelDegree;

    private ActivityCalibartionBinding(ConstraintLayout constraintLayout, AutoAssistCalibartionBinding autoAssistCalibartionBinding, TextView textView, TextView textView2, RecyclerView recyclerView, HalfClutchCalibartionBinding halfClutchCalibartionBinding, RecyclerView recyclerView2, MotorCalibartionBinding motorCalibartionBinding, TextView textView3, TextView textView4, TextView textView5, TeachingTitleBinding teachingTitleBinding, TextView textView6) {
        this.rootView = constraintLayout;
        this.assistLayout = autoAssistCalibartionBinding;
        this.brakeTravel = textView;
        this.clutchTravel = textView2;
        this.dataRv = recyclerView;
        this.halfClutchLayout = halfClutchCalibartionBinding;
        this.menuRv = recyclerView2;
        this.motorLayout = motorCalibartionBinding;
        this.rpmTv = textView3;
        this.speedTv = textView4;
        this.throttleTravel = textView5;
        this.title = teachingTitleBinding;
        this.wheelDegree = textView6;
    }

    public static ActivityCalibartionBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        int i = R.id.assistLayout;
        View viewFindViewById4 = view.findViewById(i);
        if (viewFindViewById4 != null) {
            AutoAssistCalibartionBinding autoAssistCalibartionBindingBind = AutoAssistCalibartionBinding.bind(viewFindViewById4);
            i = R.id.brakeTravel;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.clutchTravel;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.dataRv;
                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                    if (recyclerView != null && (viewFindViewById = view.findViewById((i = R.id.halfClutchLayout))) != null) {
                        HalfClutchCalibartionBinding halfClutchCalibartionBindingBind = HalfClutchCalibartionBinding.bind(viewFindViewById);
                        i = R.id.menuRv;
                        RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                        if (recyclerView2 != null && (viewFindViewById2 = view.findViewById((i = R.id.motorLayout))) != null) {
                            MotorCalibartionBinding motorCalibartionBindingBind = MotorCalibartionBinding.bind(viewFindViewById2);
                            i = R.id.rpmTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.speedTv;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    i = R.id.throttleTravel;
                                    TextView textView5 = (TextView) view.findViewById(i);
                                    if (textView5 != null && (viewFindViewById3 = view.findViewById((i = R.id.title))) != null) {
                                        TeachingTitleBinding teachingTitleBindingBind = TeachingTitleBinding.bind(viewFindViewById3);
                                        i = R.id.wheelDegree;
                                        TextView textView6 = (TextView) view.findViewById(i);
                                        if (textView6 != null) {
                                            return new ActivityCalibartionBinding((ConstraintLayout) view, autoAssistCalibartionBindingBind, textView, textView2, recyclerView, halfClutchCalibartionBindingBind, recyclerView2, motorCalibartionBindingBind, textView3, textView4, textView5, teachingTitleBindingBind, textView6);
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

    public static ActivityCalibartionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCalibartionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_calibartion, viewGroup, false);
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
