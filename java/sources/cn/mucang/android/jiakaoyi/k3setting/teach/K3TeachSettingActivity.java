package cn.mucang.android.jiakaoyi.k3setting.teach;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.core.utils.c0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.teach.K3TeachDataCreator;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.K3TeachEntity;
import cn.mucang.android.jiakaoyi.exam.k3.teach.model.TeachData;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.ActivityK3TeachSettingBinding;
import cn.mucang.android.jiakaoyi.k3setting.teach.binder.TeachStepItemBinder;
import cn.mucang.android.jiakaoyi.k3setting.teach.binder.TeachStepSelectItemBinder;
import cn.mucang.android.jiakaoyi.k3setting.teach.binder.TeachVoiceItemBinder;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\t*\u0001\u0014\u0018\u0000 42\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00014B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0012H\u0002J%\u0010\u001f\u001a\u0002H \"\b\b\u0000\u0010 *\u00020!2\f\u0010\"\u001a\b\u0012\u0004\u0012\u0002H 0#H\u0016¢\u0006\u0002\u0010$J<\u0010%\u001a\u00020\u00122\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00100'2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0002J\n\u0010*\u001a\u0004\u0018\u00010\nH\u0002J\b\u0010+\u001a\u00020,H\u0016J\b\u0010-\u001a\u00020\u001dH\u0014J\b\u0010.\u001a\u00020\u001dH\u0002J\u0010\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u00020\u0012H\u0002J\u0010\u00101\u001a\u00020\u001d2\u0006\u00102\u001a\u00020\u0010H\u0002J\b\u00103\u001a\u00020\u001dH\u0002R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u0016\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ActivityK3TeachSettingBinding;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "()V", "dataAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "getDataAdapter", "()Lcom/drakeet/multitype/MultiTypeAdapter;", "loadingDialog", "Lcn/mucang/android/jiakaoyi/framework/base/dialog/JLoadingDialog;", "popupWindow", "Landroid/widget/PopupWindow;", "selectData", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;", "selectK3TeachEntity", "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;", "selectStepIndex", "", "stepAdapter", "cn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1", "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$stepAdapter$1;", "stepItems", "", "Lcn/mucang/android/jiakaoyi/k3setting/teach/TeachStepItem;", "templateData", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;", "changeStep", "", "index", "create", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "findSelectIndex", "entities", "", "newStepItems", "oldStepItems", "getLoadingDialog", "getStatName", "", "init", "initSort", "initSpinner", "stepId", "renderDataRecyclerView", "it", "updateBottomView", "Companion", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3TeachSettingActivity extends BaseViewBindingActivity<ActivityK3TeachSettingBinding> implements m0.b {
    public static final a l = new a(null);
    private K3TeachSettingViewModel b;
    private JLoadingDialog c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PopupWindow f4659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TeachData f4660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private K3TeachEntity f4662g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<TeachStepItem> f4663h;
    private List<? extends K3TeachEntity> i;
    private final com.drakeet.multitype.f j;
    private final K3TeachSettingActivity$stepAdapter$1 k;

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$Companion;", "", "()V", "KEY_EXAM_SITE", "", "launch", "", "context", "Landroid/content/Context;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, ExamSiteModel examSite) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(examSite, "examSite");
            Intent intent = new Intent(context, (Class<?>) K3TeachSettingActivity.class);
            intent.putExtra("key_exam_site", examSite);
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4664a;

        static {
            int[] iArr = new int[LoadingState.values().length];
            iArr[LoadingState.Loading.ordinal()] = 1;
            iArr[LoadingState.Fail.ordinal()] = 2;
            iArr[LoadingState.Success.ordinal()] = 3;
            f4664a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007H\u0016J\u001a\u0010\r\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\tH\u0016¨\u0006\u0011"}, d2 = {"cn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingActivity$initSort$1", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", "clearView", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "getMovementFlags", "", "onMove", "", "target", "onSelectedChanged", "actionState", "onSwiped", "direction", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends androidx.recyclerview.widget.g.f {
        c() {
        }

        @Override // androidx.recyclerview.widget.g.f
        public void A(RecyclerView.c0 c0Var, int i) {
            View view;
            super.A(c0Var, i);
            if (i != 2 || c0Var == null || (view = c0Var.itemView) == null) {
                return;
            }
            view.setBackgroundColor(c0.a().getColor(R.color.lightOrderBgSelected));
        }

        @Override // androidx.recyclerview.widget.g.f
        public void B(RecyclerView.c0 viewHolder, int i) {
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
        }

        @Override // androidx.recyclerview.widget.g.f
        public void c(RecyclerView recyclerView, RecyclerView.c0 viewHolder) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
            super.c(recyclerView, viewHolder);
            viewHolder.itemView.setBackgroundColor(c0.a().getColor(R.color.lightOrderBgNormal));
        }

        @Override // androidx.recyclerview.widget.g.f
        public int k(RecyclerView recyclerView, RecyclerView.c0 viewHolder) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
            return androidx.recyclerview.widget.g.f.t(3, 0);
        }

        @Override // androidx.recyclerview.widget.g.f
        public boolean y(RecyclerView recyclerView, RecyclerView.c0 viewHolder, RecyclerView.c0 target) {
            kotlin.jvm.internal.r.e(recyclerView, "recyclerView");
            kotlin.jvm.internal.r.e(viewHolder, "viewHolder");
            kotlin.jvm.internal.r.e(target, "target");
            K3TeachSettingActivity.this.getJ().notifyItemMoved(viewHolder.getAbsoluteAdapterPosition(), target.getAbsoluteAdapterPosition());
            Collections.swap(K3TeachSettingActivity.this.getJ().c(), viewHolder.getAbsoluteAdapterPosition(), target.getAbsoluteAdapterPosition());
            return true;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity$stepAdapter$1] */
    public K3TeachSettingActivity() {
        List<K3TeachEntity> listCreateDefault = K3TeachDataCreator.createDefault();
        kotlin.jvm.internal.r.d(listCreateDefault, "createDefault()");
        this.i = listCreateDefault;
        this.j = new com.drakeet.multitype.f() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity$dataAdapter$1
            {
                super(null, 0, null, 7, null);
                g(TeachData.class, new TeachVoiceItemBinder(false, new Function2<TeachData, Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity$dataAdapter$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ kotlin.v invoke(TeachData teachData, Integer num) {
                        invoke(teachData, num.intValue());
                        return kotlin.v.f15822a;
                    }

                    public final void invoke(TeachData item, final int i) {
                        kotlin.jvm.internal.r.e(item, "item");
                        K3TeachSettingViewModel k3TeachSettingViewModel = k3TeachSettingActivity.b;
                        if (k3TeachSettingViewModel == null) {
                            kotlin.jvm.internal.r.u("viewModel");
                            throw null;
                        }
                        final K3TeachSettingActivity k3TeachSettingActivity = k3TeachSettingActivity;
                        final K3TeachSettingActivity$dataAdapter$1 k3TeachSettingActivity$dataAdapter$1 = this;
                        k3TeachSettingViewModel.l(item, new Function0<kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity.dataAdapter.1.1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ kotlin.v invoke() {
                                invoke2();
                                return kotlin.v.f15822a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                K3TeachEntity k3TeachEntity = k3TeachSettingActivity.f4662g;
                                if (k3TeachEntity == null) {
                                    return;
                                }
                                int i2 = i;
                                K3TeachSettingActivity$dataAdapter$1 k3TeachSettingActivity$dataAdapter$2 = k3TeachSettingActivity$dataAdapter$1;
                                k3TeachEntity.items.remove(i2);
                                k3TeachSettingActivity$dataAdapter$2.notifyDataSetChanged();
                            }
                        });
                    }
                }, 1, null));
            }
        };
        this.k = new com.drakeet.multitype.f() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity$stepAdapter$1
            {
                super(null, 0, null, 7, null);
                g(TeachStepItem.class, new TeachStepItemBinder(new Function2<TeachStepItem, Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.K3TeachSettingActivity$stepAdapter$1.1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ kotlin.v invoke(TeachStepItem teachStepItem, Integer num) {
                        invoke(teachStepItem, num.intValue());
                        return kotlin.v.f15822a;
                    }

                    public final void invoke(TeachStepItem item, int i) {
                        kotlin.jvm.internal.r.e(item, "item");
                        k3TeachSettingActivity.D(item.getStep().type);
                        k3TeachSettingActivity.o(i);
                        k3TeachSettingActivity.T();
                    }
                }));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(K3TeachSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        PopupWindow popupWindow = this$0.f4659d;
        boolean z = false;
        if (popupWindow != null && popupWindow.isShowing()) {
            z = true;
        }
        if (z) {
            PopupWindow popupWindow2 = this$0.f4659d;
            if (popupWindow2 == null) {
                return;
            }
            popupWindow2.dismiss();
            return;
        }
        PopupWindow popupWindow3 = this$0.f4659d;
        if (popupWindow3 != null) {
            popupWindow3.showAsDropDown(this$0.g().teachStepLayout);
        }
        PopupWindow popupWindow4 = this$0.f4659d;
        if (popupWindow4 != null) {
            popupWindow4.update(this$0.g().teachStepLayout.getWidth(), -2);
        }
        this$0.g().imgMore.setRotation(180.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(K3TeachSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        K3TeachEntity k3TeachEntity = this$0.f4662g;
        if (k3TeachEntity != null) {
            K3TeachSettingViewModel k3TeachSettingViewModel = this$0.b;
            if (k3TeachSettingViewModel == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            kotlin.jvm.internal.r.c(k3TeachEntity);
            k3TeachSettingViewModel.m(k3TeachEntity);
        }
    }

    private final void C() {
        new androidx.recyclerview.widget.g(new c()).g(g().recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(int i) {
        String str;
        PopupWindow popupWindow = this.f4659d;
        if (popupWindow != null && popupWindow.isShowing()) {
            PopupWindow popupWindow2 = this.f4659d;
            if (popupWindow2 != null) {
                popupWindow2.dismiss();
            }
            this.f4659d = null;
        }
        for (final K3TeachEntity k3TeachEntity : this.i) {
            if (k3TeachEntity.stepId == i) {
                View viewInflate = LayoutInflater.from(this).inflate(R.layout.popup_dialog_layout, (ViewGroup) null, false);
                RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler_view);
                recyclerView.setLayoutManager(new LinearLayoutManager(this));
                Drawable drawableF = androidx.core.a.a.f(this, R.drawable.shape_e0e0e0_divider);
                Resources resources = getResources();
                int i2 = R.dimen.dp_10;
                recyclerView.addItemDecoration(new cn.mucang.jiakaoyi.uilib.ui.widget.b(1, drawableF, (int) resources.getDimension(i2), (int) getResources().getDimension(i2)));
                com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
                fVar.g(TeachData.class, new TeachStepSelectItemBinder(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.m
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        K3TeachSettingActivity.E(this.f4681a, k3TeachEntity, (Integer) obj);
                    }
                }));
                List<TeachData> list = k3TeachEntity.items;
                kotlin.jvm.internal.r.d(list, "k3TeachEntity.items");
                fVar.i(list);
                kotlin.v vVar = kotlin.v.f15822a;
                recyclerView.setAdapter(fVar);
                PopupWindow popupWindow3 = new PopupWindow(viewInflate, g().teachStepLayout.getWidth(), -2);
                this.f4659d = popupWindow3;
                popupWindow3.setOutsideTouchable(true);
                PopupWindow popupWindow4 = this.f4659d;
                if (popupWindow4 != null) {
                    popupWindow4.setFocusable(true);
                }
                PopupWindow popupWindow5 = this.f4659d;
                if (popupWindow5 != null) {
                    popupWindow5.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#55000000")));
                }
                PopupWindow popupWindow6 = this.f4659d;
                if (popupWindow6 != null) {
                    popupWindow6.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.t
                        @Override // android.widget.PopupWindow.OnDismissListener
                        public final void onDismiss() {
                            K3TeachSettingActivity.F(this.f4688a);
                        }
                    });
                }
                List<TeachData> list2 = k3TeachEntity.items;
                kotlin.jvm.internal.r.d(list2, "k3TeachEntity.items");
                if (!list2.isEmpty()) {
                    this.f4660e = k3TeachEntity.items.get(0);
                    TextView textView = g().tvStepName;
                    TeachData teachData = this.f4660e;
                    String str2 = "";
                    if (teachData != null && (str = teachData.name) != null) {
                        str2 = str;
                    }
                    textView.setText(str2);
                    return;
                }
                return;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(K3TeachSettingActivity this$0, K3TeachEntity k3TeachEntity, Integer position) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(k3TeachEntity, "$k3TeachEntity");
        List<TeachData> list = k3TeachEntity.items;
        kotlin.jvm.internal.r.d(position, "position");
        this$0.f4660e = list.get(position.intValue());
        this$0.g().tvStepName.setText(k3TeachEntity.items.get(position.intValue()).name);
        PopupWindow popupWindow = this$0.f4659d;
        if (popupWindow == null) {
            return;
        }
        popupWindow.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(K3TeachSettingActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().imgMore.setRotation(BitmapDescriptorFactory.HUE_RED);
    }

    private final void S(K3TeachEntity k3TeachEntity) {
        com.drakeet.multitype.f fVar = this.j;
        List<TeachData> list = k3TeachEntity.items;
        kotlin.jvm.internal.r.d(list, "it.items");
        fVar.i(list);
        List<TeachData> list2 = k3TeachEntity.items;
        if (list2 == null || list2.size() <= 0) {
            g().teachStateLayout.d();
        } else {
            this.j.notifyDataSetChanged();
            g().teachStateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T() {
        K3TeachEntity k3TeachEntity = this.f4662g;
        if (k3TeachEntity != null) {
            if (!(k3TeachEntity != null && k3TeachEntity.teachNum == 0)) {
                g().deleteTv.setVisibility(0);
                return;
            }
        }
        g().deleteTv.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(int i) {
        List<TeachStepItem> list = this.f4663h;
        if (list != null) {
            kotlin.jvm.internal.r.c(list);
            if (list.size() > this.f4661f) {
                this.f4661f = i;
                K3TeachSettingViewModel k3TeachSettingViewModel = this.b;
                if (k3TeachSettingViewModel == null) {
                    kotlin.jvm.internal.r.u("viewModel");
                    throw null;
                }
                List<K3TeachEntity> listE = k3TeachSettingViewModel.q().e();
                kotlin.jvm.internal.r.c(listE);
                this.f4662g = listE.get(this.f4661f);
                List<TeachStepItem> list2 = this.f4663h;
                kotlin.jvm.internal.r.c(list2);
                int size = list2.size() - 1;
                if (size >= 0) {
                    int i2 = 0;
                    while (true) {
                        int i3 = i2 + 1;
                        List<TeachStepItem> list3 = this.f4663h;
                        kotlin.jvm.internal.r.c(list3);
                        list3.get(i2).d(i2 == this.f4661f);
                        if (i3 > size) {
                            break;
                        } else {
                            i2 = i3;
                        }
                    }
                }
                K3TeachSettingActivity$stepAdapter$1 k3TeachSettingActivity$stepAdapter$1 = this.k;
                List<TeachStepItem> list4 = this.f4663h;
                kotlin.jvm.internal.r.c(list4);
                k3TeachSettingActivity$stepAdapter$1.i(list4);
                notifyDataSetChanged();
                K3TeachEntity k3TeachEntity = this.f4662g;
                if (k3TeachEntity == null) {
                    return;
                }
                S(k3TeachEntity);
            }
        }
    }

    private final int p(List<K3TeachEntity> list, K3TeachEntity k3TeachEntity, List<TeachStepItem> list2, List<TeachStepItem> list3) {
        int iMax;
        if (k3TeachEntity == null) {
            return 0;
        }
        if ((!list3.isEmpty()) && list2.size() != list3.size() && (iMax = Math.max(list3.size(), list2.size())) > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (i < list2.size()) {
                    TeachStepItem teachStepItem = list2.get(i);
                    if (i < list3.size()) {
                        TeachStepItem teachStepItem2 = list3.get(i);
                        if (teachStepItem2.getStep().type != teachStepItem.getStep().type || !kotlin.jvm.internal.r.a(teachStepItem2.getName(), teachStepItem.getName())) {
                        }
                    }
                    return i;
                }
                if (i2 >= iMax) {
                    break;
                }
                i = i2;
            }
        }
        int size = list.size() - 1;
        if (size >= 0) {
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (list.get(i3).stepId == k3TeachEntity.stepId && list.get(i3).stepName.equals(k3TeachEntity.stepName)) {
                    return i3;
                }
                if (i4 > size) {
                    break;
                }
                i3 = i4;
            }
        }
        int size2 = list.size() - 1;
        if (size2 >= 0) {
            int i5 = 0;
            while (true) {
                int i6 = i5 + 1;
                if (list.get(i5).stepId == k3TeachEntity.stepId) {
                    return i5;
                }
                if (i6 <= size2) {
                    i5 = i6;
                }
            }
        }
        return 0;
    }

    private final JLoadingDialog r() {
        if (this.c == null) {
            this.c = new JLoadingDialog(this);
        }
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(K3TeachSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(K3TeachSettingActivity this$0, View view) {
        K3TeachEntity k3TeachEntity;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TeachData teachData = this$0.f4660e;
        kotlin.v vVar = null;
        if (teachData != null && (k3TeachEntity = this$0.f4662g) != null) {
            teachData.teachNum = k3TeachEntity.teachNum;
            teachData.remark = k3TeachEntity.remark;
            k3TeachEntity.items.add(teachData);
            this$0.g().recyclerView.scrollToPosition(k3TeachEntity.items.size() - 1);
            this$0.getJ().notifyDataSetChanged();
            this$0.g().teachStateLayout.c();
            vVar = kotlin.v.f15822a;
        }
        if (vVar == null) {
            cn.mucang.android.core.utils.u.h("没有选择考试步骤");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(K3TeachSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlinx.coroutines.g.b(androidx.lifecycle.s.a(this$0), w0.b(), null, new K3TeachSettingActivity$init$9$1(this$0, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void v(K3TeachSettingActivity this$0, List list) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (list == null || list.isEmpty()) {
            ((ActivityK3TeachSettingBinding) this$0.g()).stateLayout.d();
            return;
        }
        ((ActivityK3TeachSettingBinding) this$0.g()).stateLayout.c();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            K3TeachEntity k3TeachEntity = (K3TeachEntity) it.next();
            Step stepFindWithType = Step.findWithType(k3TeachEntity.stepId);
            kotlin.jvm.internal.r.d(stepFindWithType, "findWithType(it.stepId)");
            arrayList.add(new TeachStepItem(stepFindWithType, k3TeachEntity.stepName, false, 4, null));
        }
        this$0.f4663h = arrayList;
        K3TeachEntity k3TeachEntity2 = this$0.f4662g;
        kotlin.jvm.internal.r.c(arrayList);
        int iP = this$0.p(list, k3TeachEntity2, arrayList, this$0.k.c());
        this$0.f4661f = iP;
        List<TeachStepItem> list2 = this$0.f4663h;
        TeachStepItem teachStepItem = list2 == null ? null : list2.get(iP);
        if (teachStepItem != null) {
            teachStepItem.d(true);
        }
        this$0.f4662g = (K3TeachEntity) list.get(this$0.f4661f);
        this$0.T();
        K3TeachEntity k3TeachEntity3 = this$0.f4662g;
        if (k3TeachEntity3 == null) {
            return;
        }
        this$0.D(k3TeachEntity3.stepId);
        this$0.S(k3TeachEntity3);
        K3TeachSettingActivity$stepAdapter$1 k3TeachSettingActivity$stepAdapter$1 = this$0.k;
        List<TeachStepItem> list3 = this$0.f4663h;
        kotlin.jvm.internal.r.c(list3);
        k3TeachSettingActivity$stepAdapter$1.i(list3);
        this$0.k.notifyDataSetChanged();
        ((ActivityK3TeachSettingBinding) this$0.g()).stepRecyclerView.scrollToPosition(this$0.f4661f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(final K3TeachSettingActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        K3TeachSettingViewModel k3TeachSettingViewModel = this$0.b;
        if (k3TeachSettingViewModel != null) {
            k3TeachSettingViewModel.t(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.l
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    K3TeachSettingActivity.x(this.f4680a, (Boolean) obj);
                }
            });
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(K3TeachSettingActivity this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (kotlin.jvm.internal.r.a(bool, Boolean.FALSE)) {
            cn.mucang.android.core.utils.u.h("保存出错");
            this$0.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(K3TeachSettingActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4664a[loadingState.ordinal()];
        if (i == 1) {
            this$0.g().stateLayout.f();
        } else if (i == 2) {
            this$0.g().stateLayout.e();
        } else {
            if (i != 3) {
                return;
            }
            this$0.g().stateLayout.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(K3TeachSettingActivity this$0, LoadingState loadingState) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = loadingState == null ? -1 : b.f4664a[loadingState.ordinal()];
        if (i == 1) {
            JLoadingDialog jLoadingDialogR = this$0.r();
            if (jLoadingDialogR == null) {
                return;
            }
            jLoadingDialogR.b(loadingState.getMsg());
            return;
        }
        if (i == 2) {
            JLoadingDialog jLoadingDialog = this$0.c;
            if (jLoadingDialog != null) {
                jLoadingDialog.dismiss();
            }
            cn.mucang.android.core.utils.u.h(loadingState.getMsg());
            return;
        }
        if (i != 3) {
            return;
        }
        JLoadingDialog jLoadingDialog2 = this$0.c;
        if (jLoadingDialog2 != null) {
            jLoadingDialog2.dismiss();
        }
        cn.mucang.android.core.utils.u.h(loadingState.getMsg());
    }

    @Override // androidx.lifecycle.m0.b
    public <T extends j0> T create(Class<T> modelClass) throws IllegalAccessException, InstantiationException, InvocationTargetException {
        kotlin.jvm.internal.r.e(modelClass, "modelClass");
        Serializable serializableExtra = getIntent().getSerializableExtra("key_exam_site");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.ExamSiteModel");
        T tNewInstance = modelClass.getConstructor(ExamSiteModel.class).newInstance((ExamSiteModel) serializableExtra);
        kotlin.jvm.internal.r.d(tNewInstance, "modelClass.getConstructo…va).newInstance(examSite)");
        return tNewInstance;
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "科三教学设置页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        j0 j0VarA = new m0(this, this).a(K3TeachSettingViewModel.class);
        kotlin.jvm.internal.r.d(j0VarA, "ViewModelProvider(this, …del::class.java\n        )");
        K3TeachSettingViewModel k3TeachSettingViewModel = (K3TeachSettingViewModel) j0VarA;
        this.b = k3TeachSettingViewModel;
        if (k3TeachSettingViewModel == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        if (n0.e(k3TeachSettingViewModel.getC().examSiteName)) {
            g().titleLayout.titleTv.setText("教学设置");
        } else {
            TextView textView = g().titleLayout.titleTv;
            StringBuilder sb = new StringBuilder();
            sb.append("教学设置（");
            K3TeachSettingViewModel k3TeachSettingViewModel2 = this.b;
            if (k3TeachSettingViewModel2 == null) {
                kotlin.jvm.internal.r.u("viewModel");
                throw null;
            }
            sb.append((Object) k3TeachSettingViewModel2.getC().examSiteName);
            sb.append((char) 65289);
            textView.setText(sb.toString());
        }
        g().titleLayout.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3TeachSettingActivity.s(this.f4678a, view);
            }
        });
        g().stepRecyclerView.setAdapter(this.k);
        g().recyclerView.setAdapter(this.j);
        C();
        K3TeachSettingViewModel k3TeachSettingViewModel3 = this.b;
        if (k3TeachSettingViewModel3 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        k3TeachSettingViewModel3.q().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.q
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3TeachSettingActivity.v(this.f4685a, (List) obj);
            }
        });
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3TeachSettingActivity.w(this.f4687a, view);
            }
        });
        K3TeachSettingViewModel k3TeachSettingViewModel4 = this.b;
        if (k3TeachSettingViewModel4 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        k3TeachSettingViewModel4.b().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.r
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3TeachSettingActivity.y(this.f4686a, (LoadingState) obj);
            }
        });
        K3TeachSettingViewModel k3TeachSettingViewModel5 = this.b;
        if (k3TeachSettingViewModel5 == null) {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
        k3TeachSettingViewModel5.a().h(this, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.o
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3TeachSettingActivity.z(this.f4683a, (LoadingState) obj);
            }
        });
        g().teachStepLayout.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3TeachSettingActivity.A(this.f4677a, view);
            }
        });
        g().deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3TeachSettingActivity.B(this.f4679a, view);
            }
        });
        g().btnAdd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3TeachSettingActivity.t(this.f4682a, view);
            }
        });
        g().addTeachStepTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.teach.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                K3TeachSettingActivity.u(this.f4676a, view);
            }
        });
        K3TeachSettingViewModel k3TeachSettingViewModel6 = this.b;
        if (k3TeachSettingViewModel6 != null) {
            k3TeachSettingViewModel6.s();
        } else {
            kotlin.jvm.internal.r.u("viewModel");
            throw null;
        }
    }

    /* JADX INFO: renamed from: q, reason: from getter */
    public final com.drakeet.multitype.f getJ() {
        return this.j;
    }
}
