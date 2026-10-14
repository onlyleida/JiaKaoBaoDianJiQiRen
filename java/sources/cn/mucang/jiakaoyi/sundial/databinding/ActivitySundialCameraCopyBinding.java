package cn.mucang.jiakaoyi.sundial.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.jiakaoyi.sundial.R;

/* JADX INFO: loaded from: classes5.dex */
public final class ActivitySundialCameraCopyBinding implements a {
    public final Button btnCamera;
    public final Button btnCamera1;
    public final FrameLayout camera;
    private final ConstraintLayout rootView;

    private ActivitySundialCameraCopyBinding(ConstraintLayout constraintLayout, Button button, Button button2, FrameLayout frameLayout) {
        this.rootView = constraintLayout;
        this.btnCamera = button;
        this.btnCamera1 = button2;
        this.camera = frameLayout;
    }

    public static ActivitySundialCameraCopyBinding bind(View view) {
        int i = R.id.btnCamera;
        Button button = (Button) view.findViewById(i);
        if (button != null) {
            i = R.id.btnCamera1;
            Button button2 = (Button) view.findViewById(i);
            if (button2 != null) {
                i = R.id.camera;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                if (frameLayout != null) {
                    return new ActivitySundialCameraCopyBinding((ConstraintLayout) view, button, button2, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivitySundialCameraCopyBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySundialCameraCopyBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_sundial_camera_copy, viewGroup, false);
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
