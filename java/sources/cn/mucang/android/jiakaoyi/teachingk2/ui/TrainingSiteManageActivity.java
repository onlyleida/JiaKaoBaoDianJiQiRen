package cn.mucang.android.jiakaoyi.teachingk2.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.widget.StateLayout;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.k3setting.p003route.manager.RouteActivity;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.MapPreviewActivity;
import cn.mucang.android.jiakaoyi.mapcollect.manager.map.gpsbase.GpsBaseSelectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.migrate.K2MigrateActivity;
import cn.mucang.android.jiakaoyi.signal.car.CarItemModel;
import cn.mucang.android.jiakaoyi.signal.car.LocalCarModel;
import cn.mucang.android.jiakaoyi.signal.car.RealCarSelectManager;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityTrainingSiteManageBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemTrainingSiteBinding;
import cn.mucang.android.jiakaoyi.teachingk2.model.TeachPlanItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.ResourceManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.FenceConfig;
import cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.FenceBrakeManager;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarInfoManager;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.rtmc.HPGpsManager;
import cn.mucang.jiakaoyi.uilib.siterule.SiteApi;
import cn.mucang.jiakaoyi.uilib.task.SafeRunnable;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mucang.android.jiakaoyi.uilib.R;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bB\u0005¢\u0006\u0002\u0010\u0003J\u0016\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\rH\u0014J\b\u0010\u0014\u001a\u00020\rH\u0002J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J\u0018\u0010\u0018\u001a\u00020\r*\u00060\u0019R\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityTrainingSiteManageBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "coach", "", "getCoach", "()Z", "coach$delegate", "Lkotlin/Lazy;", "changeEnable", "", "data", "", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getStatName", "", "init", "loadData", "showPlanDialog", "item", "syncData", "enableExamSite", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;", "Companion", "TrainingItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"NotifyDataSetChanged"})
public final class TrainingSiteManageActivity extends BaseViewBindingActivity<ActivityTrainingSiteManageBinding> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f8159d = new a(null);
    private final com.drakeet.multitype.f b = new com.drakeet.multitype.f(null, 0, null, 7, null);
    private final Lazy c = kotlin.i.b(new Function0<Boolean>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.TrainingSiteManageActivity$coach$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return Boolean.valueOf(this.this$0.getIntent().getBooleanExtra("key.roleCoach", true));
        }
    });

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0017J\u001e\u0010\n\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0002¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemTrainingSiteBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "setupSafe", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class TrainingItemBinder extends ViewBindingBinder<ExamSiteModel, ItemTrainingSiteBinding> {
        final /* synthetic */ TrainingSiteManageActivity b;

        @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder$setupSafe$2", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "parent", "Landroid/widget/AdapterView;", "view", "Landroid/view/View;", "position", "", TtmlNode.ATTR_ID, "", "onNothingSelected", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class a implements AdapterView.OnItemSelectedListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ExamSiteModel f8160a;
            final /* synthetic */ FenceConfig[] b;

            a(ExamSiteModel examSiteModel, FenceConfig[] fenceConfigArr) {
                this.f8160a = examSiteModel;
                this.b = fenceConfigArr;
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                FenceConfig.setFenceConfig(this.f8160a.examSiteId, this.b[position].index);
                FenceBrakeManager.i(!FenceConfig.isClose(this.f8160a.examSiteId));
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> parent) {
            }
        }

        @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder$setupSafe$adapter$1", "Landroid/widget/ArrayAdapter;", "", "getDropDownView", "Landroid/view/View;", "position", "", "convertView", "parent", "Landroid/view/ViewGroup;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        public static final class b extends ArrayAdapter<String> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ List<String> f8161a;
            final /* synthetic */ FenceConfig[] b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(List<String> list, FenceConfig[] fenceConfigArr, Context context, int i) {
                super(context, i, list);
                this.f8161a = list;
                this.b = fenceConfigArr;
            }

            @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
            public View getDropDownView(int position, View convertView, ViewGroup parent) {
                kotlin.jvm.internal.r.e(parent, "parent");
                if (convertView == null) {
                    convertView = LayoutInflater.from(getContext()).inflate(R.layout.common_spinner_drop_down_item, parent, false);
                }
                TextView textView = (TextView) convertView.findViewById(R.id.text);
                ImageView imageView = (ImageView) convertView.findViewById(R.id.iv);
                textView.setText(this.f8161a.get(position));
                if (TextUtils.equals(this.f8161a.get(position), this.b[position].name())) {
                    textView.setSelected(true);
                    imageView.setVisibility(0);
                } else {
                    textView.setSelected(false);
                    imageView.setVisibility(8);
                }
                kotlin.jvm.internal.r.d(convertView, "view");
                return convertView;
            }
        }

        public TrainingItemBinder(TrainingSiteManageActivity this$0) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void A(final ExamSiteModel item, final View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            GpsBaseSelectActivity.a aVar = GpsBaseSelectActivity.c;
            Activity activityI = MucangConfig.i();
            kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
            aVar.b(activityI, item.cityCode, new Function2<Long, String, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.TrainingSiteManageActivity$TrainingItemBinder$onBindViewHolder$6$1
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
                    K2MigrateActivity.a aVar2 = K2MigrateActivity.r;
                    Context context = view.getContext();
                    kotlin.jvm.internal.r.d(context, "it.context");
                    aVar2.a(context, item, j, gpsBaseName);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void B(ExamSiteModel item, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            cn.mucang.android.jiakaoyi.framework.log.f.o("点击连接基站:" + ((Object) item.examSiteName) + ',' + item.examSiteId + ',' + item.gpsBaseId + ',' + ((Object) item.gpsBaseName));
            HPGpsManager.k(item.examSiteId, (int) item.gpsBaseId);
        }

        private final void C(ViewBindingHolder<ItemTrainingSiteBinding> viewBindingHolder, ExamSiteModel examSiteModel) {
            FenceConfig[] fenceConfigArrValues = FenceConfig.values();
            ArrayList arrayList = new ArrayList();
            for (FenceConfig fenceConfig : fenceConfigArrValues) {
                String str = fenceConfig.text;
                kotlin.jvm.internal.r.d(str, "it.text");
                arrayList.add(str);
            }
            b bVar = new b(arrayList, fenceConfigArrValues, viewBindingHolder.itemView.getContext(), R.layout.common_spinner_item);
            bVar.setDropDownViewResource(R.layout.common_spinner_drop_down_item);
            ((ItemTrainingSiteBinding) viewBindingHolder.getViewBinding()).spFence.setAdapter((SpinnerAdapter) bVar);
            ((ItemTrainingSiteBinding) viewBindingHolder.getViewBinding()).spFence.setOnItemSelectedListener(new a(examSiteModel, fenceConfigArrValues));
            ((ItemTrainingSiteBinding) viewBindingHolder.getViewBinding()).spFence.setSelection(FenceConfig.getCurSelectedPos(examSiteModel.examSiteId));
            FenceBrakeManager.i(!FenceConfig.isClose(examSiteModel.examSiteId));
            TextView textView = ((ItemTrainingSiteBinding) viewBindingHolder.getViewBinding()).connectBaseTv;
            kotlin.jvm.internal.r.d(textView, "holder.viewBinding.connectBaseTv");
            textView.setVisibility(ExamSiteUtil.d() == null ? 0 : 8);
            if (examSiteModel.enable) {
                if (this.b.o()) {
                    ((ItemTrainingSiteBinding) viewBindingHolder.getViewBinding()).safeTv.setVisibility(8);
                } else {
                    ((ItemTrainingSiteBinding) viewBindingHolder.getViewBinding()).safeTv.setVisibility(0);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void v(ExamSiteModel item, TrainingSiteManageActivity this$0, TrainingItemBinder this$1, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(this$1, "this$1");
            if (cn.mucang.android.jiakaoyi.mapcollect.collect.car.d.h() == null) {
                cn.mucang.android.core.utils.u.h("请先采集车身数据");
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("点击启用考场：" + item.examSiteId + ',' + ((Object) item.examSiteName));
            if (item.enable) {
                return;
            }
            this$0.m(this$1, item);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void w(ExamSiteModel item, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            RouteActivity.a aVar = RouteActivity.b;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "it.context");
            aVar.a(context, item);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void x(View view) {
            SpecialRadarDataActivity.a aVar = SpecialRadarDataActivity.f8146h;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "it.context");
            aVar.a(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void y(ExamSiteModel item, View view) {
            kotlin.jvm.internal.r.e(item, "$item");
            MapPreviewActivity.a aVar = MapPreviewActivity.f5072f;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "it.context");
            MapPreviewActivity.a.b(aVar, context, item, false, 4, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void z(TrainingSiteManageActivity this$0, ExamSiteModel item, View view) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(item, "$item");
            TeachProgrammeManagerActivity.a aVar = TeachProgrammeManagerActivity.f8153f;
            Context context = view.getContext();
            kotlin.jvm.internal.r.d(context, "it.context");
            aVar.b(context, this$0.o(), item);
        }

        @Override // com.drakeet.multitype.c
        @SuppressLint({"SetTextI18n"})
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public void c(ViewBindingHolder<ItemTrainingSiteBinding> holder, final ExamSiteModel item) {
            kotlin.jvm.internal.r.e(holder, "holder");
            kotlin.jvm.internal.r.e(item, "item");
            ((ItemTrainingSiteBinding) holder.getViewBinding()).areaTv.setText(item.provinceName + ((Object) item.cityName) + '-' + ((Object) item.ownerName));
            ((ItemTrainingSiteBinding) holder.getViewBinding()).nameTv.setText(item.examSiteName);
            ((ItemTrainingSiteBinding) holder.getViewBinding()).enableTv.setSelected(item.enable);
            C(holder, item);
            if (item.enable) {
                ((ItemTrainingSiteBinding) holder.getViewBinding()).divider.setVisibility(0);
                ((ItemTrainingSiteBinding) holder.getViewBinding()).operationLl.setVisibility(0);
                if (this.b.o()) {
                    ((ItemTrainingSiteBinding) holder.getViewBinding()).previewTv.setVisibility(8);
                    ((ItemTrainingSiteBinding) holder.getViewBinding()).migrateTv.setVisibility(8);
                } else {
                    ((ItemTrainingSiteBinding) holder.getViewBinding()).previewTv.setVisibility(0);
                    ((ItemTrainingSiteBinding) holder.getViewBinding()).migrateTv.setVisibility(0);
                }
                TextView textView = ((ItemTrainingSiteBinding) holder.getViewBinding()).routeTv;
                kotlin.jvm.internal.r.d(textView, "holder.viewBinding.routeTv");
                textView.setVisibility(item.comprehensive ? 0 : 8);
            } else {
                ((ItemTrainingSiteBinding) holder.getViewBinding()).divider.setVisibility(4);
                ((ItemTrainingSiteBinding) holder.getViewBinding()).operationLl.setVisibility(8);
            }
            TextView textView2 = ((ItemTrainingSiteBinding) holder.getViewBinding()).safeTv;
            kotlin.jvm.internal.r.d(textView2, "holder.viewBinding.safeTv");
            textView2.setVisibility(AppUtils.n() ? 0 : 8);
            ImageView imageView = ((ItemTrainingSiteBinding) holder.getViewBinding()).enableTv;
            final TrainingSiteManageActivity trainingSiteManageActivity = this.b;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.u0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TrainingSiteManageActivity.TrainingItemBinder.v(item, trainingSiteManageActivity, this, view);
                }
            });
            ((ItemTrainingSiteBinding) holder.getViewBinding()).routeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.w0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TrainingSiteManageActivity.TrainingItemBinder.w(item, view);
                }
            });
            ((ItemTrainingSiteBinding) holder.getViewBinding()).safeTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.x0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TrainingSiteManageActivity.TrainingItemBinder.x(view);
                }
            });
            ((ItemTrainingSiteBinding) holder.getViewBinding()).previewTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.a1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TrainingSiteManageActivity.TrainingItemBinder.y(item, view);
                }
            });
            TextView textView3 = ((ItemTrainingSiteBinding) holder.getViewBinding()).teachPlanTv;
            final TrainingSiteManageActivity trainingSiteManageActivity2 = this.b;
            textView3.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.v0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TrainingSiteManageActivity.TrainingItemBinder.z(trainingSiteManageActivity2, item, view);
                }
            });
            ((ItemTrainingSiteBinding) holder.getViewBinding()).migrateTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.z0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TrainingSiteManageActivity.TrainingItemBinder.A(item, view);
                }
            });
            ((ItemTrainingSiteBinding) holder.getViewBinding()).connectBaseTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.y0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TrainingSiteManageActivity.TrainingItemBinder.B(item, view);
                }
            });
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$Companion;", "", "()V", "KEY_ROLE_COACH", "", "launch", "", "context", "Landroid/content/Context;", "coach", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final void a(Context context, boolean z) {
            kotlin.jvm.internal.r.e(context, "context");
            if (!CarInfoManager.b()) {
                cn.mucang.android.core.utils.u.h("尚未绑定车辆信息，请先绑定");
                return;
            }
            if (RealCarSelectManager.b() == null) {
                cn.mucang.android.core.utils.u.h("请先设置真实车型");
                return;
            }
            Intent intent = new Intent(context, (Class<?>) TrainingSiteManageActivity.class);
            intent.putExtra("key.roleCoach", z);
            kotlin.v vVar = kotlin.v.f15822a;
            ActivityUtils.c(context, intent);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 5, 1})
    public static final class b<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.x.b.c(Boolean.valueOf(((ExamSiteModel) t2).enable), Boolean.valueOf(((ExamSiteModel) t).enable));
        }
    }

    private final void C() {
        g().stateLayout.f();
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.p0
            @Override // java.lang.Runnable
            public final void run() {
                TrainingSiteManageActivity.D(this.f8238a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(final TrainingSiteManageActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        try {
            final List<ExamSiteModel> listQ = new SiteApi().q();
            this$0.l(listQ);
            cn.mucang.android.core.utils.u.c(new SafeRunnable(this$0, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.s0
                @Override // java.lang.Runnable
                public final void run() {
                    TrainingSiteManageActivity.E(this.f8244a, listQ);
                }
            }));
        } catch (Exception unused) {
            cn.mucang.android.core.utils.u.c(new SafeRunnable(this$0, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.t0
                @Override // java.lang.Runnable
                public final void run() {
                    TrainingSiteManageActivity.F(this.f8349a);
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(TrainingSiteManageActivity this$0, List list) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(list, "$list");
        this$0.g().stateLayout.c();
        this$0.b.i(list);
        this$0.b.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(TrainingSiteManageActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.g().stateLayout.e();
    }

    private final void G(final ExamSiteModel examSiteModel) {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.n0
            @Override // java.lang.Runnable
            public final void run() {
                TrainingSiteManageActivity.H(this.f8234a, examSiteModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(final TrainingSiteManageActivity this$0, final ExamSiteModel item) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        new JCommonDialog(this$0, new JCommonDialog.DialogParams("当前训练场还未启用教学方案，请先启用教学方案", "", "取消", (View.OnClickListener) null, "确定", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TrainingSiteManageActivity.I(this.f8242a, item, view);
            }
        }, false, 64, (kotlin.jvm.internal.o) null)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(final TrainingSiteManageActivity this$0, final ExamSiteModel item, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        f.a.a.a.j.a.a(this$0).c(TeachProgrammeManagerActivity.f8153f.a(this$0, this$0.o(), item), 1000, new f.a.a.a.j.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.q0
            @Override // f.a.a.a.j.c
            public final void onActivityResult(int i, int i2, Intent intent) {
                TrainingSiteManageActivity.J(this.f8240a, item, i, i2, intent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(final TrainingSiteManageActivity this$0, final ExamSiteModel item, int i, int i2, Intent intent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        if (i2 == -1) {
            new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this$0).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.c1
                @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
                public final void a() {
                    TrainingSiteManageActivity.K(this.f8170a, item);
                }
            }, "正在加载数据", "加载数据错误");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(TrainingSiteManageActivity this$0, ExamSiteModel item) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(item, "$item");
        this$0.L(item);
    }

    private final void L(ExamSiteModel examSiteModel) {
        ExamSiteUtil.r(examSiteModel);
        ResourceManager.p(null, null);
        cn.mucang.android.core.utils.u.c(new SafeRunnable(this, new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.b1
            @Override // java.lang.Runnable
            public final void run() {
                TrainingSiteManageActivity.M(this.f8167a);
            }
        }));
        RainModeMgr.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(TrainingSiteManageActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.l(kotlin.jvm.internal.z.c(this$0.b.c()));
        this$0.b.notifyDataSetChanged();
        this$0.g().recyclerView.scrollToPosition(0);
    }

    private final void l(List<ExamSiteModel> list) {
        long jE = ExamSiteUtil.e(0L);
        for (ExamSiteModel examSiteModel : list) {
            examSiteModel.enable = false;
            if (examSiteModel.examSiteId == jE) {
                examSiteModel.enable = true;
            }
        }
        if (list.size() > 1) {
            kotlin.collections.y.A(list, new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(final TrainingItemBinder trainingItemBinder, final ExamSiteModel examSiteModel) {
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.d1
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                TrainingSiteManageActivity.n(examSiteModel, trainingItemBinder, this);
            }
        }, "正在加载数据", "加载数据错误");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    public static final void n(ExamSiteModel item, TrainingItemBinder this_enableExamSite, TrainingSiteManageActivity this$0) throws ApiException, InternalException, HttpException {
        ArrayList arrayList;
        CarItemModel config;
        boolean z;
        boolean z2;
        TeachPlanItemModel teachPlanItemModel;
        TeachPlanItemModel teachPlanItemModel2;
        kotlin.jvm.internal.r.e(item, "$item");
        kotlin.jvm.internal.r.e(this_enableExamSite, "$this_enableExamSite");
        kotlin.jvm.internal.r.e(this$0, "this$0");
        List<TeachPlanItemModel> listM = new cn.mucang.android.jiakaoyi.teachingk2.teachplan.b.b().m(item.examSiteId);
        if (listM == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : listM) {
                TeachPlanItemModel teachPlanItemModel3 = (TeachPlanItemModel) obj;
                if ((teachPlanItemModel3.gearType != 1 || cn.mucang.android.jiakaoyi.signal.utils.f.c()) && (teachPlanItemModel3.gearType != 2 || cn.mucang.android.jiakaoyi.signal.utils.f.b())) {
                    int i = teachPlanItemModel3.universalModelNum;
                    if (i != 0) {
                        LocalCarModel localCarModelB = RealCarSelectManager.b();
                        z = localCarModelB != null && (config = localCarModelB.getConfig()) != null && i == config.getCode();
                    }
                }
                if (z) {
                    arrayList2.add(obj);
                }
            }
            arrayList = arrayList2;
        }
        long jA = cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.a(item.examSiteId);
        long j = 0;
        if (jA <= 0 || arrayList == null) {
            z2 = false;
            break;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (it.hasNext()) {
                if (((TeachPlanItemModel) it.next()).id == jA) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("找到历史启用方案仍有效：", Long.valueOf(jA)));
                    z2 = true;
                    break;
                }
            } else {
                z2 = false;
                break;
            }
        }
        if (!z2) {
            if ((arrayList != null ? arrayList.size() : 0) != 1) {
                cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.d(item.examSiteId, 0L);
                this$0.G(item);
                return;
            }
        }
        if (!z2) {
            cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("没有有效的历史启用方案，但列表符合条件的只有一个，直接启用：", Long.valueOf((arrayList == null || (teachPlanItemModel = (TeachPlanItemModel) kotlin.collections.s.c0(arrayList)) == null) ? 0L : teachPlanItemModel.id)));
            long j2 = item.examSiteId;
            if (arrayList != null && (teachPlanItemModel2 = (TeachPlanItemModel) kotlin.collections.s.c0(arrayList)) != null) {
                j = teachPlanItemModel2.id;
            }
            cn.mucang.android.jiakaoyi.teachingk2.teachplan.a.d(j2, j);
        }
        this$0.L(item);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o() {
        return ((Boolean) this.c.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(TrainingSiteManageActivity this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(TrainingSiteManageActivity this$0) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.C();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "训练场管理";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TrainingSiteManageActivity.p(this.f8207a, view);
            }
        });
        this.b.g(ExamSiteModel.class, new TrainingItemBinder(this));
        g().recyclerView.setLayoutManager(new LinearLayoutManager(this));
        g().recyclerView.setAdapter(this.b);
        g().stateLayout.setOnRefreshListener(new StateLayout.c() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.o0
            @Override // cn.mucang.android.core.widget.StateLayout.c
            public final void a() {
                TrainingSiteManageActivity.q(this.f8236a);
            }
        });
        C();
    }
}
