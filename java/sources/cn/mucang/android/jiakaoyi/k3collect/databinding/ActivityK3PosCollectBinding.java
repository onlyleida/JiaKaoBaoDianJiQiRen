package cn.mucang.android.jiakaoyi.k3collect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.customview.VerticalSeekBar;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityK3PosCollectBinding implements a {
    public final ImageView back;
    public final TextView backCurrentLocation;
    public final View backgroundRoute;
    public final FrameLayout container;
    public final FrameLayout containerEditLayout;
    public final View divider1;
    public final View divider2;
    public final TextView gpsBaseName;
    public final TextView gpsBaseNameValue;
    public final TextView gpsBaseX;
    public final TextView gpsBaseXValue;
    public final TextView gpsBaseY;
    public final TextView gpsBaseYValue;
    public final TextView gpsInfo;
    public final TextView gpsInfoValue;
    public final TextView gpsLatitude;
    public final TextView gpsLatitudeValue;
    public final TextView gpsLongitude;
    public final TextView gpsLongitudeValue;
    public final TextView gpsStatus;
    public final TextView gpsStatusValue;
    public final Group groupLineType;
    public final ConstraintLayout layoutCollect;
    public final LinearLayout llDeletePos;
    public final LinearLayout llMerge;
    public final LinearLayout llScale;
    public final MapView mapView;
    public final TextView preView;
    private final ConstraintLayout rootView;
    public final ImageView scaleAdd;
    public final ImageView scaleMinus;
    public final VerticalSeekBar seekBar;
    public final Spinner spLineTypeList;
    public final TextView title;
    public final TextView topRightAction;
    public final TextView tvDeleteLine;
    public final Button tvDeletePos;
    public final TextView tvDistance;
    public final TextView tvLineType;
    public final TextView tvMerge;
    public final TextView tvMergeSwitch;
    public final TextView tvRouteName;
    public final TextView tvSaveLine;
    public final TextView tvSaveRoute;
    public final Button tvSplit;

    private ActivityK3PosCollectBinding(ConstraintLayout constraintLayout, ImageView imageView, TextView textView, View view, FrameLayout frameLayout, FrameLayout frameLayout2, View view2, View view3, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, TextView textView15, Group group, ConstraintLayout constraintLayout2, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, MapView mapView, TextView textView16, ImageView imageView2, ImageView imageView3, VerticalSeekBar verticalSeekBar, Spinner spinner, TextView textView17, TextView textView18, TextView textView19, Button button, TextView textView20, TextView textView21, TextView textView22, TextView textView23, TextView textView24, TextView textView25, TextView textView26, Button button2) {
        this.rootView = constraintLayout;
        this.back = imageView;
        this.backCurrentLocation = textView;
        this.backgroundRoute = view;
        this.container = frameLayout;
        this.containerEditLayout = frameLayout2;
        this.divider1 = view2;
        this.divider2 = view3;
        this.gpsBaseName = textView2;
        this.gpsBaseNameValue = textView3;
        this.gpsBaseX = textView4;
        this.gpsBaseXValue = textView5;
        this.gpsBaseY = textView6;
        this.gpsBaseYValue = textView7;
        this.gpsInfo = textView8;
        this.gpsInfoValue = textView9;
        this.gpsLatitude = textView10;
        this.gpsLatitudeValue = textView11;
        this.gpsLongitude = textView12;
        this.gpsLongitudeValue = textView13;
        this.gpsStatus = textView14;
        this.gpsStatusValue = textView15;
        this.groupLineType = group;
        this.layoutCollect = constraintLayout2;
        this.llDeletePos = linearLayout;
        this.llMerge = linearLayout2;
        this.llScale = linearLayout3;
        this.mapView = mapView;
        this.preView = textView16;
        this.scaleAdd = imageView2;
        this.scaleMinus = imageView3;
        this.seekBar = verticalSeekBar;
        this.spLineTypeList = spinner;
        this.title = textView17;
        this.topRightAction = textView18;
        this.tvDeleteLine = textView19;
        this.tvDeletePos = button;
        this.tvDistance = textView20;
        this.tvLineType = textView21;
        this.tvMerge = textView22;
        this.tvMergeSwitch = textView23;
        this.tvRouteName = textView24;
        this.tvSaveLine = textView25;
        this.tvSaveRoute = textView26;
        this.tvSplit = button2;
    }

    public static ActivityK3PosCollectBinding bind(View view) {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        int i = R.id.back;
        ImageView imageView = (ImageView) view.findViewById(i);
        if (imageView != null) {
            i = R.id.backCurrentLocation;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null && (viewFindViewById = view.findViewById((i = R.id.backgroundRoute))) != null) {
                i = R.id.container;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(i);
                if (frameLayout != null) {
                    i = R.id.containerEditLayout;
                    FrameLayout frameLayout2 = (FrameLayout) view.findViewById(i);
                    if (frameLayout2 != null && (viewFindViewById2 = view.findViewById((i = R.id.divider1))) != null && (viewFindViewById3 = view.findViewById((i = R.id.divider2))) != null) {
                        i = R.id.gps_base_name;
                        TextView textView2 = (TextView) view.findViewById(i);
                        if (textView2 != null) {
                            i = R.id.gps_base_name_value;
                            TextView textView3 = (TextView) view.findViewById(i);
                            if (textView3 != null) {
                                i = R.id.gps_baseX;
                                TextView textView4 = (TextView) view.findViewById(i);
                                if (textView4 != null) {
                                    i = R.id.gps_baseX_value;
                                    TextView textView5 = (TextView) view.findViewById(i);
                                    if (textView5 != null) {
                                        i = R.id.gps_baseY;
                                        TextView textView6 = (TextView) view.findViewById(i);
                                        if (textView6 != null) {
                                            i = R.id.gps_baseY_value;
                                            TextView textView7 = (TextView) view.findViewById(i);
                                            if (textView7 != null) {
                                                i = R.id.gps_info;
                                                TextView textView8 = (TextView) view.findViewById(i);
                                                if (textView8 != null) {
                                                    i = R.id.gps_info_value;
                                                    TextView textView9 = (TextView) view.findViewById(i);
                                                    if (textView9 != null) {
                                                        i = R.id.gps_latitude;
                                                        TextView textView10 = (TextView) view.findViewById(i);
                                                        if (textView10 != null) {
                                                            i = R.id.gps_latitude_value;
                                                            TextView textView11 = (TextView) view.findViewById(i);
                                                            if (textView11 != null) {
                                                                i = R.id.gps_longitude;
                                                                TextView textView12 = (TextView) view.findViewById(i);
                                                                if (textView12 != null) {
                                                                    i = R.id.gps_longitude_value;
                                                                    TextView textView13 = (TextView) view.findViewById(i);
                                                                    if (textView13 != null) {
                                                                        i = R.id.gps_status;
                                                                        TextView textView14 = (TextView) view.findViewById(i);
                                                                        if (textView14 != null) {
                                                                            i = R.id.gps_status_value;
                                                                            TextView textView15 = (TextView) view.findViewById(i);
                                                                            if (textView15 != null) {
                                                                                i = R.id.group_line_type;
                                                                                Group group = (Group) view.findViewById(i);
                                                                                if (group != null) {
                                                                                    i = R.id.layoutCollect;
                                                                                    ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i);
                                                                                    if (constraintLayout != null) {
                                                                                        i = R.id.llDeletePos;
                                                                                        LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                                                                                        if (linearLayout != null) {
                                                                                            i = R.id.ll_merge;
                                                                                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                                                                                            if (linearLayout2 != null) {
                                                                                                i = R.id.llScale;
                                                                                                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                                                                                                if (linearLayout3 != null) {
                                                                                                    i = R.id.mapView;
                                                                                                    MapView mapView = (MapView) view.findViewById(i);
                                                                                                    if (mapView != null) {
                                                                                                        i = R.id.preView;
                                                                                                        TextView textView16 = (TextView) view.findViewById(i);
                                                                                                        if (textView16 != null) {
                                                                                                            i = R.id.scaleAdd;
                                                                                                            ImageView imageView2 = (ImageView) view.findViewById(i);
                                                                                                            if (imageView2 != null) {
                                                                                                                i = R.id.scaleMinus;
                                                                                                                ImageView imageView3 = (ImageView) view.findViewById(i);
                                                                                                                if (imageView3 != null) {
                                                                                                                    i = R.id.seekBar;
                                                                                                                    VerticalSeekBar verticalSeekBar = (VerticalSeekBar) view.findViewById(i);
                                                                                                                    if (verticalSeekBar != null) {
                                                                                                                        i = R.id.spLineTypeList;
                                                                                                                        Spinner spinner = (Spinner) view.findViewById(i);
                                                                                                                        if (spinner != null) {
                                                                                                                            i = R.id.title;
                                                                                                                            TextView textView17 = (TextView) view.findViewById(i);
                                                                                                                            if (textView17 != null) {
                                                                                                                                i = R.id.topRightAction;
                                                                                                                                TextView textView18 = (TextView) view.findViewById(i);
                                                                                                                                if (textView18 != null) {
                                                                                                                                    i = R.id.tvDeleteLine;
                                                                                                                                    TextView textView19 = (TextView) view.findViewById(i);
                                                                                                                                    if (textView19 != null) {
                                                                                                                                        i = R.id.tvDeletePos;
                                                                                                                                        Button button = (Button) view.findViewById(i);
                                                                                                                                        if (button != null) {
                                                                                                                                            i = R.id.tvDistance;
                                                                                                                                            TextView textView20 = (TextView) view.findViewById(i);
                                                                                                                                            if (textView20 != null) {
                                                                                                                                                i = R.id.tvLineType;
                                                                                                                                                TextView textView21 = (TextView) view.findViewById(i);
                                                                                                                                                if (textView21 != null) {
                                                                                                                                                    i = R.id.tv_merge;
                                                                                                                                                    TextView textView22 = (TextView) view.findViewById(i);
                                                                                                                                                    if (textView22 != null) {
                                                                                                                                                        i = R.id.tv_merge_switch;
                                                                                                                                                        TextView textView23 = (TextView) view.findViewById(i);
                                                                                                                                                        if (textView23 != null) {
                                                                                                                                                            i = R.id.tvRouteName;
                                                                                                                                                            TextView textView24 = (TextView) view.findViewById(i);
                                                                                                                                                            if (textView24 != null) {
                                                                                                                                                                i = R.id.tvSaveLine;
                                                                                                                                                                TextView textView25 = (TextView) view.findViewById(i);
                                                                                                                                                                if (textView25 != null) {
                                                                                                                                                                    i = R.id.tvSaveRoute;
                                                                                                                                                                    TextView textView26 = (TextView) view.findViewById(i);
                                                                                                                                                                    if (textView26 != null) {
                                                                                                                                                                        i = R.id.tvSplit;
                                                                                                                                                                        Button button2 = (Button) view.findViewById(i);
                                                                                                                                                                        if (button2 != null) {
                                                                                                                                                                            return new ActivityK3PosCollectBinding((ConstraintLayout) view, imageView, textView, viewFindViewById, frameLayout, frameLayout2, viewFindViewById2, viewFindViewById3, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, group, constraintLayout, linearLayout, linearLayout2, linearLayout3, mapView, textView16, imageView2, imageView3, verticalSeekBar, spinner, textView17, textView18, textView19, button, textView20, textView21, textView22, textView23, textView24, textView25, textView26, button2);
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

    public static ActivityK3PosCollectBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityK3PosCollectBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_k3_pos_collect, viewGroup, false);
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
