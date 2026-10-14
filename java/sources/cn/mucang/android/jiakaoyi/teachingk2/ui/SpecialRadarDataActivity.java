package cn.mucang.android.jiakaoyi.teachingk2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivitySpecialDataBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemSafeMenuBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemSpecialRadarDataBinding;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeCoefficientModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.SafeFactorModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.alibaba.fastjson.JSON;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0003$%&B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0012H\u0002J\b\u0010\u0017\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0007H\u0002J\u000e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\b\u0010\u001c\u001a\u00020\u0007H\u0016J\b\u0010\u001d\u001a\u00020\u0015H\u0014J\b\u0010\u001e\u001a\u00020\u0015H\u0002J\b\u0010\u001f\u001a\u00020\u0015H\u0016J\b\u0010 \u001a\u00020\u0015H\u0014J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020#H\u0017R!\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivitySpecialDataBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "areaNames", "", "", "getAreaNames", "()[Ljava/lang/String;", "areaNames$delegate", "Lkotlin/Lazy;", "dataAdapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "lastData", "menuAdapter", "menuList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;", "selectSpecial", "changeMenu", "", "clickItem", "doSave", "excludeSelectedJsonData", "getRadarData", "", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;", "getStatName", "init", "loadData", "onBackPressed", "onDestroy", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "Companion", "SpecialDataItemBinder", "SpecialMenuItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SpecialRadarDataActivity extends BaseViewBindingActivity<ActivitySpecialDataBinding> implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f8146h = new a(null);
    private List<? extends PolygonModel> b;
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.drakeet.multitype.f f8147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.drakeet.multitype.f f8149f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PolygonModel f8150g;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context) {
            kotlin.jvm.internal.r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) SpecialRadarDataActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0016\u0010\n\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0016¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$SpecialDataItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSpecialRadarDataBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "onViewRecycled", "DisTextWatcher", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b extends ViewBindingBinder<SafeCoefficientModel, ItemSpecialRadarDataBinding> {
        final /* synthetic */ SpecialRadarDataActivity b;

        @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0017J*\u0010\u0013\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J*\u0010\u0019\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$SpecialDataItemBinder$DisTextWatcher;", "Landroid/text/TextWatcher;", "item", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;", "ed", "Landroid/widget/EditText;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$SpecialDataItemBinder;Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;Landroid/widget/EditText;)V", "getEd", "()Landroid/widget/EditText;", "getItem", "()Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCoefficientModel;", "runnable", "Ljava/lang/Runnable;", "getRunnable", "()Ljava/lang/Runnable;", "afterTextChanged", "", "s", "Landroid/text/Editable;", "beforeTextChanged", "", TtmlNode.START, "", "count", TtmlNode.ANNOTATION_POSITION_AFTER, "onTextChanged", TtmlNode.ANNOTATION_POSITION_BEFORE, "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public final class a implements TextWatcher {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final SafeCoefficientModel f8151a;
            private final EditText b;
            private final Runnable c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ b f8152d;

            public a(b this$0, SafeCoefficientModel item, EditText ed) {
                kotlin.jvm.internal.r.e(this$0, "this$0");
                kotlin.jvm.internal.r.e(item, "item");
                kotlin.jvm.internal.r.e(ed, "ed");
                this.f8152d = this$0;
                this.f8151a = item;
                this.b = ed;
                this.c = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        SpecialRadarDataActivity.b.a.c(this.f8360a);
                    }
                };
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void c(a this$0) {
                kotlin.jvm.internal.r.e(this$0, "this$0");
                this$0.getB().setText("100");
            }

            /* JADX INFO: renamed from: a, reason: from getter */
            public final EditText getB() {
                return this.b;
            }

            @Override // android.text.TextWatcher
            @SuppressLint({"SetTextI18n"})
            public void afterTextChanged(Editable s) {
                int i;
                SafeFactorModel safeFactorModel;
                int[] iArr;
                try {
                    i = Integer.parseInt(String.valueOf(s));
                } catch (Exception unused) {
                    i = 0;
                }
                cn.mucang.android.core.utils.u.e(this.c);
                if (i <= 20 || i > 200) {
                    cn.mucang.android.core.utils.u.h("请输20-200之间的整数");
                    cn.mucang.android.core.utils.u.d(this.c, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    return;
                }
                PolygonModel polygonModel = this.f8152d.b.f8150g;
                if (polygonModel == null || (safeFactorModel = polygonModel.safeData) == null || (iArr = safeFactorModel.coefficients) == null) {
                    return;
                }
                iArr[this.f8151a.getIndex()] = i;
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }
        }

        public b(SpecialRadarDataActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemSpecialRadarDataBinding> holder, SafeCoefficientModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            EditText editText = ((ItemSpecialRadarDataBinding) holder.getViewBinding()).value;
            Object tag = ((ItemSpecialRadarDataBinding) holder.getViewBinding()).value.getTag();
            editText.removeTextChangedListener(tag instanceof a ? (a) tag : null);
            ((ItemSpecialRadarDataBinding) holder.getViewBinding()).text.setText(item.getName());
            ((ItemSpecialRadarDataBinding) holder.getViewBinding()).value.setText(String.valueOf(item.getValue()));
            EditText editText2 = ((ItemSpecialRadarDataBinding) holder.getViewBinding()).value;
            kotlin.jvm.internal.r.d(editText2, "holder.viewBinding.value");
            a aVar = new a(this, item, editText2);
            ((ItemSpecialRadarDataBinding) holder.getViewBinding()).value.setTag(aVar);
            ((ItemSpecialRadarDataBinding) holder.getViewBinding()).value.addTextChangedListener(aVar);
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void i(ViewBindingHolder<ItemSpecialRadarDataBinding> holder) {
            kotlin.jvm.internal.r.e(holder, "holder");
            EditText editText = ((ItemSpecialRadarDataBinding) holder.getViewBinding()).value;
            Object tag = ((ItemSpecialRadarDataBinding) holder.getViewBinding()).value.getTag();
            editText.removeTextChangedListener(tag instanceof a ? (a) tag : null);
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/SpecialRadarDataActivity$SpecialMenuItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/collectsite/polygon/PolygonModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemSafeMenuBinding;", "onClick", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "getOnClick", "()Lkotlin/jvm/functions/Function1;", "onBindViewHolder", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class c extends ViewBindingBinder<PolygonModel, ItemSafeMenuBinding> {
        private final Function1<PolygonModel, kotlin.v> b;

        /* JADX WARN: Multi-variable type inference failed */
        public c(Function1<? super PolygonModel, kotlin.v> onClick) {
            kotlin.jvm.internal.r.e(onClick, "onClick");
            this.b = onClick;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(c this$0, PolygonModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.n().invoke(item);
        }

        public final Function1<PolygonModel, kotlin.v> n() {
            return this.b;
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemSafeMenuBinding> holder, final PolygonModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemSafeMenuBinding) holder.getViewBinding()).menuTv.setText(item.name);
            ((ItemSafeMenuBinding) holder.getViewBinding()).menuTv.setSelected(item.selected);
            ((ItemSafeMenuBinding) holder.getViewBinding()).menuTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SpecialRadarDataActivity.c.q(this.f8362a, item, view);
                }
            });
        }
    }

    public SpecialRadarDataActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(PolygonModel.class, new c(new Function1<PolygonModel, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.SpecialRadarDataActivity$menuAdapter$1$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(PolygonModel polygonModel) {
                invoke2(polygonModel);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PolygonModel clickItem) {
                kotlin.jvm.internal.r.e(clickItem, "clickItem");
                this.this$0.l(clickItem);
            }
        }));
        kotlin.v vVar = kotlin.v.f15822a;
        this.f8147d = fVar;
        this.f8148e = kotlin.i.b(new Function0<String[]>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.SpecialRadarDataActivity$areaNames$2
            @Override // kotlin.jvm.functions.Function0
            public final String[] invoke() {
                return new String[]{"前左", "前中", "前右", "右  ", "后右", "后中", "后左", "左  "};
            }
        });
        com.drakeet.multitype.f fVar2 = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar2.g(SafeCoefficientModel.class, new b(this));
        this.f8149f = fVar2;
    }

    private final void J() {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.n
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                SpecialRadarDataActivity.K(this.f8233a);
            }
        }, "正在加载数据", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(final SpecialRadarDataActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            final List<PolygonModel> listN = new cn.mucang.android.jiakaoyi.teachingk2.collectsite.v.a().n(String.valueOf(ExamSiteUtil.e(0L)), 2);
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.x
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialRadarDataActivity.M(listN, this$0);
                }
            });
        } catch (Exception unused) {
            cn.mucang.android.core.utils.u.h("加载数据失败");
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.o
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialRadarDataActivity.L(this.f8235a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(SpecialRadarDataActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(List list, SpecialRadarDataActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (cn.mucang.android.core.utils.g.b(list)) {
            cn.mucang.android.core.utils.u.h("请先前往考场数据采集特殊区域");
            this$0.finish();
            return;
        }
        this$0.b = list;
        this$0.c = this$0.o();
        List<? extends PolygonModel> list2 = this$0.b;
        kotlin.jvm.internal.r.c(list2);
        this$0.l((PolygonModel) kotlin.collections.s.c0(list2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(SpecialRadarDataActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(SpecialRadarDataActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(PolygonModel polygonModel) {
        List<? extends PolygonModel> list = this.b;
        if (list != null) {
            for (PolygonModel polygonModel2 : list) {
                polygonModel2.selected = false;
                if (kotlin.jvm.internal.r.a(polygonModel2, polygonModel)) {
                    polygonModel2.selected = true;
                    this.f8150g = polygonModel2;
                    g().descTv.setText(polygonModel2.desc);
                    this.f8149f.i(q());
                    this.f8149f.notifyDataSetChanged();
                }
            }
        }
        com.drakeet.multitype.f fVar = this.f8147d;
        List<? extends PolygonModel> list2 = this.b;
        kotlin.jvm.internal.r.c(list2);
        fVar.i(list2);
        this.f8147d.notifyDataSetChanged();
    }

    private final void m() {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.z
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                SpecialRadarDataActivity.n(this.f8368a);
            }
        }, "正在保存", "保存失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(SpecialRadarDataActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        PolygonModel polygonModel = this$0.f8150g;
        if (polygonModel != null && new cn.mucang.android.jiakaoyi.teachingk2.collectsite.v.a().p(polygonModel, JSON.toJSONString(polygonModel.safeData))) {
            cn.mucang.android.core.utils.u.h("保存成功，请后台操作更新特殊区域资源");
            cn.mucang.android.jiakaoyi.teachingk2.res.n.b().f7603g = cn.mucang.android.jiakaoyi.teachingk2.res.m.a(this$0.b);
            this$0.c = this$0.o();
        }
    }

    private final String o() {
        List<? extends PolygonModel> list = this.b;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                ((PolygonModel) it.next()).selected = false;
            }
        }
        String jSONString = JSON.toJSONString(this.b);
        kotlin.jvm.internal.r.d(jSONString, "toJSONString(menuList)");
        return jSONString;
    }

    private final String[] p() {
        return (String[]) this.f8148e.getValue();
    }

    private final List<SafeCoefficientModel> q() {
        SafeFactorModel safeFactorModel;
        int[] iArr;
        ArrayList arrayList = new ArrayList();
        PolygonModel polygonModel = this.f8150g;
        if ((polygonModel == null ? null : polygonModel.safeData) == null && polygonModel != null) {
            polygonModel.safeData = new SafeFactorModel();
        }
        PolygonModel polygonModel2 = this.f8150g;
        SafeFactorModel safeFactorModel2 = polygonModel2 != null ? polygonModel2.safeData : null;
        kotlin.jvm.internal.r.c(safeFactorModel2);
        int length = safeFactorModel2.coefficients.length - 1;
        if (length >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                SafeCoefficientModel safeCoefficientModel = new SafeCoefficientModel();
                safeCoefficientModel.setName(p()[i]);
                safeCoefficientModel.setIndex(i);
                PolygonModel polygonModel3 = this.f8150g;
                safeCoefficientModel.setValue((polygonModel3 == null || (safeFactorModel = polygonModel3.safeData) == null || (iArr = safeFactorModel.coefficients) == null) ? 0 : iArr[i]);
                kotlin.v vVar = kotlin.v.f15822a;
                arrayList.add(safeCoefficientModel);
                if (i2 > length) {
                    break;
                }
                i = i2;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(SpecialRadarDataActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(final SpecialRadarDataActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this$0).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.r
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() {
                SpecialRadarDataActivity.t(this.f8241a);
            }
        }, "正在重置", "重置");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(final SpecialRadarDataActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        final PolygonModel polygonModel = this$0.f8150g;
        if (polygonModel != null && new cn.mucang.android.jiakaoyi.teachingk2.collectsite.v.a().p(polygonModel, JSON.toJSONString(new SafeFactorModel()))) {
            cn.mucang.android.core.utils.u.h("重置成功，请后台操作更新特殊区域资源");
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.s
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialRadarDataActivity.u(polygonModel, this$0);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(PolygonModel it, SpecialRadarDataActivity this$0) {
        kotlin.jvm.internal.r.e(it, "$it");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        it.safeData = new SafeFactorModel();
        this$0.f8149f.i(this$0.q());
        this$0.f8149f.notifyDataSetChanged();
        cn.mucang.android.jiakaoyi.teachingk2.res.n.b().f7603g = cn.mucang.android.jiakaoyi.teachingk2.res.m.a(this$0.b);
        this$0.c = this$0.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(SpecialRadarDataActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(SpecialRadarDataActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "安全数据管理";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        g().title.titleTv.setText("特殊区域安全距离");
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SpecialRadarDataActivity.r(this.f8358a, view);
            }
        });
        g().radarContainer.frontRadar.setConfig(cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a.b());
        g().radarContainer.backRadar.setConfig(cn.mucang.android.jiakaoyi.teachingk2.safe.ui.signal.a.a());
        g().menuRv.setLayoutManager(new LinearLayoutManager(this));
        g().menuRv.setAdapter(this.f8147d);
        g().dataRv.setLayoutManager(new LinearLayoutManager(this));
        g().dataRv.setAdapter(this.f8149f);
        g().resetTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SpecialRadarDataActivity.s(this.f8348a, view);
            }
        });
        g().saveTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SpecialRadarDataActivity.v(this.f8366a, view);
            }
        });
        J();
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SpecialRadarDataActivity.w(this.f8163a, view);
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (kotlin.jvm.internal.r.a(this.c, o())) {
            super.onBackPressed();
        } else {
            new JCommonDialog(this, new JCommonDialog.DialogParams("编辑后未保存，是否保存", "", "不保存", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SpecialRadarDataActivity.N(this.f8239a, view);
                }
            }, "保存", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SpecialRadarDataActivity.O(this.f8237a, view);
                }
            }, false, false)).show();
        }
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    @SuppressLint({"SetTextI18n"})
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        g().speedTv.setText("车速：" + signalGetter.d().b + (char) 30721);
        g().rpmTv.setText(kotlin.jvm.internal.r.m("转速：", Integer.valueOf(signalGetter.d().f5265a)));
    }
}
