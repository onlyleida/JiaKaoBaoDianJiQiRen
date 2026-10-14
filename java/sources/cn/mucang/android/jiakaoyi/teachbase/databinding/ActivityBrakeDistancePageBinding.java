package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityBrakeDistancePageBinding implements a {
    public final ImageView back;
    public final Button brake;
    public final RecyclerView brakeData;
    public final Button clearArguments;
    public final Button finishBrake;
    public final TextView info;
    private final FrameLayout rootView;
    public final Button unbrake;

    private ActivityBrakeDistancePageBinding(FrameLayout frameLayout, ImageView imageView, Button button, RecyclerView recyclerView, Button button2, Button button3, TextView textView, Button button4) {
        this.rootView = frameLayout;
        this.back = imageView;
        this.brake = button;
        this.brakeData = recyclerView;
        this.clearArguments = button2;
        this.finishBrake = button3;
        this.info = textView;
        this.unbrake = button4;
    }

    public static ActivityBrakeDistancePageBinding bind(View view) {
        int i = R.id.back;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.brake;
            Button button = (Button) view.findViewById(i);
            if (button != null) {
                i = R.id.brakeData;
                RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                if (recyclerView != null) {
                    i = R.id.clearArguments;
                    Button button2 = (Button) view.findViewById(i);
                    if (button2 != null) {
                        i = R.id.finishBrake;
                        Button button3 = (Button) view.findViewById(i);
                        if (button3 != null) {
                            i = R.id.info;
                            TextView textView = (TextView) view.findViewById(i);
                            if (textView != null) {
                                i = R.id.unbrake;
                                Button button4 = (Button) view.findViewById(i);
                                if (button4 != null) {
                                    return new ActivityBrakeDistancePageBinding((FrameLayout) view, imageView, button, recyclerView, button2, button3, textView, button4);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityBrakeDistancePageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBrakeDistancePageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_brake_distance_page, viewGroup, false);
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
