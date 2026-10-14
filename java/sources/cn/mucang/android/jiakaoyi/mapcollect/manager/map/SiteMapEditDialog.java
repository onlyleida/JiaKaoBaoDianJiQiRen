package cn.mucang.android.jiakaoyi.mapcollect.manager.map;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.mapcollect.R;
import cn.mucang.android.jiakaoyi.mapcollect.databinding.EditSiteMapDialogBinding;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.GpsBaseSelectActivity;
import cn.mucang.android.selectcity.SelectCityStartupActivity;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.TextChecker;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function6;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000  2\u00020\u0001:\u0001 B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0016\u001a\u00020\u000b2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\b\u0010\u001f\u001a\u00020\u000bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007RJ\u0010\b\u001a2\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/SiteMapEditDialog;", "Landroidx/fragment/app/DialogFragment;", "()V", "cityCode", "", "gpsBaseId", "", "Ljava/lang/Long;", "onSave", "Lkotlin/Function6;", "", "", "getOnSave", "()Lkotlin/jvm/functions/Function6;", "setOnSave", "(Lkotlin/jvm/functions/Function6;)V", "siteModel", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getSiteModel", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "setSiteModel", "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "onStart", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SiteMapEditDialog extends androidx.fragment.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExamSiteModel f5080a;
    private Function6<? super String, ? super String, ? super String, ? super String, ? super Long, ? super Boolean, kotlin.v> b;
    private Long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5081d;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(final SiteMapEditDialog this$0, final EditSiteMapDialogBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        Intent intent = new Intent(this$0.getActivity(), (Class<?>) SelectCityStartupActivity.class);
        intent.putExtra(SelectCityStartupActivity.EXTRA_SHOW_LOCATION_PANEL, false);
        intent.putExtra(SelectCityStartupActivity.EXTRA_SHOW_WHOLE_COUNTRY, false);
        intent.putExtra(SelectCityStartupActivity.EXTRA_ONLY_SHOW_CITY, true);
        f.a.a.a.j.a.a(this$0.getActivity()).c(intent, 1000, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.v0
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent2) {
                SiteMapEditDialog.B(this.f5135a, viewBinding, i, i2, intent2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(SiteMapEditDialog this$0, EditSiteMapDialogBinding viewBinding, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        if (i2 == -1) {
            String stringExtra = intent.getStringExtra(SelectCityStartupActivity.RESULT_CITY_CODE);
            String stringExtra2 = intent.getStringExtra(SelectCityStartupActivity.RESULT_CITY_NAME);
            if (kotlin.jvm.internal.r.a(this$0.f5081d, stringExtra)) {
                return;
            }
            viewBinding.cityName.setText(stringExtra2);
            this$0.f5081d = stringExtra;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(final SiteMapEditDialog this$0, final EditSiteMapDialogBinding viewBinding, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        if (cn.mucang.android.core.utils.n0.e(this$0.f5081d)) {
            cn.mucang.android.core.utils.u.h("请选择城市");
            return;
        }
        GpsBaseSelectActivity.a aVar = GpsBaseSelectActivity.c;
        androidx.fragment.app.d activity = this$0.getActivity();
        kotlin.jvm.internal.r.c(activity);
        kotlin.jvm.internal.r.d(activity, "activity!!");
        aVar.b(activity, this$0.f5081d, new Function2<Long, String, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.SiteMapEditDialog$onCreateView$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ kotlin.v invoke(Long l, String str) {
                invoke(l.longValue(), str);
                return kotlin.v.f15822a;
            }

            public final void invoke(long j, String gpsBaseName) {
                kotlin.jvm.internal.r.e(gpsBaseName, "gpsBaseName");
                this.this$0.c = Long.valueOf(j);
                viewBinding.gpsBase.setText(gpsBaseName);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(EditSiteMapDialogBinding viewBinding, SiteMapEditDialog this$0, View view) {
        kotlin.jvm.internal.r.e(viewBinding, "$viewBinding");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        String string = viewBinding.nameSchool.getText().toString();
        if (TextChecker.b(string, "驾校名称")) {
            String string2 = viewBinding.nameSite.getText().toString();
            if (TextChecker.b(string2, "场地名称")) {
                String string3 = viewBinding.cityName.getText().toString();
                if (cn.mucang.android.core.utils.n0.e(string3) || cn.mucang.android.core.utils.n0.e(this$0.f5081d)) {
                    cn.mucang.android.core.utils.u.h("请选择城市");
                    return;
                }
                if (!kotlin.jvm.internal.r.a(this$0.getTag(), "type_edit") && (cn.mucang.android.core.utils.n0.e(viewBinding.gpsBase.getText().toString()) || this$0.c == null)) {
                    cn.mucang.android.core.utils.u.h("请选择基站");
                    return;
                }
                Function6<String, String, String, String, Long, Boolean, kotlin.v> function6S = this$0.s();
                if (function6S != null) {
                    function6S.invoke(string, string2, string3, this$0.f5081d, this$0.c, Boolean.valueOf(viewBinding.isPublicIv.isSelected()));
                }
                this$0.dismissAllowingStateLoss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(View view) {
        view.setSelected(!view.isSelected());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(SiteMapEditDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.dismissAllowingStateLoss();
    }

    public final void F(Function6<? super String, ? super String, ? super String, ? super String, ? super Long, ? super Boolean, kotlin.v> function6) {
        this.b = function6;
    }

    public final void G(ExamSiteModel examSiteModel) {
        this.f5080a = examSiteModel;
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
        String str3;
        kotlin.jvm.internal.r.e(inflater, "inflater");
        final EditSiteMapDialogBinding editSiteMapDialogBindingInflate = EditSiteMapDialogBinding.inflate(inflater, container, false);
        kotlin.jvm.internal.r.d(editSiteMapDialogBindingInflate, "inflate(inflater, container, false)");
        editSiteMapDialogBindingInflate.closeIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SiteMapEditDialog.z(this.f5129a, view);
            }
        });
        ExamSiteModel examSiteModel = this.f5080a;
        this.f5081d = examSiteModel == null ? null : examSiteModel.cityCode;
        EditText editText = editSiteMapDialogBindingInflate.nameSchool;
        String str4 = "";
        if (examSiteModel == null || (str = examSiteModel.driveSchoolName) == null) {
            str = "";
        }
        editText.setText(str);
        EditText editText2 = editSiteMapDialogBindingInflate.nameSite;
        ExamSiteModel examSiteModel2 = this.f5080a;
        if (examSiteModel2 == null || (str2 = examSiteModel2.examSiteName) == null) {
            str2 = "";
        }
        editText2.setText(str2);
        ImageView imageView = editSiteMapDialogBindingInflate.isPublicIv;
        ExamSiteModel examSiteModel3 = this.f5080a;
        imageView.setSelected(examSiteModel3 == null ? true : examSiteModel3.canPublic);
        TextView textView = editSiteMapDialogBindingInflate.cityName;
        ExamSiteModel examSiteModel4 = this.f5080a;
        if (examSiteModel4 != null && (str3 = examSiteModel4.cityName) != null) {
            str4 = str3;
        }
        textView.setText(str4);
        editSiteMapDialogBindingInflate.cityName.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.t0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SiteMapEditDialog.A(this.f5131a, editSiteMapDialogBindingInflate, view);
            }
        });
        editSiteMapDialogBindingInflate.gpsBaseLayout.setVisibility(kotlin.jvm.internal.r.a(getTag(), "type_edit") ? 8 : 0);
        editSiteMapDialogBindingInflate.gpsBase.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SiteMapEditDialog.C(this.f5133a, editSiteMapDialogBindingInflate, view);
            }
        });
        editSiteMapDialogBindingInflate.okTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SiteMapEditDialog.D(editSiteMapDialogBindingInflate, this, view);
            }
        });
        editSiteMapDialogBindingInflate.isPublicIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.manager.map.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SiteMapEditDialog.E(view);
            }
        });
        return editSiteMapDialogBindingInflate.getRoot();
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
