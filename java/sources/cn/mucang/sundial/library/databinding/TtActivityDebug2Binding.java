package cn.mucang.sundial.library.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import androidx.viewbinding.a;
import cn.mucang.sundial.library.R;

/* JADX INFO: loaded from: classes5.dex */
public final class TtActivityDebug2Binding implements a {
    public final Button clearDebugLog;
    private final FrameLayout rootView;
    public final Button systemDebug;
    public final CheckBox useDebugCamera;
    public final CheckBox useDebugLoc;
    public final CheckBox useLocationData;
    public final CheckBox useObdLocation;

    private TtActivityDebug2Binding(FrameLayout frameLayout, Button button, Button button2, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4) {
        this.rootView = frameLayout;
        this.clearDebugLog = button;
        this.systemDebug = button2;
        this.useDebugCamera = checkBox;
        this.useDebugLoc = checkBox2;
        this.useLocationData = checkBox3;
        this.useObdLocation = checkBox4;
    }

    public static TtActivityDebug2Binding bind(View view) {
        String str;
        Button button = (Button) view.findViewById(R.id.clear_debug_log);
        if (button != null) {
            Button button2 = (Button) view.findViewById(R.id.system_debug);
            if (button2 != null) {
                CheckBox checkBox = (CheckBox) view.findViewById(R.id.use_debug_camera);
                if (checkBox != null) {
                    CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.use_debug_loc);
                    if (checkBox2 != null) {
                        CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.use_location_data);
                        if (checkBox3 != null) {
                            CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.use_obd_location);
                            if (checkBox4 != null) {
                                return new TtActivityDebug2Binding((FrameLayout) view, button, button2, checkBox, checkBox2, checkBox3, checkBox4);
                            }
                            str = "useObdLocation";
                        } else {
                            str = "useLocationData";
                        }
                    } else {
                        str = "useDebugLoc";
                    }
                } else {
                    str = "useDebugCamera";
                }
            } else {
                str = "systemDebug";
            }
        } else {
            str = "clearDebugLog";
        }
        throw new NullPointerException("Missing required view with ID: ".concat(str));
    }

    public static TtActivityDebug2Binding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static TtActivityDebug2Binding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.tt__activity_debug2, viewGroup, false);
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
