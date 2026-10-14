package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class AutoTeachDebugViewBinding implements a {
    public final TextView debugTv;
    public final EditText delayEt;
    public final TextView endTv;
    public final TextView errorTv;
    public final TextView pauseTv;
    public final TextView pointTv;
    public final TextView resumeTv;
    private final ConstraintLayout rootView;
    public final TextView saveTv;
    public final TextView startEngineTv;
    public final TextView startTv;
    public final TextView stateTv;
    public final TextView stopEngineTv;

    private AutoTeachDebugViewBinding(ConstraintLayout constraintLayout, TextView textView, EditText editText, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11) {
        this.rootView = constraintLayout;
        this.debugTv = textView;
        this.delayEt = editText;
        this.endTv = textView2;
        this.errorTv = textView3;
        this.pauseTv = textView4;
        this.pointTv = textView5;
        this.resumeTv = textView6;
        this.saveTv = textView7;
        this.startEngineTv = textView8;
        this.startTv = textView9;
        this.stateTv = textView10;
        this.stopEngineTv = textView11;
    }

    public static AutoTeachDebugViewBinding bind(View view) {
        int i = R.id.debugTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.delayEt;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.endTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.errorTv;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.pauseTv;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.pointTv;
                            TextView textView5 = (TextView) view.findViewById(i);
                            if (textView5 != null) {
                                i = R.id.resumeTv;
                                TextView textView6 = (TextView) view.findViewById(i);
                                if (textView6 != null) {
                                    i = R.id.saveTv;
                                    TextView textView7 = (TextView) view.findViewById(i);
                                    if (textView7 != null) {
                                        i = R.id.startEngineTv;
                                        TextView textView8 = (TextView) view.findViewById(i);
                                        if (textView8 != null) {
                                            i = R.id.startTv;
                                            TextView textView9 = (TextView) view.findViewById(i);
                                            if (textView9 != null) {
                                                i = R.id.stateTv;
                                                TextView textView10 = (TextView) view.findViewById(i);
                                                if (textView10 != null) {
                                                    i = R.id.stopEngineTv;
                                                    TextView textView11 = (TextView) view.findViewById(i);
                                                    if (textView11 != null) {
                                                        return new AutoTeachDebugViewBinding((ConstraintLayout) view, textView, editText, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11);
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

    public static AutoTeachDebugViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AutoTeachDebugViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.auto_teach_debug_view, viewGroup, false);
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
