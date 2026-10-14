package cn.mucang.android.jiakaoyi.k3collect.manager.map;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.k3collect.databinding.K3SiteMapEditDialogBinding;
import cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.K3ExamSiteSelectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.GpsBaseSelectActivity;
import cn.mucang.android.selectcity.SelectCityStartupActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.autonavi.base.amap.mapcore.tools.GLMapStaticValue;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function6;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0013\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u001c\u001a\u00020\u000eH\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000RJ\u0010\u000b\u001a2\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3SiteMapEditDialog;", "Landroidx/fragment/app/DialogFragment;", "siteMapModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V", "cityCode", "", "gpsBaseId", "", "Ljava/lang/Long;", "mSiteId", "onSave", "Lkotlin/Function6;", "", "", "getOnSave", "()Lkotlin/jvm/functions/Function6;", "setOnSave", "(Lkotlin/jvm/functions/Function6;)V", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3SiteMapEditDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExamSiteModel f4094a;
    private Function6<? super String, ? super String, ? super String, ? super String, ? super Long, ? super Boolean, kotlin.v> b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4095d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Long f4096e;

    public K3SiteMapEditDialog(ExamSiteModel examSiteModel) {
        this.f4094a = examSiteModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(K3SiteMapEditDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(final K3SiteMapEditDialog this$0, final K3SiteMapEditDialogBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        if (kotlin.jvm.internal.r.a(this$0.getTag(), "type_edit")) {
            cn.mucang.android.core.utils.u.h("只可以编辑公开考场");
            return;
        }
        Intent intent = new Intent(this$0.getActivity(), (Class<?>) SelectCityStartupActivity.class);
        intent.putExtra(SelectCityStartupActivity.EXTRA_SHOW_LOCATION_PANEL, false);
        intent.putExtra(SelectCityStartupActivity.EXTRA_SHOW_WHOLE_COUNTRY, false);
        intent.putExtra(SelectCityStartupActivity.EXTRA_ONLY_SHOW_CITY, true);
        f.a.a.a.j.a.a(this$0.getActivity()).c(intent, 1000, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.r
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent2) {
                K3SiteMapEditDialog.D(this.f4148a, viewBinding, i, i2, intent2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(K3SiteMapEditDialog this$0, K3SiteMapEditDialogBinding viewBinding, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        if (i2 == -1) {
            String stringExtra = intent.getStringExtra(SelectCityStartupActivity.RESULT_CITY_CODE);
            String stringExtra2 = intent.getStringExtra(SelectCityStartupActivity.RESULT_CITY_NAME);
            if (kotlin.jvm.internal.r.a(this$0.c, stringExtra)) {
                return;
            }
            viewBinding.cityName.setText(stringExtra2);
            this$0.c = stringExtra;
            viewBinding.nameSite.setText("");
            this$0.f4095d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(final K3SiteMapEditDialog this$0, final K3SiteMapEditDialogBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        if (kotlin.jvm.internal.r.a(this$0.getTag(), "type_edit")) {
            cn.mucang.android.core.utils.u.h("只可以编辑公开考场");
        } else {
            if (n0.e(this$0.c)) {
                cn.mucang.android.core.utils.u.h("请选择城市");
                return;
            }
            Intent intent = new Intent(this$0.getActivity(), (Class<?>) K3ExamSiteSelectActivity.class);
            intent.putExtra("cityCode", this$0.c);
            f.a.a.a.j.a.a(this$0.getActivity()).c(intent, GLMapStaticValue.MAPRENDER_CAN_STOP_AND_FULLSCREEN_RENDEROVER, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.w
                @Override // f.a.a.a.j.c
                public final void onActivityResult(int i, int i2, Intent intent2) {
                    K3SiteMapEditDialog.F(viewBinding, this$0, i, i2, intent2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(K3SiteMapEditDialogBinding viewBinding, K3SiteMapEditDialog this$0, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (i2 == -1) {
            String stringExtra = intent.getStringExtra("siteId");
            viewBinding.nameSite.setText(intent.getStringExtra("siteName"));
            this$0.f4095d = stringExtra;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(final K3SiteMapEditDialog this$0, final K3SiteMapEditDialogBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        if (n0.e(this$0.c)) {
            cn.mucang.android.core.utils.u.h("请选择城市");
            return;
        }
        GpsBaseSelectActivity.a aVar = GpsBaseSelectActivity.c;
        androidx.fragment.app.d activity = this$0.getActivity();
        kotlin.jvm.internal.r.c(activity);
        kotlin.jvm.internal.r.d(activity, "activity!!");
        String str = this$0.c;
        kotlin.jvm.internal.r.c(str);
        aVar.b(activity, str, new Function2<Long, String, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.K3SiteMapEditDialog$onCreateView$4$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ kotlin.v invoke(Long l, String str2) {
                invoke(l.longValue(), str2);
                return kotlin.v.f15822a;
            }

            public final void invoke(long j, String gpsBaseName) {
                kotlin.jvm.internal.r.e(gpsBaseName, "gpsBaseName");
                this.this$0.f4096e = Long.valueOf(j);
                viewBinding.gpsBase.setText(gpsBaseName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(K3SiteMapEditDialogBinding viewBinding, K3SiteMapEditDialog this$0, View view) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        String string = viewBinding.cityName.getText().toString();
        if (n0.e(string) || n0.e(this$0.c)) {
            cn.mucang.android.core.utils.u.h("请选择城市");
            return;
        }
        String string2 = viewBinding.nameSite.getText().toString();
        if (n0.e(string2) || n0.e(this$0.f4095d)) {
            cn.mucang.android.core.utils.u.h("请选择考场");
            return;
        }
        if (viewBinding.gpsBaseLayout.getVisibility() == 0 && (n0.e(viewBinding.gpsBase.getText().toString()) || this$0.f4096e == null)) {
            cn.mucang.android.core.utils.u.h("请选择基站");
            return;
        }
        Function6<String, String, String, String, Long, Boolean, kotlin.v> function6S = this$0.s();
        if (function6S != null) {
            String str = this$0.f4095d;
            kotlin.jvm.internal.r.c(str);
            function6S.invoke(str, string2, string, this$0.c, this$0.f4096e, Boolean.valueOf(viewBinding.isPublicIv.isSelected()));
        }
        this$0.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(View view) {
        view.setSelected(!view.isSelected());
    }

    public final void J(Function6<? super String, ? super String, ? super String, ? super String, ? super Long, ? super Boolean, kotlin.v> function6) {
        this.b = function6;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(1, R.style.jiakaoyi_dialog_fragment);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        String str;
        String str2;
        kotlin.jvm.internal.r.e(inflater, "inflater");
        final K3SiteMapEditDialogBinding k3SiteMapEditDialogBindingInflate = K3SiteMapEditDialogBinding.inflate(inflater, container, false);
        kotlin.jvm.internal.r.d(k3SiteMapEditDialogBindingInflate, "inflate(inflater, container, false)");
        k3SiteMapEditDialogBindingInflate.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3SiteMapEditDialog.B(this.f4150a, view);
            }
        });
        TextView textView = k3SiteMapEditDialogBindingInflate.titleTv;
        String tag = getTag();
        String str3 = "采集新地图";
        if (tag != null) {
            int iHashCode = tag.hashCode();
            if (iHashCode == 14662949) {
                tag.equals("type_collect");
            } else if (iHashCode == 518917103 && tag.equals("type_edit")) {
                str3 = "地图信息编辑";
            }
        }
        textView.setText(str3);
        ExamSiteModel examSiteModel = this.f4094a;
        this.c = examSiteModel == null ? null : examSiteModel.cityCode;
        this.f4095d = String.valueOf(examSiteModel != null ? Long.valueOf(examSiteModel.examSiteId) : null);
        TextView textView2 = k3SiteMapEditDialogBindingInflate.nameSite;
        ExamSiteModel examSiteModel2 = this.f4094a;
        String str4 = "";
        if (examSiteModel2 == null || (str = examSiteModel2.examSiteName) == null) {
            str = "";
        }
        textView2.setText(str);
        ImageView imageView = k3SiteMapEditDialogBindingInflate.isPublicIv;
        ExamSiteModel examSiteModel3 = this.f4094a;
        imageView.setSelected(examSiteModel3 == null ? true : examSiteModel3.canPublic);
        TextView textView3 = k3SiteMapEditDialogBindingInflate.cityName;
        ExamSiteModel examSiteModel4 = this.f4094a;
        if (examSiteModel4 != null && (str2 = examSiteModel4.cityName) != null) {
            str4 = str2;
        }
        textView3.setText(str4);
        k3SiteMapEditDialogBindingInflate.cityName.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3SiteMapEditDialog.C(this.f4149a, k3SiteMapEditDialogBindingInflate, view);
            }
        });
        k3SiteMapEditDialogBindingInflate.nameSite.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3SiteMapEditDialog.E(this.f4151a, k3SiteMapEditDialogBindingInflate, view);
            }
        });
        k3SiteMapEditDialogBindingInflate.gpsBaseLayout.setVisibility(kotlin.jvm.internal.r.a(getTag(), "type_edit") ? 8 : 0);
        k3SiteMapEditDialogBindingInflate.gpsBase.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3SiteMapEditDialog.G(this.f4144a, k3SiteMapEditDialogBindingInflate, view);
            }
        });
        TextView textView4 = k3SiteMapEditDialogBindingInflate.okTv;
        String tag2 = getTag();
        String str5 = "开始采集";
        if (tag2 != null) {
            int iHashCode2 = tag2.hashCode();
            if (iHashCode2 == 14662949) {
                tag2.equals("type_collect");
            } else if (iHashCode2 == 518917103 && tag2.equals("type_edit")) {
                str5 = "保存";
            }
        }
        textView4.setText(str5);
        k3SiteMapEditDialogBindingInflate.okTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3SiteMapEditDialog.H(k3SiteMapEditDialogBindingInflate, this, view);
            }
        });
        k3SiteMapEditDialogBindingInflate.isPublicIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.manager.map.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3SiteMapEditDialog.I(view);
            }
        });
        return k3SiteMapEditDialogBindingInflate.getRoot();
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        Window window2;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -1);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.addFlags(1024);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 == null) {
            return;
        }
        dialog3.setCanceledOnTouchOutside(false);
    }

    public final Function6<String, String, String, String, Long, Boolean, kotlin.v> s() {
        return this.b;
    }
}
