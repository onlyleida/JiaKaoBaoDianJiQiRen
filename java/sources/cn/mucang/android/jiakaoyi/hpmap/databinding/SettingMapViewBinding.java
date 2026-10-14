package cn.mucang.android.jiakaoyi.hpmap.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.R;

/* JADX INFO: loaded from: classes2.dex */
public final class SettingMapViewBinding implements a {
    public final TextView backgroundPreview;
    public final TextView backgroundSelect;
    public final RadioButton black;
    public final RadioButton bumper;
    public final RadioButton cement;
    public final View divider5;
    public final View divider6;
    public final RadioButton fenceNone;
    public final RadioGroup fenceProjectRg;
    public final RadioButton gray;
    public final RadioButton grayCement;
    public final TextView inProject;
    public final RadioGroup inProjectRg;
    public final RadioButton lawn;
    public final RadioButton none;
    public final TextView outProject;
    public final RadioGroup outProjectRg;
    public final TextView outerProject;
    private final ConstraintLayout rootView;
    public final RadioButton tar;

    private SettingMapViewBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, View view, View view2, RadioButton radioButton4, RadioGroup radioGroup, RadioButton radioButton5, RadioButton radioButton6, TextView textView3, RadioGroup radioGroup2, RadioButton radioButton7, RadioButton radioButton8, TextView textView4, RadioGroup radioGroup3, TextView textView5, RadioButton radioButton9) {
        this.rootView = constraintLayout;
        this.backgroundPreview = textView;
        this.backgroundSelect = textView2;
        this.black = radioButton;
        this.bumper = radioButton2;
        this.cement = radioButton3;
        this.divider5 = view;
        this.divider6 = view2;
        this.fenceNone = radioButton4;
        this.fenceProjectRg = radioGroup;
        this.gray = radioButton5;
        this.grayCement = radioButton6;
        this.inProject = textView3;
        this.inProjectRg = radioGroup2;
        this.lawn = radioButton7;
        this.none = radioButton8;
        this.outProject = textView4;
        this.outProjectRg = radioGroup3;
        this.outerProject = textView5;
        this.tar = radioButton9;
    }

    public static SettingMapViewBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.background_preview;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.background_select;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.black;
                RadioButton radioButton = (RadioButton) view.findViewById(i);
                if (radioButton != null) {
                    i = R.id.bumper;
                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                    if (radioButton2 != null) {
                        i = R.id.cement;
                        RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                        if (radioButton3 != null && (viewFindViewById = view.findViewById((i = R.id.divider5))) != null && (viewFindViewById2 = view.findViewById((i = R.id.divider6))) != null) {
                            i = R.id.fence_none;
                            RadioButton radioButton4 = (RadioButton) view.findViewById(i);
                            if (radioButton4 != null) {
                                i = R.id.fence_project_rg;
                                RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                                if (radioGroup != null) {
                                    i = R.id.gray;
                                    RadioButton radioButton5 = (RadioButton) view.findViewById(i);
                                    if (radioButton5 != null) {
                                        i = R.id.gray_cement;
                                        RadioButton radioButton6 = (RadioButton) view.findViewById(i);
                                        if (radioButton6 != null) {
                                            i = R.id.in_project;
                                            TextView textView3 = (TextView) view.findViewById(i);
                                            if (textView3 != null) {
                                                i = R.id.in_project_rg;
                                                RadioGroup radioGroup2 = (RadioGroup) view.findViewById(i);
                                                if (radioGroup2 != null) {
                                                    i = R.id.lawn;
                                                    RadioButton radioButton7 = (RadioButton) view.findViewById(i);
                                                    if (radioButton7 != null) {
                                                        i = R.id.none;
                                                        RadioButton radioButton8 = (RadioButton) view.findViewById(i);
                                                        if (radioButton8 != null) {
                                                            i = R.id.out_project;
                                                            TextView textView4 = (TextView) view.findViewById(i);
                                                            if (textView4 != null) {
                                                                i = R.id.out_project_rg;
                                                                RadioGroup radioGroup3 = (RadioGroup) view.findViewById(i);
                                                                if (radioGroup3 != null) {
                                                                    i = R.id.outer_project;
                                                                    TextView textView5 = (TextView) view.findViewById(i);
                                                                    if (textView5 != null) {
                                                                        i = R.id.tar;
                                                                        RadioButton radioButton9 = (RadioButton) view.findViewById(i);
                                                                        if (radioButton9 != null) {
                                                                            return new SettingMapViewBinding((ConstraintLayout) view, textView, textView2, radioButton, radioButton2, radioButton3, viewFindViewById, viewFindViewById2, radioButton4, radioGroup, radioButton5, radioButton6, textView3, radioGroup2, radioButton7, radioButton8, textView4, radioGroup3, textView5, radioButton9);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static SettingMapViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SettingMapViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.setting_map_view, viewGroup, false);
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
