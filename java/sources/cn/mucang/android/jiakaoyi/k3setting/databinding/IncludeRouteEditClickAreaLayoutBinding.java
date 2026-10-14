package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class IncludeRouteEditClickAreaLayoutBinding implements a {
    public final TextView addTv;
    public final TextView alignTv;
    public final AppCompatCheckBox cbJudgeBrake;
    public final AppCompatCheckBox cbJudgeLight;
    public final AppCompatCheckBox cbPlayVoice;
    public final TextView deleteTv;
    public final EditText etGroupNum;
    public final EditText etStepDistance;
    public final LinearLayout llJudge;
    public final TextView moveTv;
    private final LinearLayout rootView;
    public final TextView switchTv;
    public final TextView tvSelectStep;

    private IncludeRouteEditClickAreaLayoutBinding(LinearLayout linearLayout, TextView textView, TextView textView2, AppCompatCheckBox appCompatCheckBox, AppCompatCheckBox appCompatCheckBox2, AppCompatCheckBox appCompatCheckBox3, TextView textView3, EditText editText, EditText editText2, LinearLayout linearLayout2, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = linearLayout;
        this.addTv = textView;
        this.alignTv = textView2;
        this.cbJudgeBrake = appCompatCheckBox;
        this.cbJudgeLight = appCompatCheckBox2;
        this.cbPlayVoice = appCompatCheckBox3;
        this.deleteTv = textView3;
        this.etGroupNum = editText;
        this.etStepDistance = editText2;
        this.llJudge = linearLayout2;
        this.moveTv = textView4;
        this.switchTv = textView5;
        this.tvSelectStep = textView6;
    }

    public static IncludeRouteEditClickAreaLayoutBinding bind(View view) {
        int i = R.id.addTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.alignTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.cb_judge_brake;
                AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) view.findViewById(i);
                if (appCompatCheckBox != null) {
                    i = R.id.cb_judge_light;
                    AppCompatCheckBox appCompatCheckBox2 = (AppCompatCheckBox) view.findViewById(i);
                    if (appCompatCheckBox2 != null) {
                        i = R.id.cb_play_voice;
                        AppCompatCheckBox appCompatCheckBox3 = (AppCompatCheckBox) view.findViewById(i);
                        if (appCompatCheckBox3 != null) {
                            i = R.id.deleteTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.etGroupNum;
                                EditText editText = (EditText) view.findViewById(i);
                                if (editText != null) {
                                    i = R.id.et_step_distance;
                                    EditText editText2 = (EditText) view.findViewById(i);
                                    if (editText2 != null) {
                                        i = R.id.ll_judge;
                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                        if (linearLayout != null) {
                                            i = R.id.moveTv;
                                            TextView textView4 = (TextView) view.findViewById(i);
                                            if (textView4 != null) {
                                                i = R.id.switchTv;
                                                TextView textView5 = (TextView) view.findViewById(i);
                                                if (textView5 != null) {
                                                    i = R.id.tv_select_step;
                                                    TextView textView6 = (TextView) view.findViewById(i);
                                                    if (textView6 != null) {
                                                        return new IncludeRouteEditClickAreaLayoutBinding((LinearLayout) view, textView, textView2, appCompatCheckBox, appCompatCheckBox2, appCompatCheckBox3, textView3, editText, editText2, linearLayout, textView4, textView5, textView6);
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

    public static IncludeRouteEditClickAreaLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static IncludeRouteEditClickAreaLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.include_route_edit_click_area_layout, viewGroup, false);
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
