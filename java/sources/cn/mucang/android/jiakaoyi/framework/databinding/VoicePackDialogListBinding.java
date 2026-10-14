package cn.mucang.android.jiakaoyi.framework.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.framework.R;

/* JADX INFO: loaded from: classes2.dex */
public final class VoicePackDialogListBinding implements a {
    public final ImageView closeIv;
    public final View dialogTitleDivider;
    public final TextView dialogTitleTv;
    public final TextView dialogVoiceCancel;
    public final RecyclerView dialogVoiceRv;
    public final LinearLayout loadingLayout;
    public final ProgressBar progress;
    private final RelativeLayout rootView;
    public final TextView tipText;

    private VoicePackDialogListBinding(RelativeLayout relativeLayout, ImageView imageView, View view, TextView textView, TextView textView2, RecyclerView recyclerView, LinearLayout linearLayout, ProgressBar progressBar, TextView textView3) {
        this.rootView = relativeLayout;
        this.closeIv = imageView;
        this.dialogTitleDivider = view;
        this.dialogTitleTv = textView;
        this.dialogVoiceCancel = textView2;
        this.dialogVoiceRv = recyclerView;
        this.loadingLayout = linearLayout;
        this.progress = progressBar;
        this.tipText = textView3;
    }

    public static VoicePackDialogListBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.closeIv;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null && (viewFindViewById = view.findViewById((i = R.id.dialog_title_divider))) != null) {
            i = R.id.dialog_title_tv;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.dialog_voice_cancel;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.dialog_voice_rv;
                    RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                    if (recyclerView != null) {
                        i = R.id.loading_layout;
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                        if (linearLayout != null) {
                            i = R.id.progress;
                            ProgressBar progressBar = (ProgressBar) view.findViewById(i);
                            if (progressBar != null) {
                                i = R.id.tip_text;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    return new VoicePackDialogListBinding((RelativeLayout) view, imageView, viewFindViewById, textView, textView2, recyclerView, linearLayout, progressBar, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static VoicePackDialogListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static VoicePackDialogListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.voice_pack_dialog_list, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public RelativeLayout getRoot() {
        return this.rootView;
    }
}
