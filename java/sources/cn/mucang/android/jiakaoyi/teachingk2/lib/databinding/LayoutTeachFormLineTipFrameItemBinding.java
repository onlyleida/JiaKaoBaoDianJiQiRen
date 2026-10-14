package cn.mucang.android.jiakaoyi.teachingk2.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;

/* JADX INFO: loaded from: classes4.dex */
public final class LayoutTeachFormLineTipFrameItemBinding implements a {
    public final TextView degreeHead;
    public final TextView degreeTv;
    public final ImageView deleteIv;
    public final EditText displayTimeEt;
    public final TextView displayTimeHead;
    public final TextView head;
    public final EditText offTimeEt;
    public final TextView offTimeHead;
    public final EditText onTimeEt;
    public final TextView onTimeHead;
    public final TextView posTv;
    public final ImageView refresh;
    private final ConstraintLayout rootView;

    private LayoutTeachFormLineTipFrameItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ImageView imageView, EditText editText, TextView textView3, TextView textView4, EditText editText2, TextView textView5, EditText editText3, TextView textView6, TextView textView7, ImageView imageView2) {
        this.rootView = constraintLayout;
        this.degreeHead = textView;
        this.degreeTv = textView2;
        this.deleteIv = imageView;
        this.displayTimeEt = editText;
        this.displayTimeHead = textView3;
        this.head = textView4;
        this.offTimeEt = editText2;
        this.offTimeHead = textView5;
        this.onTimeEt = editText3;
        this.onTimeHead = textView6;
        this.posTv = textView7;
        this.refresh = imageView2;
    }

    public static LayoutTeachFormLineTipFrameItemBinding bind(View view) {
        int i = R.id.degreeHead;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.degreeTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.deleteIv;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = R.id.displayTimeEt;
                    EditText editText = (EditText) view.findViewById(i);
                    if (editText != null) {
                        i = R.id.displayTimeHead;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.head;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                i = R.id.offTimeEt;
                                EditText editText2 = (EditText) view.findViewById(i);
                                if (editText2 != null) {
                                    i = R.id.offTimeHead;
                                    TextView textView5 = (TextView) view.findViewById(i);
                                    if (textView5 != null) {
                                        i = R.id.onTimeEt;
                                        EditText editText3 = (EditText) view.findViewById(i);
                                        if (editText3 != null) {
                                            i = R.id.onTimeHead;
                                            TextView textView6 = (TextView) view.findViewById(i);
                                            if (textView6 != null) {
                                                i = R.id.posTv;
                                                TextView textView7 = (TextView) view.findViewById(i);
                                                if (textView7 != null) {
                                                    i = R.id.refresh;
                                                    ImageView imageView2 = (ImageView) view.findViewById(i);
                                                    if (imageView2 != null) {
                                                        return new LayoutTeachFormLineTipFrameItemBinding((ConstraintLayout) view, textView, textView2, imageView, editText, textView3, textView4, editText2, textView5, editText3, textView6, textView7, imageView2);
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

    public static LayoutTeachFormLineTipFrameItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutTeachFormLineTipFrameItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_teach_form_line_tip_frame_item, viewGroup, false);
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
