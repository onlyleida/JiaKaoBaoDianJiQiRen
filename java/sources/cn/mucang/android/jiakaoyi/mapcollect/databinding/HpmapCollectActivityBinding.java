package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.R;

/* JADX INFO: loaded from: classes3.dex */
public final class HpmapCollectActivityBinding implements a {
    public final ImageView back;
    public final Button collectDone;
    public final TextView collectInfo;
    public final Button collectOrigin;
    public final RecyclerView collectedList;
    public final TextView gpsBaseDistance;
    public final TextView gpsBaseName;
    public final TextView gpsInfo;
    public final RecyclerView leftMirrorList;
    public final TextView lookEg;
    public final MapView mapView;
    public final View maskView;
    public final RecyclerView pointList;
    public final Spinner posType;
    public final Spinner projectList;
    public final RecyclerView rightMirrorList;
    public final LinearLayout rightSteps;
    public final TextView rightTitle;
    private final LinearLayout rootView;
    public final View splitLine;
    public final TextView title;
    public final TextView topRightAction;
    public final EditText tunnelDistanceEt;
    public final LinearLayout tunnelDistanceLl;

    private HpmapCollectActivityBinding(LinearLayout linearLayout, ImageView imageView, Button button, TextView textView, Button button2, RecyclerView recyclerView, TextView textView2, TextView textView3, TextView textView4, RecyclerView recyclerView2, TextView textView5, MapView mapView, View view, RecyclerView recyclerView3, Spinner spinner, Spinner spinner2, RecyclerView recyclerView4, LinearLayout linearLayout2, TextView textView6, View view2, TextView textView7, TextView textView8, EditText editText, LinearLayout linearLayout3) {
        this.rootView = linearLayout;
        this.back = imageView;
        this.collectDone = button;
        this.collectInfo = textView;
        this.collectOrigin = button2;
        this.collectedList = recyclerView;
        this.gpsBaseDistance = textView2;
        this.gpsBaseName = textView3;
        this.gpsInfo = textView4;
        this.leftMirrorList = recyclerView2;
        this.lookEg = textView5;
        this.mapView = mapView;
        this.maskView = view;
        this.pointList = recyclerView3;
        this.posType = spinner;
        this.projectList = spinner2;
        this.rightMirrorList = recyclerView4;
        this.rightSteps = linearLayout2;
        this.rightTitle = textView6;
        this.splitLine = view2;
        this.title = textView7;
        this.topRightAction = textView8;
        this.tunnelDistanceEt = editText;
        this.tunnelDistanceLl = linearLayout3;
    }

    public static HpmapCollectActivityBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        int i = R.id.back;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.collectDone;
            Button button = (Button) view.findViewById(i);
            if (button != null) {
                i = R.id.collect_info;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    i = R.id.collectOrigin;
                    Button button2 = (Button) view.findViewById(i);
                    if (button2 != null) {
                        i = R.id.collectedList;
                        RecyclerView recyclerView = (RecyclerView) view.findViewById(i);
                        if (recyclerView != null) {
                            i = R.id.gps_base_distance;
                            TextView textView2 = (TextView) view.findViewById(i);
                            if (textView2 != null) {
                                i = R.id.gps_base_name;
                                TextView textView3 = (TextView) view.findViewById(i);
                                if (textView3 != null) {
                                    i = R.id.gps_info;
                                    TextView textView4 = (TextView) view.findViewById(i);
                                    if (textView4 != null) {
                                        i = R.id.leftMirrorList;
                                        RecyclerView recyclerView2 = (RecyclerView) view.findViewById(i);
                                        if (recyclerView2 != null) {
                                            i = R.id.lookEg;
                                            TextView textView5 = (TextView) view.findViewById(i);
                                            if (textView5 != null) {
                                                i = R.id.mapView;
                                                MapView mapView = (MapView) view.findViewById(i);
                                                if (mapView != null && (viewFindViewById = view.findViewById((i = R.id.mask_view))) != null) {
                                                    i = R.id.pointList;
                                                    RecyclerView recyclerView3 = (RecyclerView) view.findViewById(i);
                                                    if (recyclerView3 != null) {
                                                        i = R.id.pos_type;
                                                        Spinner spinner = (Spinner) view.findViewById(i);
                                                        if (spinner != null) {
                                                            i = R.id.projectList;
                                                            Spinner spinner2 = (Spinner) view.findViewById(i);
                                                            if (spinner2 != null) {
                                                                i = R.id.rightMirrorList;
                                                                RecyclerView recyclerView4 = (RecyclerView) view.findViewById(i);
                                                                if (recyclerView4 != null) {
                                                                    i = R.id.right_steps;
                                                                    LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                                                    if (linearLayout != null) {
                                                                        i = R.id.right_title;
                                                                        TextView textView6 = (TextView) view.findViewById(i);
                                                                        if (textView6 != null && (viewFindViewById2 = view.findViewById((i = R.id.split_line))) != null) {
                                                                            i = R.id.title;
                                                                            TextView textView7 = (TextView) view.findViewById(i);
                                                                            if (textView7 != null) {
                                                                                i = R.id.top_right_action;
                                                                                TextView textView8 = (TextView) view.findViewById(i);
                                                                                if (textView8 != null) {
                                                                                    i = R.id.tunnel_distance_et;
                                                                                    EditText editText = (EditText) view.findViewById(i);
                                                                                    if (editText != null) {
                                                                                        i = R.id.tunnel_distance_ll;
                                                                                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                                                                                        if (linearLayout2 != null) {
                                                                                            return new HpmapCollectActivityBinding((LinearLayout) view, imageView, button, textView, button2, recyclerView, textView2, textView3, textView4, recyclerView2, textView5, mapView, viewFindViewById, recyclerView3, spinner, spinner2, recyclerView4, linearLayout, textView6, viewFindViewById2, textView7, textView8, editText, linearLayout2);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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

    public static HpmapCollectActivityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HpmapCollectActivityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hpmap__collect_activity, viewGroup, false);
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
