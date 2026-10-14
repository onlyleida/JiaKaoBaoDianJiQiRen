package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class RobotFirmwareItemBinding implements a {
    public final TextView hardwareVersion;
    private final ConstraintLayout rootView;
    public final TextView text;
    public final TextView update;
    public final TextView upgrade;
    public final TextView versionLocal;
    public final TextView versionOnLine;

    private RobotFirmwareItemBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = constraintLayout;
        this.hardwareVersion = textView;
        this.text = textView2;
        this.update = textView3;
        this.upgrade = textView4;
        this.versionLocal = textView5;
        this.versionOnLine = textView6;
    }

    public static RobotFirmwareItemBinding bind(View view) {
        int i = R.id.hardwareVersion;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.text;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.update;
                TextView textView3 = (TextView) view.findViewById(i);
                if (textView3 != null) {
                    i = R.id.upgrade;
                    TextView textView4 = (TextView) view.findViewById(i);
                    if (textView4 != null) {
                        i = R.id.versionLocal;
                        TextView textView5 = (TextView) view.findViewById(i);
                        if (textView5 != null) {
                            i = R.id.versionOnLine;
                            TextView textView6 = (TextView) view.findViewById(i);
                            if (textView6 != null) {
                                return new RobotFirmwareItemBinding((ConstraintLayout) view, textView, textView2, textView3, textView4, textView5, textView6);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static RobotFirmwareItemBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RobotFirmwareItemBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.robot_firmware_item, viewGroup, false);
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
