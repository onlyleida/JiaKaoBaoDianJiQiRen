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
public final class LayoutTeachFormLineTipTitleItemBinding implements a {
    public final ImageView deleteIv;
    public final EditText displayTimeEt;
    public final TextView displayTimeHead;
    public final EditText offTimeEt;
    public final TextView offTimeHead;
    public final EditText onTimeEt;
    public final TextView onTimeHead;
    private final ConstraintLayout rootView;
    public final TextView titleTv;

    private LayoutTeachFormLineTipTitleItemBinding(ConstraintLayout constraintLayout, ImageView imageView, EditText editText, TextView textView, EditText editText2, TextView textView2, EditText editText3, TextView textView3, TextView textView4) {
        this.rootView = constraintLayout;
        this.deleteIv = imageView;
        this.displayTimeEt = editText;
        this.displayTimeHead = textView;
        this.offTimeEt = editText2;
        this.offTimeHead = textView2;
        this.onTimeEt = editText3;
        this.onTimeHead = textView3;
        this.titleTv = textView4;
    }

    public static LayoutTeachFormLineTipTitleItemBinding bind(View view) {
        int i = R.id.deleteIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.displayTimeEt;
            EditText editText = (EditText) view.findViewById(i);
            if (editText != null) {
                i = R.id.displayTimeHead;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.offTimeEt;
                    EditText editText2 = (EditText) view.findViewById(i);
                    if (editText2 != null) {
                        i = R.id.offTimeHead;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.onTimeEt;
                            EditText editText3 = (EditText) view.findViewById(i);
                            if (editText3 != null) {
                                i = R.id.onTimeHead;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.titleTv;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        return new LayoutTeachFormLineTipTitleItemBinding((ConstraintLayout) view, imageView, editText, textView, editText2, textView2, editText3, textView3, textView4);
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

    public static LayoutTeachFormLineTipTitleItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutTeachFormLineTipTitleItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_teach_form_line_tip_title_item, viewGroup, false);
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
