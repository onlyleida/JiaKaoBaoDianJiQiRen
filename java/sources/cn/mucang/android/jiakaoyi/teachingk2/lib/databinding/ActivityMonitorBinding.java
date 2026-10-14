package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityMonitorBinding implements a {
    public final CheckBox assistCb;
    public final CheckBox bodyCb;
    public final TextView closeTv;
    public final TextView descTv;
    public final EditText lightEt;
    public final TextView lightTv;
    public final EditText onEt;
    public final TextView onTv;
    public final TextView pointSelect;
    public final TextView pointTitle;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final CheckBox sceneCb;
    public final TextView sceneSelect;
    public final TextView sceneTitle;
    public final FrameLayout title;
    public final TextView typeSelect;
    public final TextView typeTitle;
    public final TextView viewSelect;
    public final TextView viewTitle;

    private ActivityMonitorBinding(ConstraintLayout constraintLayout, CheckBox checkBox, CheckBox checkBox2, TextView textView, TextView textView2, EditText editText, TextView textView3, EditText editText2, TextView textView4, TextView textView5, TextView textView6, TextView textView7, CheckBox checkBox3, TextView textView8, TextView textView9, FrameLayout frameLayout, TextView textView10, TextView textView11, TextView textView12, TextView textView13) {
        this.rootView = constraintLayout;
        this.assistCb = checkBox;
        this.bodyCb = checkBox2;
        this.closeTv = textView;
        this.descTv = textView2;
        this.lightEt = editText;
        this.lightTv = textView3;
        this.onEt = editText2;
        this.onTv = textView4;
        this.pointSelect = textView5;
        this.pointTitle = textView6;
        this.saveTv = textView7;
        this.sceneCb = checkBox3;
        this.sceneSelect = textView8;
        this.sceneTitle = textView9;
        this.title = frameLayout;
        this.typeSelect = textView10;
        this.typeTitle = textView11;
        this.viewSelect = textView12;
        this.viewTitle = textView13;
    }

    public static ActivityMonitorBinding bind(View view) {
        int i = R.id.assistCb;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (checkBox != null) {
            i = R.id.bodyCb;
            CheckBox checkBox2 = (CheckBox) view.findViewById(i);
            if (checkBox2 != null) {
                i = R.id.closeTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.descTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.lightEt;
                        EditText editText = (EditText) view.findViewById(i);
                        if (editText != null) {
                            i = R.id.lightTv;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.onEt;
                                EditText editText2 = (EditText) view.findViewById(i);
                                if (editText2 != null) {
                                    i = R.id.onTv;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.pointSelect;
                                        TextView textView5 = (TextView) view.findViewById(i);
                                        if (textView5 != null) {
                                            i = R.id.pointTitle;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                i = R.id.saveTv;
                                                TextView textView7 = (TextView) view.findViewById(i);
                                                if (textView7 != null) {
                                                    i = R.id.sceneCb;
                                                    CheckBox checkBox3 = (CheckBox) view.findViewById(i);
                                                    if (checkBox3 != null) {
                                                        i = R.id.sceneSelect;
                                                        TextView textView8 = (TextView) view.findViewById(i);
                                                        if (textView8 != null) {
                                                            i = R.id.sceneTitle;
                                                            TextView textView9 = (TextView) view.findViewById(i);
                                                            if (textView9 != null) {
                                                                i = R.id.title;
                                                                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                                                                if (frameLayout != null) {
                                                                    i = R.id.typeSelect;
                                                                    TextView textView10 = (TextView) view.findViewById(i);
                                                                    if (textView10 != null) {
                                                                        i = R.id.typeTitle;
                                                                        TextView textView11 = (TextView) view.findViewById(i);
                                                                        if (textView11 != null) {
                                                                            i = R.id.viewSelect;
                                                                            TextView textView12 = (TextView) view.findViewById(i);
                                                                            if (textView12 != null) {
                                                                                i = R.id.viewTitle;
                                                                                TextView textView13 = (TextView) view.findViewById(i);
                                                                                if (textView13 != null) {
                                                                                    return new ActivityMonitorBinding((ConstraintLayout) view, checkBox, checkBox2, textView, textView2, editText, textView3, editText2, textView4, textView5, textView6, textView7, checkBox3, textView8, textView9, frameLayout, textView10, textView11, textView12, textView13);
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

    public static ActivityMonitorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityMonitorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_monitor, viewGroup, false);
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
