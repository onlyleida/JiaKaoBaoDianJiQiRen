package com.mucang.android.jiakaoyi.uilib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import com.mucang.android.jiakaoyi.uilib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class ActivityDebugBinding implements a {
    public final TextView btnClear;
    public final TextView btnDown;
    public final TextView btnUp;
    public final EditText etSearch;
    public final LinearLayout llArrows;
    public final LinearLayout llSearch;
    public final CheckBox lock;
    public final RecyclerView logInfo;
    public final RadioButton rbFilter;
    public final RadioButton rbLocation;
    public final RadioGroup rgSearchMode;
    private final ConstraintLayout rootView;
    public final Spinner spType;
    public final CommonTitleBinding titleLayout;

    private ActivityDebugBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, EditText editText, LinearLayout linearLayout, LinearLayout linearLayout2, CheckBox checkBox, RecyclerView recyclerView, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup, Spinner spinner, CommonTitleBinding commonTitleBinding) {
        this.rootView = constraintLayout;
        this.btnClear = textView;
        this.btnDown = textView2;
        this.btnUp = textView3;
        this.etSearch = editText;
        this.llArrows = linearLayout;
        this.llSearch = linearLayout2;
        this.lock = checkBox;
        this.logInfo = recyclerView;
        this.rbFilter = radioButton;
        this.rbLocation = radioButton2;
        this.rgSearchMode = radioGroup;
        this.spType = spinner;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityDebugBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.btnClear;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.btnDown;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.btnUp;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.etSearch;
                    EditText editText = (EditText) view.findViewById(i);
                    if (editText != null) {
                        i = R.id.llArrows;
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                        if (linearLayout != null) {
                            i = R.id.llSearch;
                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                            if (linearLayout2 != null) {
                                i = R.id.lock;
                                CheckBox checkBox = (CheckBox) view.findViewById(i);
                                if (checkBox != null) {
                                    i = R.id.logInfo;
                                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                                    if (recyclerView != null) {
                                        i = R.id.rbFilter;
                                        RadioButton radioButton = (RadioButton) view.findViewById(i);
                                        if (radioButton != null) {
                                            i = R.id.rbLocation;
                                            RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                                            if (radioButton2 != null) {
                                                i = R.id.rgSearchMode;
                                                RadioGroup radioGroup = (RadioGroup) view.findViewById(i);
                                                if (radioGroup != null) {
                                                    i = R.id.spType;
                                                    Spinner spinner = (Spinner) view.findViewById(i);
                                                    if (spinner != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                                        return new ActivityDebugBinding((ConstraintLayout) view, textView, textView2, textView3, editText, linearLayout, linearLayout2, checkBox, recyclerView, radioButton, radioButton2, radioGroup, spinner, CommonTitleBinding.bind(viewFindViewById));
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

    public static ActivityDebugBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityDebugBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_debug, viewGroup, false);
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
