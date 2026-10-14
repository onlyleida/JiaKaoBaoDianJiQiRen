package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class ExamResultVoiceDialogBinding implements a {
    public final TextView closeTV;
    public final TextView descTv;
    public final TextView examScore;
    public final ImageView left;
    public final FrameLayout rootLayout;
    private final LinearLayout rootView;
    public final TextView titleTv;
    public final TextView traceTV;

    private ExamResultVoiceDialogBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, ImageView imageView, FrameLayout frameLayout, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.closeTV = textView;
        this.descTv = textView2;
        this.examScore = textView3;
        this.left = imageView;
        this.rootLayout = frameLayout;
        this.titleTv = textView4;
        this.traceTV = textView5;
    }

    public static ExamResultVoiceDialogBinding bind(View view) {
        int i = R.id.closeTV;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.descTv;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.exam_score;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.left;
                    ImageView imageView = (ImageView) view.findViewById(i);
                    if (imageView != null) {
                        i = R.id.rootLayout;
                        FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                        if (frameLayout != null) {
                            i = R.id.titleTv;
                            TextView textView4 = (TextView) view.findViewById(i);
                            if (textView4 != null) {
                                i = R.id.traceTV;
                                TextView textView5 = (TextView) view.findViewById(i);
                                if (textView5 != null) {
                                    return new ExamResultVoiceDialogBinding((LinearLayout) view, textView, textView2, textView3, imageView, frameLayout, textView4, textView5);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExamResultVoiceDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamResultVoiceDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_result_voice_dialog, viewGroup, false);
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
