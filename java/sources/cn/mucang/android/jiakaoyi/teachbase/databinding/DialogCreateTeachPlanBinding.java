package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogCreateTeachPlanBinding implements a {
    public final RadioButton allTypeRb;
    public final TextView cancel;
    public final RadioGroup carTypeRg;
    public final TextView confirm;
    public final View div1;
    public final View div2;
    public final View div3;
    public final View div4;
    public final Group editGroup;
    public final TextView headSelectCarModel;
    public final TextView headSelectTemplate;
    public final EditText name;
    public final TextView planNameHead;
    private final ConstraintLayout rootView;
    public final TextView selectCarModel;
    public final TextView selectGearType;
    public final Spinner selectGearTypeSp;
    public final Spinner selectTemplate;
    public final RadioButton singleTypeRb;
    public final TextView title;

    private DialogCreateTeachPlanBinding(ConstraintLayout constraintLayout, RadioButton radioButton, TextView textView, RadioGroup radioGroup, TextView textView2, View view, View view2, View view3, View view4, Group group, TextView textView3, TextView textView4, EditText editText, TextView textView5, TextView textView6, TextView textView7, Spinner spinner, Spinner spinner2, RadioButton radioButton2, TextView textView8) {
        this.rootView = constraintLayout;
        this.allTypeRb = radioButton;
        this.cancel = textView;
        this.carTypeRg = radioGroup;
        this.confirm = textView2;
        this.div1 = view;
        this.div2 = view2;
        this.div3 = view3;
        this.div4 = view4;
        this.editGroup = group;
        this.headSelectCarModel = textView3;
        this.headSelectTemplate = textView4;
        this.name = editText;
        this.planNameHead = textView5;
        this.selectCarModel = textView6;
        this.selectGearType = textView7;
        this.selectGearTypeSp = spinner;
        this.selectTemplate = spinner2;
        this.singleTypeRb = radioButton2;
        this.title = textView8;
    }

    public static DialogCreateTeachPlanBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        View viewFindViewById4;
        int i = R.id.allTypeRb;
        RadioButton radioButton = (RadioButton) view.findViewById(i);
        if (radioButton != null) {
            i = R.id.cancel;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.carTypeRg;
                RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                if (radioGroup != null) {
                    i = R.id.confirm;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.div1))) != null && (viewFindViewById2 = view.findViewById((i = R.id.div2))) != null && (viewFindViewById3 = view.findViewById((i = R.id.div3))) != null && (viewFindViewById4 = view.findViewById((i = R.id.div4))) != null) {
                        i = R.id.editGroup;
                        Group group = (Group) view.findViewById(i);
                        if (group != null) {
                            i = R.id.head_select_car_model;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.head_select_template;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    i = R.id.name;
                                    EditText editText = (EditText) view.findViewById(i);
                                    if (editText != null) {
                                        i = R.id.plan_name_head;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.select_car_model;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                i = R.id.select_gear_type;
                                                TextView textView7 = (TextView) view.findViewById(i);
                                                if (textView7 != null) {
                                                    i = R.id.select_gear_type_sp;
                                                    Spinner spinner = (Spinner) view.findViewById(i);
                                                    if (spinner != null) {
                                                        i = R.id.select_template;
                                                        Spinner spinner2 = (Spinner) view.findViewById(i);
                                                        if (spinner2 != null) {
                                                            i = R.id.singleTypeRb;
                                                            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                                                            if (radioButton2 != null) {
                                                                i = R.id.title;
                                                                TextView textView8 = (TextView) view.findViewById(i);
                                                                if (textView8 != null) {
                                                                    return new DialogCreateTeachPlanBinding((ConstraintLayout) view, radioButton, textView, radioGroup, textView2, viewFindViewById, viewFindViewById2, viewFindViewById3, viewFindViewById4, group, textView3, textView4, editText, textView5, textView6, textView7, spinner, spinner2, radioButton2, textView8);
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

    public static DialogCreateTeachPlanBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogCreateTeachPlanBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_create_teach_plan, viewGroup, false);
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
