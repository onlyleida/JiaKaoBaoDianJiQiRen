package cn.mucang.android.jiakaoyi.teachingk2.ui.settings;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingBinder;
import cn.mucang.android.jiakaoyi.framework.base.ViewBindingHolder;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity;
import cn.mucang.android.jiakaoyi.framework.utils.ActivityUtils;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ActivityDrivingSettingBinding;
import cn.mucang.android.jiakaoyi.teachbase.databinding.ItemDriveSettingBinding;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfig;
import cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\n\u000b\fB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\tH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDrivingSettingBinding;", "()V", "adapter", "Lcom/drakeet/multitype/MultiTypeAdapter;", "getStatName", "", "init", "", "Companion", "DriveSettingItem", "SettingItemBinder", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DrivingSettingActivity extends BaseViewBindingActivity<ActivityDrivingSettingBinding> {
    public static final a c = new a(null);
    private final com.drakeet.multitype.f b = new com.drakeet.multitype.f(null, 0, null, 7, null);

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$SettingItemBinder;", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;", "Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$DriveSettingItem;", "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemDriveSettingBinding;", "(Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity;)V", "onBindViewHolder", "", "holder", "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;", "item", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public final class SettingItemBinder extends ViewBindingBinder<b, ItemDriveSettingBinding> {
        final /* synthetic */ DrivingSettingActivity b;

        public SettingItemBinder(DrivingSettingActivity this$0) {
            r.e(this$0, "this$0");
            this.b = this$0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(DrivingSettingActivity this$0, b item, final ViewBindingHolder holder, View view) {
            r.e(this$0, "this$0");
            r.e(item, "$item");
            r.e(holder, "$holder");
            LocalConfigManager.c(this$0, item.getB(), String.valueOf(!((ItemDriveSettingBinding) holder.getViewBinding()).checkCb.isSelected()), new Function0<v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.DrivingSettingActivity$SettingItemBinder$onBindViewHolder$1$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ v invoke() {
                    invoke2();
                    return v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ((ItemDriveSettingBinding) holder.getViewBinding()).checkCb.setSelected(!((ItemDriveSettingBinding) holder.getViewBinding()).checkCb.isSelected());
                }
            });
        }

        @Override // com.drakeet.multitype.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public void c(final ViewBindingHolder<ItemDriveSettingBinding> holder, final b item) {
            v vVar;
            r.e(holder, "holder");
            r.e(item, "item");
            ((ItemDriveSettingBinding) holder.getViewBinding()).titleTv.setText(item.getF8247a());
            ((ItemDriveSettingBinding) holder.getViewBinding()).titleTv.setTextSize(0, this.b.getResources().getDimension(item.getF8248d()));
            ((ItemDriveSettingBinding) holder.getViewBinding()).titleTv.getPaint().setFakeBoldText(item.getC());
            if (item.getB() == null) {
                vVar = null;
            } else {
                final DrivingSettingActivity drivingSettingActivity = this.b;
                ((ItemDriveSettingBinding) holder.getViewBinding()).checkCb.setVisibility(0);
                ((ItemDriveSettingBinding) holder.getViewBinding()).checkCb.setSelected(LocalConfigManager.f(item.getB()));
                ((ItemDriveSettingBinding) holder.getViewBinding()).checkCb.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DrivingSettingActivity.SettingItemBinder.p(drivingSettingActivity, item, holder, view);
                    }
                });
                vVar = v.f15822a;
            }
            if (vVar == null) {
                ((ItemDriveSettingBinding) holder.getViewBinding()).checkCb.setVisibility(8);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$Companion;", "", "()V", "launch", "", "context", "Landroid/content/Context;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(o oVar) {
            this();
        }

        public final void a(Context context) {
            r.e(context, "context");
            ActivityUtils.c(context, new Intent(context, (Class<?>) DrivingSettingActivity.class));
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/DrivingSettingActivity$DriveSettingItem;", "", Constant.PROTOCOL_WEBVIEW_NAME, "", "config", "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;", TtmlNode.BOLD, "", "size", "", "(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;ZI)V", "getBold", "()Z", "getConfig", "()Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;", "getName", "()Ljava/lang/String;", "getSize", "()I", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f8247a;
        private final LocalConfig b;
        private final boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f8248d;

        public b(String name, LocalConfig localConfig, boolean z, int i) {
            r.e(name, "name");
            this.f8247a = name;
            this.b = localConfig;
            this.c = z;
            this.f8248d = i;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getC() {
            return this.c;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final LocalConfig getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getF8247a() {
            return this.f8247a;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final int getF8248d() {
            return this.f8248d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(DrivingSettingActivity this$0, View view) {
        r.e(this$0, "this$0");
        this$0.finish();
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "驾驶行为检测设置";
    }

    @Override // cn.mucang.android.jiakaoyi.framework.base.ui.BaseViewBindingActivity
    protected void init() {
        super.init();
        g().title.backIv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.settings.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DrivingSettingActivity.j(this.f8255a, view);
            }
        });
        g().title.titleTv.setText("驾驶行为检测设置");
        g().dataRv.setLayoutManager(new LinearLayoutManager(this));
        g().dataRv.setAdapter(this.b);
        this.b.g(b.class, new SettingItemBinder(this));
        ArrayList arrayList = new ArrayList();
        LocalConfig localConfig = LocalConfig.EnableDrive;
        int i = R.dimen.text_30;
        arrayList.add(new b("是否开启驾驶行为检测", localConfig, true, i));
        arrayList.add(new b("教学驾驶行为", null, true, R.dimen.text_27));
        LocalConfig localConfig2 = LocalConfig.EnableFace;
        int i2 = R.dimen.text_24;
        arrayList.add(new b("是否开启行驶中低头检测", localConfig2, false, i2));
        arrayList.add(new b("是否开启行驶中摆头检测", LocalConfig.EnableStart, false, i2));
        arrayList.add(new b("安全驾驶行为", null, true, i2));
        arrayList.add(new b("是否开启行驶中双手离开方向盘检测", LocalConfig.EnableWheelNone, false, i2));
        arrayList.add(new b("是否开启行驶中单手打方向盘检测", LocalConfig.EnableWheelSingle, false, i2));
        arrayList.add(new b("是否开启单手开车门检测", LocalConfig.EnableDoor, false, i2));
        arrayList.add(new b("是否开启行驶中接打电话检测", LocalConfig.EnableCall, false, i2));
        arrayList.add(new b("是否开启行驶中喝水检测", LocalConfig.EnableDrink, false, i2));
        arrayList.add(new b("是否开启行驶中抽烟检测", LocalConfig.EnableSmoke, false, i2));
        arrayList.add(new b("是否开启行驶中疲劳驾驶检测", LocalConfig.EnableFatigue, false, i2));
        arrayList.add(new b("是否开启行驶中双手交叉打方向盘检测", LocalConfig.EnableHandCross, false, i2));
        arrayList.add(new b("是否开启坐姿倾斜检测", LocalConfig.EnableSitTilt, false, i2));
        arrayList.add(new b("是否开启表情检测", LocalConfig.EnableEmotionCheck, false, i2));
        arrayList.add(new b("晚上是否自动关闭驾驶行为检测（日落前1小时关闭，日出后1小时开启）", LocalConfig.EnableNightClose, true, i));
        this.b.i(arrayList);
    }
}
