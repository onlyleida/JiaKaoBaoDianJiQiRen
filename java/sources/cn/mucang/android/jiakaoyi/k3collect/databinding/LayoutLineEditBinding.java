package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.k3collect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class LayoutLineEditBinding implements a {
    public final Group centerCircleGroup;
    public final ImageView closeIv;
    public final Group colorGroup;
    public final Group dashGroup;
    public final EditText etCenterInInterval;
    public final EditText etCenterInWidth;
    public final EditText etCenterOutWidth;
    public final EditText etDashInterval;
    public final EditText etDashLength;
    public final EditText etGridLineInterval;
    public final EditText etLineWidth;
    public final Group gridGroup;
    public final Group lineWidthGroup;
    private final ConstraintLayout rootView;
    public final Spinner spColors;
    public final Spinner spTypeList;
    public final TextView tvCenterInInterval;
    public final TextView tvCenterInWidth;
    public final TextView tvCenterOutWidth;
    public final TextView tvColor;
    public final TextView tvDashInterval;
    public final TextView tvDashLength;
    public final TextView tvDeleteLine;
    public final TextView tvGridLineWidth;
    public final TextView tvLineEdit;
    public final TextView tvLineWidth;
    public final TextView tvSave;
    public final TextView tvShape;

    private LayoutLineEditBinding(ConstraintLayout constraintLayout, Group group, ImageView imageView, Group group2, Group group3, EditText editText, EditText editText2, EditText editText3, EditText editText4, EditText editText5, EditText editText6, EditText editText7, Group group4, Group group5, Spinner spinner, Spinner spinner2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12) {
        this.rootView = constraintLayout;
        this.centerCircleGroup = group;
        this.closeIv = imageView;
        this.colorGroup = group2;
        this.dashGroup = group3;
        this.etCenterInInterval = editText;
        this.etCenterInWidth = editText2;
        this.etCenterOutWidth = editText3;
        this.etDashInterval = editText4;
        this.etDashLength = editText5;
        this.etGridLineInterval = editText6;
        this.etLineWidth = editText7;
        this.gridGroup = group4;
        this.lineWidthGroup = group5;
        this.spColors = spinner;
        this.spTypeList = spinner2;
        this.tvCenterInInterval = textView;
        this.tvCenterInWidth = textView2;
        this.tvCenterOutWidth = textView3;
        this.tvColor = textView4;
        this.tvDashInterval = textView5;
        this.tvDashLength = textView6;
        this.tvDeleteLine = textView7;
        this.tvGridLineWidth = textView8;
        this.tvLineEdit = textView9;
        this.tvLineWidth = textView10;
        this.tvSave = textView11;
        this.tvShape = textView12;
    }

    public static LayoutLineEditBinding bind(View view) {
        int i = R.id.centerCircleGroup;
        Group group = (Group) view.findViewById(i);
        if (group != null) {
            i = R.id.closeIv;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = R.id.colorGroup;
                Group group2 = (Group) view.findViewById(i);
                if (group2 != null) {
                    i = R.id.dashGroup;
                    Group group3 = (Group) view.findViewById(i);
                    if (group3 != null) {
                        i = R.id.etCenterInInterval;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null) {
                            i = R.id.etCenterInWidth;
                            EditText editText2 = (EditText) view.findViewById(i);
                            if (editText2 != null) {
                                i = R.id.etCenterOutWidth;
                                EditText editText3 = (EditText) view.findViewById(i);
                                if (editText3 != null) {
                                    i = R.id.etDashInterval;
                                    EditText editText4 = (EditText) view.findViewById(i);
                                    if (editText4 != null) {
                                        i = R.id.etDashLength;
                                        EditText editText5 = (EditText) view.findViewById(i);
                                        if (editText5 != null) {
                                            i = R.id.etGridLineInterval;
                                            EditText editText6 = (EditText) view.findViewById(i);
                                            if (editText6 != null) {
                                                i = R.id.etLineWidth;
                                                EditText editText7 = (EditText) view.findViewById(i);
                                                if (editText7 != null) {
                                                    i = R.id.gridGroup;
                                                    Group group4 = (Group) view.findViewById(i);
                                                    if (group4 != null) {
                                                        i = R.id.lineWidthGroup;
                                                        Group group5 = (Group) view.findViewById(i);
                                                        if (group5 != null) {
                                                            i = R.id.spColors;
                                                            Spinner spinner = (Spinner) view.findViewById(i);
                                                            if (spinner != null) {
                                                                i = R.id.spTypeList;
                                                                Spinner spinner2 = (Spinner) view.findViewById(i);
                                                                if (spinner2 != null) {
                                                                    i = R.id.tvCenterInInterval;
                                                                    TextView textView = (TextView) view.findViewById(i);
                                                                    if (textView != null) {
                                                                        i = R.id.tvCenterInWidth;
                                                                        TextView textView2 = (TextView) view.findViewById(i);
                                                                        if (textView2 != null) {
                                                                            i = R.id.tvCenterOutWidth;
                                                                            TextView textView3 = (TextView) view.findViewById(i);
                                                                            if (textView3 != null) {
                                                                                i = R.id.tvColor;
                                                                                TextView textView4 = (TextView) view.findViewById(i);
                                                                                if (textView4 != null) {
                                                                                    i = R.id.tvDashInterval;
                                                                                    TextView textView5 = (TextView) view.findViewById(i);
                                                                                    if (textView5 != null) {
                                                                                        i = R.id.tvDashLength;
                                                                                        TextView textView6 = (TextView) view.findViewById(i);
                                                                                        if (textView6 != null) {
                                                                                            i = R.id.tvDeleteLine;
                                                                                            TextView textView7 = (TextView) view.findViewById(i);
                                                                                            if (textView7 != null) {
                                                                                                i = R.id.tvGridLineWidth;
                                                                                                TextView textView8 = (TextView) view.findViewById(i);
                                                                                                if (textView8 != null) {
                                                                                                    i = R.id.tvLineEdit;
                                                                                                    TextView textView9 = (TextView) view.findViewById(i);
                                                                                                    if (textView9 != null) {
                                                                                                        i = R.id.tvLineWidth;
                                                                                                        TextView textView10 = (TextView) view.findViewById(i);
                                                                                                        if (textView10 != null) {
                                                                                                            i = R.id.tvSave;
                                                                                                            TextView textView11 = (TextView) view.findViewById(i);
                                                                                                            if (textView11 != null) {
                                                                                                                i = R.id.tvShape;
                                                                                                                TextView textView12 = (TextView) view.findViewById(i);
                                                                                                                if (textView12 != null) {
                                                                                                                    return new LayoutLineEditBinding((ConstraintLayout) view, group, imageView, group2, group3, editText, editText2, editText3, editText4, editText5, editText6, editText7, group4, group5, spinner, spinner2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static LayoutLineEditBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutLineEditBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_line_edit, viewGroup, false);
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
