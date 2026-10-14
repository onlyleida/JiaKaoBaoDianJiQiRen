package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class CommonLineLayoutBinding implements a {
    public final LinearLayout colorGroup;
    public final LinearLayout dashLengthGroup;
    public final EditText etDashLength;
    public final EditText etInterval;
    public final EditText etLineWidth;
    public final EditText etLineWidth2;
    public final LinearLayout intervalGroup;
    private final LinearLayout rootView;
    public final LinearLayout shapeGroup;
    public final Spinner spColors;
    public final Spinner spShapeTypeList;
    public final Spinner spTypes;
    public final TextView tvCollect1;
    public final TextView tvCollect2;
    public final TextView tvColor;
    public final TextView tvDashLength;
    public final TextView tvExample;
    public final TextView tvInterval;
    public final TextView tvLineWidth;
    public final TextView tvLineWidth2;
    public final TextView tvShape;
    public final TextView tvType;
    public final LinearLayout typeGroup;
    public final LinearLayout width2Group;
    public final LinearLayout widthGroup;

    private CommonLineLayoutBinding(LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, EditText editText, EditText editText2, EditText editText3, EditText editText4, LinearLayout linearLayout4, LinearLayout linearLayout5, Spinner spinner, Spinner spinner2, Spinner spinner3, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, LinearLayout linearLayout6, LinearLayout linearLayout7, LinearLayout linearLayout8) {
        this.rootView = linearLayout;
        this.colorGroup = linearLayout2;
        this.dashLengthGroup = linearLayout3;
        this.etDashLength = editText;
        this.etInterval = editText2;
        this.etLineWidth = editText3;
        this.etLineWidth2 = editText4;
        this.intervalGroup = linearLayout4;
        this.shapeGroup = linearLayout5;
        this.spColors = spinner;
        this.spShapeTypeList = spinner2;
        this.spTypes = spinner3;
        this.tvCollect1 = textView;
        this.tvCollect2 = textView2;
        this.tvColor = textView3;
        this.tvDashLength = textView4;
        this.tvExample = textView5;
        this.tvInterval = textView6;
        this.tvLineWidth = textView7;
        this.tvLineWidth2 = textView8;
        this.tvShape = textView9;
        this.tvType = textView10;
        this.typeGroup = linearLayout6;
        this.width2Group = linearLayout7;
        this.widthGroup = linearLayout8;
    }

    public static CommonLineLayoutBinding bind(View view) {
        int i = R.id.colorGroup;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
        if (linearLayout != null) {
            i = R.id.dashLengthGroup;
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
            if (linearLayout2 != null) {
                i = R.id.et_dash_length;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.et_interval;
                    EditText editText2 = (EditText) view.findViewById(i);
                    if (editText2 != null) {
                        i = R.id.etLineWidth;
                        EditText editText3 = (EditText) view.findViewById(i);
                        if (editText3 != null) {
                            i = R.id.etLineWidth2;
                            EditText editText4 = (EditText) view.findViewById(i);
                            if (editText4 != null) {
                                i = R.id.intervalGroup;
                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                                if (linearLayout3 != null) {
                                    i = R.id.shapeGroup;
                                    LinearLayout linearLayout4 = (LinearLayout) view.findViewById(i);
                                    if (linearLayout4 != null) {
                                        i = R.id.spColors;
                                        Spinner spinner = (Spinner) view.findViewById(i);
                                        if (spinner != null) {
                                            i = R.id.spShapeTypeList;
                                            Spinner spinner2 = (Spinner) view.findViewById(i);
                                            if (spinner2 != null) {
                                                i = R.id.sp_types;
                                                Spinner spinner3 = (Spinner) view.findViewById(i);
                                                if (spinner3 != null) {
                                                    i = R.id.tvCollect1;
                                                    TextView textView = (TextView) view.findViewById(i);
                                                    if (textView != null) {
                                                        i = R.id.tvCollect2;
                                                        TextView textView2 = (TextView) view.findViewById(i);
                                                        if (textView2 != null) {
                                                            i = R.id.tvColor;
                                                            TextView textView3 = (TextView) view.findViewById(i);
                                                            if (textView3 != null) {
                                                                i = R.id.tv_dash_length;
                                                                TextView textView4 = (TextView) view.findViewById(i);
                                                                if (textView4 != null) {
                                                                    i = R.id.tvExample;
                                                                    TextView textView5 = (TextView) view.findViewById(i);
                                                                    if (textView5 != null) {
                                                                        i = R.id.tv_interval;
                                                                        TextView textView6 = (TextView) view.findViewById(i);
                                                                        if (textView6 != null) {
                                                                            i = R.id.tvLineWidth;
                                                                            TextView textView7 = (TextView) view.findViewById(i);
                                                                            if (textView7 != null) {
                                                                                i = R.id.tvLineWidth2;
                                                                                TextView textView8 = (TextView) view.findViewById(i);
                                                                                if (textView8 != null) {
                                                                                    i = R.id.tvShape;
                                                                                    TextView textView9 = (TextView) view.findViewById(i);
                                                                                    if (textView9 != null) {
                                                                                        i = R.id.tv_type;
                                                                                        TextView textView10 = (TextView) view.findViewById(i);
                                                                                        if (textView10 != null) {
                                                                                            i = R.id.typeGroup;
                                                                                            LinearLayout linearLayout5 = (LinearLayout) view.findViewById(i);
                                                                                            if (linearLayout5 != null) {
                                                                                                i = R.id.width2Group;
                                                                                                LinearLayout linearLayout6 = (LinearLayout) view.findViewById(i);
                                                                                                if (linearLayout6 != null) {
                                                                                                    i = R.id.widthGroup;
                                                                                                    LinearLayout linearLayout7 = (LinearLayout) view.findViewById(i);
                                                                                                    if (linearLayout7 != null) {
                                                                                                        return new CommonLineLayoutBinding((LinearLayout) view, linearLayout, linearLayout2, editText, editText2, editText3, editText4, linearLayout3, linearLayout4, spinner, spinner2, spinner3, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, linearLayout5, linearLayout6, linearLayout7);
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
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CommonLineLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CommonLineLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.common_line_layout, viewGroup, false);
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
