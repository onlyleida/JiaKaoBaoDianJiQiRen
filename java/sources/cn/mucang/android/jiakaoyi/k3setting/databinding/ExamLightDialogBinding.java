package cn.mucang.android.jiakaoyi.k3setting.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.image.view.MucangImageView;
import cn.mucang.android.jiakaoyi.k3setting.R;

/* JADX INFO: loaded from: classes3.dex */
public final class ExamLightDialogBinding implements a {
    public final ImageView closeDialog;
    public final MucangImageView currentLight;
    public final TextView examTopicDesc;
    public final TextView examTopicName;
    public final TextView hideTv;
    public final RecyclerView lightList;
    private final FrameLayout rootView;

    private ExamLightDialogBinding(FrameLayout frameLayout, ImageView imageView, MucangImageView mucangImageView, TextView textView, TextView textView2, TextView textView3, RecyclerView recyclerView) {
        this.rootView = frameLayout;
        this.closeDialog = imageView;
        this.currentLight = mucangImageView;
        this.examTopicDesc = textView;
        this.examTopicName = textView2;
        this.hideTv = textView3;
        this.lightList = recyclerView;
    }

    public static ExamLightDialogBinding bind(View view) {
        int i = R.id.close_dialog;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.currentLight;
            MucangImageView mucangImageView = (MucangImageView) view.findViewById(i);
            if (mucangImageView != null) {
                i = R.id.examTopicDesc;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.examTopicName;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null) {
                        i = R.id.hideTv;
                        TextView textView3 = (TextView) view.findViewById(i);
                        if (textView3 != null) {
                            i = R.id.lightList;
                            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                            if (recyclerView != null) {
                                return new ExamLightDialogBinding((FrameLayout) view, imageView, mucangImageView, textView, textView2, textView3, recyclerView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ExamLightDialogBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ExamLightDialogBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.exam_light_dialog, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public FrameLayout getRoot() {
        return this.rootView;
    }
}
