package cn.mucang.android.jiakaoyi.teachbase.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ActivityCollectSiteBinding implements a {
    public final ImageView back;
    public final TextView collectInfo;
    public final Button collectPoint;
    public final Button finishItem;
    public final TextView gpsInfo;
    public final RecyclerView itemList;
    public final MapView mapView;
    private final LinearLayout rootView;
    public final TextView title;
    public final TextView topRightAction;

    private ActivityCollectSiteBinding(LinearLayout linearLayout, ImageView imageView, TextView textView, Button button, Button button2, TextView textView2, RecyclerView recyclerView, MapView mapView, TextView textView3, TextView textView4) {
        this.rootView = linearLayout;
        this.back = imageView;
        this.collectInfo = textView;
        this.collectPoint = button;
        this.finishItem = button2;
        this.gpsInfo = textView2;
        this.itemList = recyclerView;
        this.mapView = mapView;
        this.title = textView3;
        this.topRightAction = textView4;
    }

    public static ActivityCollectSiteBinding bind(View view) {
        int i = R.id.back;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.collect_info;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = R.id.collectPoint;
                Button button = (Button) view.findViewById(i);
                if (button != null) {
                    i = R.id.finishItem;
                    Button button2 = (Button) view.findViewById(i);
                    if (button2 != null) {
                        i = R.id.gps_info;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.itemList;
                            RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                            if (recyclerView != null) {
                                i = R.id.mapView;
                                MapView mapView = (MapView) view.findViewById(i);
                                if (mapView != null) {
                                    i = R.id.title;
                                    TextView textView3 = (TextView) view.findViewById(i);
                                    if (textView3 != null) {
                                        i = R.id.top_right_action;
                                        TextView textView4 = (TextView) view.findViewById(i);
                                        if (textView4 != null) {
                                            return new ActivityCollectSiteBinding((LinearLayout) view, imageView, textView, button, button2, textView2, recyclerView, mapView, textView3, textView4);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityCollectSiteBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCollectSiteBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_collect_site, viewGroup, false);
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
