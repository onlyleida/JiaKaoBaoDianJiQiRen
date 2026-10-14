package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collect.TeachCollectHelper;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.lib.R;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ActivityShowTeachModelBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemShowTeachMenuBinding;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.ItemShowTeachModelBinding;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0007\u0018\u0000 !2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004!\"#$B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\b\u0010\u0012\u001a\u00020\u0011H\u0002J\b\u0010\u0013\u001a\u00020\u0011H\u0002J\b\u0010\u0014\u001a\u00020\u0011H\u0002J\b\u0010\u0015\u001a\u00020\u0011H\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0011H\u0014J\b\u0010\u0019\u001a\u00020\u0011H\u0002J\b\u0010\u001a\u001a\u00020\u0011H\u0014J\b\u0010\u001b\u001a\u00020\u0011H\u0014J\b\u0010\u001c\u001a\u00020\u0011H\u0014J\u0012\u0010\u001d\u001a\u00020\u00112\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\f\u0012\b\u0012\u00060\fR\u00020\u00000\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ActivityShowTeachModelBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "current", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "mapPreviewer", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepMapPreviewer;", "menu", "", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$Menu;", "traceList", "Landroid/util/SparseArray;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;", "addReport", "", "createDataList", "createMenu", "createPoint", InputIdCardActivity.DELETE, "getStatName", "", "init", "initIndex", "onDestroy", "onPause", "onResume", "selectTeachModel", "model", "update", "teachModel", "Companion", "Menu", "ShowStepMenuItem", "ShowTeachModelItem", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class ShowTeachModelActivity extends BaseViewBindingActivity<ActivityShowTeachModelBinding> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f6754g = new a(null);
    private final com.drakeet.multitype.f b;
    private final List<b> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray<TraceVariable> f6755d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private StepMapPreviewer f6756e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TeachModel f6757f;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0007¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "title", "", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, String title, List<? extends TeachModel> list) {
            kotlin.jvm.internal.r.e(context, "context");
            kotlin.jvm.internal.r.e(title, "title");
            kotlin.jvm.internal.r.e(list, "list");
            TeachModelEditor.p(title, list);
            ActivityUtils.c(context, new Intent(context, (Class<?>) ShowTeachModelActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0004\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$Menu;", "", "text", "", "subStep", "", "expand", "", "list", "", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;Ljava/lang/String;IZLjava/util/List;)V", "getExpand", "()Z", "setExpand", "(Z)V", "getList", "()Ljava/util/List;", "getSubStep", "()I", "getText", "()Ljava/lang/String;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6758a;
        private final int b;
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<TeachModel> f6759d;

        public b(ShowTeachModelActivity this$0, String text, int i, boolean z, List<TeachModel> list) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(text, "text");
            kotlin.jvm.internal.r.e(list, "list");
            this.f6758a = text;
            this.b = i;
            this.c = z;
            this.f6759d = list;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getC() {
            return this.c;
        }

        public final List<TeachModel> b() {
            return this.f6759d;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final int getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getF6758a() {
            return this.f6758a;
        }

        public final void e(boolean z) {
            this.c = z;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u0012\u0012\b\u0012\u00060\u0002R\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0001B\u0005¢\u0006\u0002\u0010\u0005J\"\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\n\u0010\n\u001a\u00060\u0002R\u00020\u0003H\u0017¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$ShowStepMenuItem;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$Menu;", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachMenuBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class c extends ViewBindingBinder<b, ItemShowTeachMenuBinding> {
        final /* synthetic */ ShowTeachModelActivity b;

        public c(ShowTeachModelActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(b item, ShowTeachModelActivity this$0, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            item.e(!item.getC());
            this$0.p();
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemShowTeachMenuBinding> holder, final b item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemShowTeachMenuBinding) holder.getViewBinding()).menuTv.setText(item.getF6758a());
            ((ItemShowTeachMenuBinding) holder.getViewBinding()).menuTv.setCompoundDrawablesWithIntrinsicBounds(item.getC() ? R.drawable.collect_ic_expend : R.drawable.collect_ic_close, 0, 0, 0);
            ConstraintLayout root = ((ItemShowTeachMenuBinding) holder.getViewBinding()).getRoot();
            final ShowTeachModelActivity showTeachModelActivity = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.h1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShowTeachModelActivity.c.p(item, showTeachModelActivity, view);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity$ShowTeachModelItem;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/ItemShowTeachModelBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/ShowTeachModelActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class d extends ViewBindingBinder<TeachModel, ItemShowTeachModelBinding> {
        final /* synthetic */ ShowTeachModelActivity b;

        public d(ShowTeachModelActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(ShowTeachModelActivity this$0, TeachModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            this$0.U(item);
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemShowTeachModelBinding> holder, final TeachModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            TextView textView = ((ItemShowTeachModelBinding) holder.getViewBinding()).modelTv;
            StringBuilder sb = new StringBuilder();
            sb.append(item.order);
            sb.append((Object) item.getPointTypeDesc());
            sb.append((Object) item.findText());
            textView.setText(sb.toString());
            ((ItemShowTeachModelBinding) holder.getViewBinding()).getRoot().setBackgroundColor(item == this.b.f6757f ? -12367793 : 0);
            ConstraintLayout root = ((ItemShowTeachModelBinding) holder.getViewBinding()).getRoot();
            final ShowTeachModelActivity showTeachModelActivity = this.b;
            root.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.i1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShowTeachModelActivity.d.p(showTeachModelActivity, item, view);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 5, 1})
    public static final class e<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Integer.valueOf(((TeachModel) t).subStep), Integer.valueOf(((TeachModel) t2).subStep));
        }
    }

    public ShowTeachModelActivity() {
        com.drakeet.multitype.f fVar = new com.drakeet.multitype.f(null, 0, null, 7, null);
        fVar.g(b.class, new c(this));
        fVar.g(TeachModel.class, new d(this));
        kotlin.v vVar = kotlin.v.f15822a;
        this.b = fVar;
        this.c = new ArrayList();
        this.f6755d = new SparseArray<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(ShowTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(ShowTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(ShowTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(View view) {
        TeachVerifyActivity.a aVar = TeachVerifyActivity.q;
        Context context = view.getContext();
        kotlin.jvm.internal.r.d(context, "it.context");
        aVar.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(ShowTeachModelActivity this$0, TeachModelChanged teachModelChanged) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (teachModelChanged.getF6852a() != null) {
            this$0.V(teachModelChanged.getF6852a());
            this$0.U(teachModelChanged.getF6852a());
        }
    }

    private final void F() {
        for (b bVar : this.c) {
            TraceVariable traceVariable = this.f6755d.get(bVar.getB());
            if (traceVariable == null) {
                return;
            }
            Iterator<T> it = bVar.b().iterator();
            while (true) {
                int i = 0;
                if (it.hasNext()) {
                    TeachModel teachModel = (TeachModel) it.next();
                    NormalVariable normalVariable = teachModel.getNormalVariable();
                    if (normalVariable == null) {
                        return;
                    }
                    List<TraceItemModel> list = traceVariable.traces;
                    kotlin.jvm.internal.r.d(list, "traceVariable.traces");
                    double d2 = Double.MAX_VALUE;
                    int i2 = 0;
                    for (Object obj : list) {
                        int i3 = i2 + 1;
                        if (i2 < 0) {
                            kotlin.collections.s.t();
                            throw null;
                        }
                        double dDistanceTo = normalVariable.posOnLine.distanceTo((TraceItemModel) obj);
                        if (dDistanceTo < d2) {
                            i = i2;
                            d2 = dDistanceTo;
                        }
                        i2 = i3;
                    }
                    teachModel.index = i;
                }
            }
            kotlin.collections.y.A(bVar.b(), kotlin.x.b.b(new Function1<TeachModel, Comparable<?>>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.ShowTeachModelActivity$initIndex$1$2
                @Override // kotlin.jvm.functions.Function1
                public final Comparable<?> invoke(TeachModel it2) {
                    kotlin.jvm.internal.r.e(it2, "it");
                    return Integer.valueOf(it2.index);
                }
            }, new Function1<TeachModel, Comparable<?>>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.ShowTeachModelActivity$initIndex$1$3
                @Override // kotlin.jvm.functions.Function1
                public final Comparable<?> invoke(TeachModel it2) {
                    kotlin.jvm.internal.r.e(it2, "it");
                    return Integer.valueOf(it2.pointType);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(TeachModel teachModel) {
        Pos pos;
        if (teachModel == null) {
            return;
        }
        this.f6757f = teachModel;
        this.b.notifyDataSetChanged();
        StepMapPreviewer stepMapPreviewer = this.f6756e;
        if (stepMapPreviewer != null) {
            stepMapPreviewer.m(this.f6755d.get(teachModel.subStep));
        }
        for (b bVar : this.c) {
            if (bVar.b().contains(teachModel)) {
                StepMapPreviewer stepMapPreviewer2 = this.f6756e;
                if (stepMapPreviewer2 != null) {
                    stepMapPreviewer2.k(bVar.b(), teachModel);
                }
                if (TeachModelEditor.f6857a.g().isGlobal()) {
                    NormalVariable normalVariable = teachModel.getNormalVariable();
                    if (normalVariable == null || (pos = normalVariable.posOnLine) == null) {
                        return;
                    }
                    g().map.setCurrentZoom(AppUtils.b() ? 0.1f : 0.2f);
                    g().map.v((float) pos.x, (float) pos.y);
                    return;
                }
                if (teachModel.pointType != 2) {
                    TextView textView = g().addTv;
                    kotlin.jvm.internal.r.d(textView, "viewBinding.addTv");
                    textView.setVisibility(8);
                    return;
                }
                for (TeachModel teachModel2 : bVar.b()) {
                    if (teachModel2.pointType == 1) {
                        NormalVariable normalVariable2 = teachModel2.getNormalVariable();
                        Long lValueOf = normalVariable2 == null ? null : Long.valueOf(normalVariable2.reportKey);
                        NormalVariable normalVariable3 = teachModel.getNormalVariable();
                        if (kotlin.jvm.internal.r.a(lValueOf, normalVariable3 != null ? Long.valueOf(normalVariable3.key) : null)) {
                            TextView textView2 = g().addTv;
                            kotlin.jvm.internal.r.d(textView2, "viewBinding.addTv");
                            textView2.setVisibility(8);
                            return;
                        }
                    }
                }
                TextView textView3 = g().addTv;
                kotlin.jvm.internal.r.d(textView3, "viewBinding.addTv");
                textView3.setVisibility(0);
                return;
            }
        }
    }

    private final void V(TeachModel teachModel) {
        for (b bVar : this.c) {
            int i = 0;
            for (Object obj : bVar.b()) {
                int i2 = i + 1;
                if (i < 0) {
                    kotlin.collections.s.t();
                    throw null;
                }
                if (kotlin.jvm.internal.r.a(((TeachModel) obj).teachModelId, teachModel.teachModelId)) {
                    bVar.b().set(i, teachModel);
                    p();
                    return;
                }
                i = i2;
            }
        }
    }

    private final void m() {
        TeachModel teachModel = this.f6757f;
        if (teachModel != null) {
            kotlin.jvm.internal.r.c(teachModel);
            if (teachModel.pointType == 2) {
                TeachModel teachModel2 = this.f6757f;
                kotlin.jvm.internal.r.c(teachModel2);
                final TeachModel teachModelCopy = teachModel2.copy();
                teachModelCopy.teachModelId = "0";
                teachModelCopy.pointType = 1;
                NormalVariable normalVariable = teachModelCopy.getNormalVariable();
                if (normalVariable != null) {
                    TeachModel teachModel3 = this.f6757f;
                    kotlin.jvm.internal.r.c(teachModel3);
                    normalVariable.reportKey = teachModel3.getNormalVariable().key;
                }
                TeachModel teachModel4 = this.f6757f;
                kotlin.jvm.internal.r.c(teachModel4);
                teachModelCopy.index = teachModel4.index;
                new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.e1
                    @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
                    public final void a() throws ApiException, InternalException, HttpException {
                        ShowTeachModelActivity.n(teachModelCopy, this);
                    }
                }, "正在添加", "添加失败");
                return;
            }
        }
        cn.mucang.android.core.utils.u.h("请选择操作点");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(final TeachModel teachModel, final ShowTeachModelActivity this$0) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().n(teachModel);
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.m1
            @Override // java.lang.Runnable
            public final void run() {
                ShowTeachModelActivity.o(this.f6855a, teachModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(ShowTeachModelActivity this$0, TeachModel model) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LiveBus.d(TeachModelChanged.class).l(new TeachModelChanged(null, 1, null));
        for (b bVar : this$0.c) {
            int iH0 = CollectionsKt___CollectionsKt.h0(bVar.b(), this$0.f6757f);
            if (iH0 > -1) {
                List<TeachModel> listB = bVar.b();
                kotlin.jvm.internal.r.d(model, "model");
                listB.add(iH0, model);
                this$0.p();
                this$0.U(this$0.f6757f);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        ArrayList arrayList = new ArrayList();
        for (b bVar : this.c) {
            arrayList.add(bVar);
            int i = 0;
            for (Object obj : bVar.b()) {
                int i2 = i + 1;
                if (i < 0) {
                    kotlin.collections.s.t();
                    throw null;
                }
                ((TeachModel) obj).order = i2;
                i = i2;
            }
            if (bVar.getC()) {
                arrayList.addAll(bVar.b());
            }
        }
        this.b.i(arrayList);
        this.b.notifyDataSetChanged();
    }

    private final void q() {
        this.c.clear();
        for (TeachModel teachModel : CollectionsKt___CollectionsKt.G0(TeachModelEditor.i(), new e())) {
            if (!teachModel.isTraceTeach()) {
                Iterator<T> it = this.c.iterator();
                while (true) {
                    if (it.hasNext()) {
                        b bVar = (b) it.next();
                        if (bVar.getB() == teachModel.subStep) {
                            bVar.b().add(teachModel);
                            break;
                        }
                    } else {
                        b bVar2 = new b(this, TeachCollectHelper.g(teachModel.step, teachModel.stepDirection, teachModel.subStep), teachModel.subStep, false, new ArrayList());
                        bVar2.b().add(teachModel);
                        this.c.add(bVar2);
                        break;
                    }
                }
            } else {
                this.f6755d.put(teachModel.subStep, teachModel.getTraceVariable());
            }
        }
        b bVar3 = (b) kotlin.collections.s.e0(this.c);
        if (bVar3 != null) {
            bVar3.e(true);
        }
        F();
        p();
    }

    private final void r() {
        TeachModel teachModel = this.f6757f;
        if (teachModel == null) {
            cn.mucang.android.core.utils.u.h("请选择教学点");
            return;
        }
        kotlin.jvm.internal.r.c(teachModel);
        final TeachModel teachModelCopy = teachModel.copy();
        teachModelCopy.teachModelId = "0";
        teachModelCopy.pointType = 3;
        NormalVariable normalVariable = teachModelCopy.getNormalVariable();
        if (normalVariable != null) {
            normalVariable.key = System.nanoTime();
        }
        NormalVariable normalVariable2 = teachModelCopy.getNormalVariable();
        if (normalVariable2 != null) {
            normalVariable2.reportKey = 0L;
        }
        TeachModel teachModel2 = this.f6757f;
        kotlin.jvm.internal.r.c(teachModel2);
        teachModelCopy.index = teachModel2.index;
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.o1
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                ShowTeachModelActivity.s(teachModelCopy, this);
            }
        }, "正在添加", "添加失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(final TeachModel teachModel, final ShowTeachModelActivity this$0) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().n(teachModel);
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.f1
            @Override // java.lang.Runnable
            public final void run() {
                ShowTeachModelActivity.t(this.f6811a, teachModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(ShowTeachModelActivity this$0, TeachModel model) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        LiveBus.d(TeachModelChanged.class).l(new TeachModelChanged(null, 1, null));
        for (b bVar : this$0.c) {
            int iH0 = CollectionsKt___CollectionsKt.h0(bVar.b(), this$0.f6757f);
            if (iH0 > -1) {
                List<TeachModel> listB = bVar.b();
                kotlin.jvm.internal.r.d(model, "model");
                listB.add(iH0, model);
                this$0.p();
                this$0.U(this$0.f6757f);
                return;
            }
        }
    }

    private final void u() {
        if (this.f6757f == null) {
            cn.mucang.android.core.utils.u.h("请选择教学点");
        } else {
            new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.c1
                @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
                public final void a() throws ApiException, InternalException, HttpException {
                    ShowTeachModelActivity.v(this.f6796a);
                }
            }, "正在删除", "删除失败");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(final ShowTeachModelActivity this$0) throws ApiException, InternalException, HttpException {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b().o(this$0.f6757f);
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.z0
            @Override // java.lang.Runnable
            public final void run() {
                ShowTeachModelActivity.w(this.f6919a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(ShowTeachModelActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TeachModel teachModel = this$0.f6757f;
        this$0.f6757f = null;
        LiveBus.d(TeachModelChanged.class).l(new TeachModelChanged(null, 1, null));
        for (b bVar : this$0.c) {
            int iH0 = CollectionsKt___CollectionsKt.h0(bVar.b(), teachModel);
            if (iH0 > -1) {
                List<TeachModel> listB = bVar.b();
                Objects.requireNonNull(listB, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>");
                kotlin.jvm.internal.z.a(listB).remove(teachModel);
                this$0.p();
                if (bVar.b().isEmpty()) {
                    StepMapPreviewer stepMapPreviewer = this$0.f6756e;
                    if (stepMapPreviewer == null) {
                        return;
                    }
                    stepMapPreviewer.k(kotlin.collections.u.j(), null);
                    return;
                }
                if (iH0 == 0) {
                    this$0.U((TeachModel) kotlin.collections.s.c0(bVar.b()));
                    return;
                } else {
                    this$0.U((TeachModel) kotlin.collections.s.f0(bVar.b(), iH0 - 1));
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(ShowTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(ShowTeachModelActivity this$0, Boolean bool) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        b bVar = (b) kotlin.collections.s.e0(this$0.c);
        this$0.U(bVar == null ? null : (TeachModel) kotlin.collections.s.e0(bVar.b()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(ShowTeachModelActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        TeachModel teachModel = this$0.f6757f;
        if (teachModel == null) {
            cn.mucang.android.core.utils.u.h("请选择教学点");
            return;
        }
        EditTeachModelActivity.a aVar = EditTeachModelActivity.f6748g;
        kotlin.jvm.internal.r.c(teachModel);
        StepMapPreviewer stepMapPreviewer = this$0.f6756e;
        aVar.a(this$0, teachModel, stepMapPreviewer == null ? null : stepMapPreviewer.getC());
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "展示项目教学点页面";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        if (cn.mucang.android.core.utils.g.b(TeachModelEditor.i())) {
            cn.mucang.android.core.utils.u.h("暂无教学点数据");
            finish();
            return;
        }
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        if (teachModelEditor.g().isGlobal()) {
            TextView textView = g().addTv;
            kotlin.jvm.internal.r.d(textView, "viewBinding.addTv");
            textView.setVisibility(8);
            TextView textView2 = g().createTv;
            kotlin.jvm.internal.r.d(textView2, "viewBinding.createTv");
            textView2.setVisibility(8);
        }
        q();
        g().titleTv.setText(teachModelEditor.j());
        g().backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShowTeachModelActivity.x(this.f6816a, view);
            }
        });
        MapView mapView = g().map;
        kotlin.jvm.internal.r.d(mapView, "viewBinding.map");
        StepMapPreviewer stepMapPreviewer = new StepMapPreviewer(mapView);
        this.f6756e = stepMapPreviewer;
        if (stepMapPreviewer != null) {
            stepMapPreviewer.d(((TeachModel) kotlin.collections.s.c0(TeachModelEditor.i())).step, ((TeachModel) kotlin.collections.s.c0(TeachModelEditor.i())).stepDirection, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.k1
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    ShowTeachModelActivity.y(this.f6840a, (Boolean) obj);
                }
            });
        }
        g().menuRv.setLayoutManager(new LinearLayoutManager(this));
        g().menuRv.setAdapter(this.b);
        g().editTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShowTeachModelActivity.z(this.f6801a, view);
            }
        });
        g().deleteTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.j1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShowTeachModelActivity.A(this.f6836a, view);
            }
        });
        g().addTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShowTeachModelActivity.B(this.f6791a, view);
            }
        });
        g().createTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.l1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShowTeachModelActivity.C(this.f6850a, view);
            }
        });
        g().actionTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.n1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShowTeachModelActivity.D(view);
            }
        });
        LiveBus.d(TeachModelChanged.class).h(this, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.a1
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                ShowTeachModelActivity.E(this.f6786a, (TeachModelChanged) obj);
            }
        });
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g().map.c();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onPause() {
        super.onPause();
        g().map.m();
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, android.app.Activity
    protected void onResume() {
        super.onResume();
        g().map.n();
    }
}
