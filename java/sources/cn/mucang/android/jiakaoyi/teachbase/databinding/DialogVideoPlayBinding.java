package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.video.CommonVideoView;

/* JADX INFO: loaded from: classes4.dex */
public final class DialogVideoPlayBinding implements a {
    public final TextView closeTv;
    public final CommonVideoView commonVideo;
    private final FrameLayout rootView;
    public final TextView titleTv;
    public final TextView tvDesc;

    private DialogVideoPlayBinding(FrameLayout frameLayout, TextView textView, CommonVideoView commonVideoView, TextView textView2, TextView textView3) {
        this.rootView = frameLayout;
        this.closeTv = textView;
        this.commonVideo = commonVideoView;
        this.titleTv = textView2;
        this.tvDesc = textView3;
    }

    public static DialogVideoPlayBinding bind(View view) {
        int i = R.id.closeTv;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.commonVideo;
            CommonVideoView commonVideoView = (CommonVideoView) view.findViewById(i);
            if (commonVideoView != null) {
                i = R.id.titleTv;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = R.id.tv_desc;
                    TextView textView3 = (TextView) view.findViewById(i);
                    if (textView3 != null) {
                        return new DialogVideoPlayBinding((FrameLayout) view, textView, commonVideoView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static DialogVideoPlayBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DialogVideoPlayBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_video_play, viewGroup, false);
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
