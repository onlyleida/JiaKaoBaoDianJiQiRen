package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.TeachingTitleBinding;
import com.serenegiant.usb.widget.UVCCameraTextureView;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCameraManageBinding implements a {
    public final UVCCameraTextureView cameraView;
    public final RecyclerView dataRv;
    public final TextView descTv;
    public final TextView previewTv;
    public final View rightBg;
    private final ConstraintLayout rootView;
    public final TeachingTitleBinding title;

    private ActivityCameraManageBinding(ConstraintLayout constraintLayout, UVCCameraTextureView uVCCameraTextureView, RecyclerView recyclerView, TextView textView, TextView textView2, View view, TeachingTitleBinding teachingTitleBinding) {
        this.rootView = constraintLayout;
        this.cameraView = uVCCameraTextureView;
        this.dataRv = recyclerView;
        this.descTv = textView;
        this.previewTv = textView2;
        this.rightBg = view;
        this.title = teachingTitleBinding;
    }

    public static ActivityCameraManageBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.cameraView;
        UVCCameraTextureView uVCCameraTextureView = (UVCCameraTextureView) view.findViewById(i);
        if (uVCCameraTextureView != null) {
            i = R.id.dataRv;
            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
            if (recyclerView != null) {
                i = R.id.descTv;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.previewTv;
                    TextView textView2 = (TextView) view.findViewById(i);
                    if (textView2 != null && (viewFindViewById = view.findViewById((i = R.id.rightBg))) != null && (viewFindViewById2 = view.findViewById((i = R.id.title))) != null) {
                        return new ActivityCameraManageBinding((ConstraintLayout) view, uVCCameraTextureView, recyclerView, textView, textView2, viewFindViewById, TeachingTitleBinding.bind(viewFindViewById2));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityCameraManageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCameraManageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_camera_manage, viewGroup, false);
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
