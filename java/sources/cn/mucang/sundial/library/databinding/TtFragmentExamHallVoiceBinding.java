package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtFragmentExamHallVoiceBinding implements a {
    public final RecyclerView recyclerView;
    private final LinearLayout rootView;
    public final TextView tvHuima;
    public final TextView tvYongxin;

    private TtFragmentExamHallVoiceBinding(LinearLayout linearLayout, RecyclerView recyclerView, TextView textView, TextView textView2) {
        this.rootView = linearLayout;
        this.recyclerView = recyclerView;
        this.tvHuima = textView;
        this.tvYongxin = textView2;
    }

    public static TtFragmentExamHallVoiceBinding bind(View view) {
        String str;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recyclerView);
        if (recyclerView != null) {
            TextView textView = (TextView) view.findViewById(R.id.tv_huima);
            if (textView != null) {
                TextView textView2 = (TextView) view.findViewById(R.id.tv_yongxin);
                if (textView2 != null) {
                    return new TtFragmentExamHallVoiceBinding((LinearLayout) view, recyclerView, textView, textView2);
                }
                str = "tvYongxin";
            } else {
                str = "tvHuima";
            }
        } else {
            str = "recyclerView";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtFragmentExamHallVoiceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtFragmentExamHallVoiceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__fragment_exam_hall_voice, viewGroup, false);
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
