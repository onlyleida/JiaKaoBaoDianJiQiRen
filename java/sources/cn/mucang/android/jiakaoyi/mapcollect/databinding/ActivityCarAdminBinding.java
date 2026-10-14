package cn.mucang.android.jiakaoyi.mapcollect.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.a;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import com.mucang.android.jiakaoyi.uilib.databinding.CommonTitleBinding;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityCarAdminBinding implements a {
    public final RelativeLayout agencyCarDataManager;
    public final RelativeLayout carModelManager;
    public final RelativeLayout costDisplaySetting;
    public final RelativeLayout examSiteManager;
    public final RelativeLayout hpMapManager;
    private final LinearLayoutCompat rootView;
    public final RelativeLayout siteDataSave;
    public final CommonTitleBinding titleLayout;

    private ActivityCarAdminBinding(LinearLayoutCompat linearLayoutCompat, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RelativeLayout relativeLayout6, CommonTitleBinding commonTitleBinding) {
        this.rootView = linearLayoutCompat;
        this.agencyCarDataManager = relativeLayout;
        this.carModelManager = relativeLayout2;
        this.costDisplaySetting = relativeLayout3;
        this.examSiteManager = relativeLayout4;
        this.hpMapManager = relativeLayout5;
        this.siteDataSave = relativeLayout6;
        this.titleLayout = commonTitleBinding;
    }

    public static ActivityCarAdminBinding bind(View view) {
        View viewFindViewById;
        int i = R.id.agencyCarDataManager;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(i);
        if (relativeLayout != null) {
            i = R.id.carModelManager;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(i);
            if (relativeLayout2 != null) {
                i = R.id.costDisplaySetting;
                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(i);
                if (relativeLayout3 != null) {
                    i = R.id.examSiteManager;
                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(i);
                    if (relativeLayout4 != null) {
                        i = R.id.hpMapManager;
                        RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(i);
                        if (relativeLayout5 != null) {
                            i = R.id.siteDataSave;
                            RelativeLayout relativeLayout6 = (RelativeLayout) view.findViewById(i);
                            if (relativeLayout6 != null && (viewFindViewById = view.findViewById((i = R.id.titleLayout))) != null) {
                                return new ActivityCarAdminBinding((LinearLayoutCompat) view, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, relativeLayout6, CommonTitleBinding.bind(viewFindViewById));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static ActivityCarAdminBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityCarAdminBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.activity_car_admin, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }
}
