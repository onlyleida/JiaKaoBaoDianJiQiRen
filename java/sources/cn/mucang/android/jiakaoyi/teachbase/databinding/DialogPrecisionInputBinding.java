package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogPrecisionInputBinding implements a {
    public final TextView back1;
    public final TextView back2;
    public final EditText back3;
    public final TextView front1;
    public final TextView front2;
    public final EditText front3;
    public final TextView head1;
    public final TextView head2;
    public final EditText head3;
    public final Group headGroup;
    public final TextView leftTv;
    public final TextView rightTv;
    private final ConstraintLayout rootView;
    public final TextView stepTv;
    public final TextView tip1;
    public final TextView tip2;
    public final TextView tip3;
    public final TextView title;

    private DialogPrecisionInputBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, EditText editText, TextView textView3, TextView textView4, EditText editText2, TextView textView5, TextView textView6, EditText editText3, Group group, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13) {
        this.rootView = constraintLayout;
        this.back1 = textView;
        this.back2 = textView2;
        this.back3 = editText;
        this.front1 = textView3;
        this.front2 = textView4;
        this.front3 = editText2;
        this.head1 = textView5;
        this.head2 = textView6;
        this.head3 = editText3;
        this.headGroup = group;
        this.leftTv = textView7;
        this.rightTv = textView8;
        this.stepTv = textView9;
        this.tip1 = textView10;
        this.tip2 = textView11;
        this.tip3 = textView12;
        this.title = textView13;
    }

    public static DialogPrecisionInputBinding bind(View view) {
        int i = R.id.back1;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.back2;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.back3;
                EditText editText = (EditText) view.findViewById(i);
                if (editText != null) {
                    i = R.id.front1;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        i = R.id.front2;
                        TextView textView4 = (TextView) view.findViewById(i);
                        if (textView4 != null) {
                            i = R.id.front3;
                            EditText editText2 = (EditText) view.findViewById(i);
                            if (editText2 != null) {
                                i = R.id.head1;
                                TextView textView5 = (TextView) view.findViewById(i);
                                if (textView5 != null) {
                                    i = R.id.head2;
                                    TextView textView6 = (TextView) view.findViewById(i);
                                    if (textView6 != null) {
                                        i = R.id.head3;
                                        EditText editText3 = (EditText) view.findViewById(i);
                                        if (editText3 != null) {
                                            i = R.id.headGroup;
                                            Group group = (Group) view.findViewById(i);
                                            if (group != null) {
                                                i = R.id.leftTv;
                                                TextView textView7 = (TextView) view.findViewById(i);
                                                if (textView7 != null) {
                                                    i = R.id.rightTv;
                                                    TextView textView8 = (TextView) view.findViewById(i);
                                                    if (textView8 != null) {
                                                        i = R.id.stepTv;
                                                        TextView textView9 = (TextView) view.findViewById(i);
                                                        if (textView9 != null) {
                                                            i = R.id.tip1;
                                                            TextView textView10 = (TextView) view.findViewById(i);
                                                            if (textView10 != null) {
                                                                i = R.id.tip2;
                                                                TextView textView11 = (TextView) view.findViewById(i);
                                                                if (textView11 != null) {
                                                                    i = R.id.tip3;
                                                                    TextView textView12 = (TextView) view.findViewById(i);
                                                                    if (textView12 != null) {
                                                                        i = R.id.title;
                                                                        TextView textView13 = (TextView) view.findViewById(i);
                                                                        if (textView13 != null) {
                                                                            return new DialogPrecisionInputBinding((ConstraintLayout) view, textView, textView2, editText, textView3, textView4, editText2, textView5, textView6, editText3, group, textView7, textView8, textView9, textView10, textView11, textView12, textView13);
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

    public static DialogPrecisionInputBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogPrecisionInputBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_precision_input, viewGroup, false);
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
