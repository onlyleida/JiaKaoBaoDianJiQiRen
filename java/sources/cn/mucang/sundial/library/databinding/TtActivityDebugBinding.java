package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;
import com.mobile.auth.gatewayauth.Constant;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityDebugBinding implements a {
    public final View debug2;
    public final Button forceCheckoutCoach;
    public final Button forceCheckoutStudent;
    public final Button restoreSystemLauncher;
    private final FrameLayout rootView;
    public final Button testCamera;
    public final TextView vendor;

    private TtActivityDebugBinding(FrameLayout frameLayout, View view, Button button, Button button2, Button button3, Button button4, TextView textView) {
        this.rootView = frameLayout;
        this.debug2 = view;
        this.forceCheckoutCoach = button;
        this.forceCheckoutStudent = button2;
        this.restoreSystemLauncher = button3;
        this.testCamera = button4;
        this.vendor = textView;
    }

    public static TtActivityDebugBinding bind(View view) {
        String str;
        View viewFindViewById = view.findViewById(R.id.debug2);
        if (viewFindViewById != null) {
            Button button = (Button) view.findViewById(R.id.force_checkout_coach);
            if (button != null) {
                Button button2 = (Button) view.findViewById(R.id.force_checkout_student);
                if (button2 != null) {
                    Button button3 = (Button) view.findViewById(R.id.restore_system_launcher);
                    if (button3 != null) {
                        Button button4 = (Button) view.findViewById(R.id.test_camera);
                        if (button4 != null) {
                            TextView textView = (TextView) view.findViewById(R.id.vendor);
                            if (textView != null) {
                                return new TtActivityDebugBinding((FrameLayout) view, viewFindViewById, button, button2, button3, button4, textView);
                            }
                            str = Constant.LOGIN_ACTIVITY_VENDOR_KEY;
                        } else {
                            str = "testCamera";
                        }
                    } else {
                        str = "restoreSystemLauncher";
                    }
                } else {
                    str = "forceCheckoutStudent";
                }
            } else {
                str = "forceCheckoutCoach";
            }
        } else {
            str = "debug2";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityDebugBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityDebugBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_debug, viewGroup, false);
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
