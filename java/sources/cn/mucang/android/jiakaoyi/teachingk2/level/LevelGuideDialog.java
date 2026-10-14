package cn.mucang.android.jiakaoyi.teachingk2.level;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.DialogLevelGuideBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemLevelGuideBinding;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindInfo;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarInfoManager;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.u;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0005¢\u0006\u0002\u0010\tJ\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0015R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelGuideDialog;", "Landroid/app/Dialog;", "context", "Landroid/content/Context;", "list", "", "Lkotlin/Pair;", "", "", "(Landroid/content/Context;Ljava/util/List;)V", "colors", "viewBinding", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/DialogLevelGuideBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "ItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LevelGuideDialog extends Dialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Pair<String, Integer>> f7276a;
    private DialogLevelGuideBinding b;
    private final List<Integer> c;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.level.q$a */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0004\u0012\u00020\u00050\u0001B\u0005¢\u0006\u0002\u0010\u0006J*\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0017¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelGuideDialog$ItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lkotlin/Pair;", "", "", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelGuideDialog;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class a extends ViewBindingBinder<Pair<? extends String, ? extends Integer>, ItemLevelGuideBinding> {
        final /* synthetic */ LevelGuideDialog b;

        public a(LevelGuideDialog this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemLevelGuideBinding> holder, Pair<String, Integer> item) {
            ViewGroup.MarginLayoutParams marginLayoutParams;
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemLevelGuideBinding) holder.getViewBinding()).titleTv.setText(item.getFirst());
            View view = ((ItemLevelGuideBinding) holder.getViewBinding()).leftDivider;
            kotlin.jvm.internal.r.d(view, "holder.viewBinding.leftDivider");
            view.setVisibility(holder.getAdapterPosition() != 0 ? 0 : 8);
            View view2 = ((ItemLevelGuideBinding) holder.getViewBinding()).rightDivider;
            kotlin.jvm.internal.r.d(view2, "holder.viewBinding.rightDivider");
            view2.setVisibility(holder.getAdapterPosition() != u.l(this.b.f7276a) ? 0 : 8);
            int iIntValue = item.getSecond().intValue();
            if (iIntValue == 2) {
                ((ItemLevelGuideBinding) holder.getViewBinding()).bigIv.setVisibility(8);
                ViewGroup.LayoutParams layoutParams = ((ItemLevelGuideBinding) holder.getViewBinding()).titleTv.getLayoutParams();
                marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                if (marginLayoutParams != null) {
                    marginLayoutParams.topMargin = (int) this.b.getContext().getResources().getDimension(R.dimen.rpx_6);
                }
                ((ItemLevelGuideBinding) holder.getViewBinding()).leftDivider.setBackgroundColor(((Number) this.b.c.get(0)).intValue());
                ((ItemLevelGuideBinding) holder.getViewBinding()).rightDivider.setBackgroundColor(((Number) this.b.c.get(0)).intValue());
                ((ItemLevelGuideBinding) holder.getViewBinding()).smallIv.setImageResource(R.drawable.ic_level_guide_checked);
                ((ItemLevelGuideBinding) holder.getViewBinding()).titleTv.setTextColor(((Number) this.b.c.get(3)).intValue());
                return;
            }
            if (iIntValue == 3) {
                ((ItemLevelGuideBinding) holder.getViewBinding()).bigIv.setVisibility(0);
                ViewGroup.LayoutParams layoutParams2 = ((ItemLevelGuideBinding) holder.getViewBinding()).titleTv.getLayoutParams();
                marginLayoutParams = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
                if (marginLayoutParams != null) {
                    marginLayoutParams.topMargin = (int) this.b.getContext().getResources().getDimension(R.dimen.rpx_46);
                }
                ((ItemLevelGuideBinding) holder.getViewBinding()).leftDivider.setBackgroundColor(((Number) this.b.c.get(0)).intValue());
                ((ItemLevelGuideBinding) holder.getViewBinding()).rightDivider.setBackgroundColor(((Number) this.b.c.get(1)).intValue());
                ((ItemLevelGuideBinding) holder.getViewBinding()).titleTv.setTextColor(((Number) this.b.c.get(2)).intValue());
                return;
            }
            ((ItemLevelGuideBinding) holder.getViewBinding()).bigIv.setVisibility(8);
            ViewGroup.LayoutParams layoutParams3 = ((ItemLevelGuideBinding) holder.getViewBinding()).titleTv.getLayoutParams();
            marginLayoutParams = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
            if (marginLayoutParams != null) {
                marginLayoutParams.topMargin = (int) this.b.getContext().getResources().getDimension(R.dimen.rpx_6);
            }
            ((ItemLevelGuideBinding) holder.getViewBinding()).leftDivider.setBackgroundColor(((Number) this.b.c.get(1)).intValue());
            ((ItemLevelGuideBinding) holder.getViewBinding()).rightDivider.setBackgroundColor(((Number) this.b.c.get(1)).intValue());
            ((ItemLevelGuideBinding) holder.getViewBinding()).smallIv.setImageResource(R.drawable.ic_level_guide_unchecked);
            ((ItemLevelGuideBinding) holder.getViewBinding()).titleTv.setTextColor(((Number) this.b.c.get(3)).intValue());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LevelGuideDialog(Context context, List<Pair<String, Integer>> list) {
        super(context, R.style.jiakaoyi__dialog);
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(list, "list");
        this.f7276a = list;
        this.c = u.m(Integer.valueOf(Color.parseColor("#00A9FF")), Integer.valueOf(Color.parseColor("#E9EDF0")), Integer.valueOf(Color.parseColor("#008AFF")), Integer.valueOf(Color.parseColor("#707C8C")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(LevelGuideDialog this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        DialogExtensionKt.b(this$0);
    }

    @Override // android.app.Dialog
    @SuppressLint({"SetTextI18n"})
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
        DialogLevelGuideBinding dialogLevelGuideBindingInflate = DialogLevelGuideBinding.inflate(getLayoutInflater());
        kotlin.jvm.internal.r.d(dialogLevelGuideBindingInflate, "inflate(layoutInflater)");
        this.b = dialogLevelGuideBindingInflate;
        if (dialogLevelGuideBindingInflate == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        setContentView(dialogLevelGuideBindingInflate.getRoot());
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        DialogExtensionKt.c(this);
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setLayout((int) ((getContext().getResources().getDisplayMetrics().widthPixels * 1440.0f) / 1920.0f), -2);
        }
        CarBindInfo carBindInfoA = CarInfoManager.a();
        String driveSchoolName = carBindInfoA == null ? null : carBindInfoA.getDriveSchoolName();
        XyUserModel xyUserModelE = RobotAccount.i().e();
        String name = xyUserModelE == null ? null : xyUserModelE.getName();
        DialogLevelGuideBinding dialogLevelGuideBinding = this.b;
        if (dialogLevelGuideBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView = dialogLevelGuideBinding.titleTv;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_ai_car_help);
        kotlin.jvm.internal.r.d(strA, "getString(R.string.teachbase_ai_car_help)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{driveSchoolName}, 1));
        kotlin.jvm.internal.r.d(str, "java.lang.String.format(format, *args)");
        textView.setText(str);
        DialogLevelGuideBinding dialogLevelGuideBinding2 = this.b;
        if (dialogLevelGuideBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        TextView textView2 = dialogLevelGuideBinding2.descTv;
        String strA2 = k0.a(R.string.teachbase_welcome_help_tip);
        kotlin.jvm.internal.r.d(strA2, "getString(R.string.teachbase_welcome_help_tip)");
        String str2 = String.format(strA2, Arrays.copyOf(new Object[]{name, driveSchoolName}, 2));
        kotlin.jvm.internal.r.d(str2, "java.lang.String.format(format, *args)");
        textView2.setText(str2);
        DialogLevelGuideBinding dialogLevelGuideBinding3 = this.b;
        if (dialogLevelGuideBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        dialogLevelGuideBinding3.recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        DialogLevelGuideBinding dialogLevelGuideBinding4 = this.b;
        if (dialogLevelGuideBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        RecyclerView recyclerView = dialogLevelGuideBinding4.recyclerView;
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(Pair.class, new a(this));
        fVar.i(this.f7276a);
        v vVar = v.f15822a;
        recyclerView.setAdapter(fVar);
        DialogLevelGuideBinding dialogLevelGuideBinding5 = this.b;
        if (dialogLevelGuideBinding5 != null) {
            dialogLevelGuideBinding5.btnTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.level.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LevelGuideDialog.d(this.f7257a, view);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }
}
