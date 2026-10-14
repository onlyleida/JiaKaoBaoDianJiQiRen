.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0015J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0008\u0010\u0016\u001a\u00020\u0012H\u0016J\u0008\u0010\u0017\u001a\u00020\u0012H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;",
        "()V",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "getKeMu",
        "()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "keMu$delegate",
        "Lkotlin/Lazy;",
        "paymentModeViewModel",
        "Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingViewModel;",
        "getPaymentModeViewModel",
        "()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingViewModel;",
        "paymentModeViewModel$delegate",
        "getStatName",
        "",
        "init",
        "",
        "loadItems",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/SettingItem;",
        "onBackPressed",
        "savePayMode",
        "Companion",
        "mapcollect_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final b:Lkotlin/f;

.field private final c:Lkotlin/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$keMu$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$keMu$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->b:Lkotlin/f;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$paymentModeViewModel$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$paymentModeViewModel$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    invoke-static {v0}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->c:Lkotlin/f;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->onBackPressed()V

    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->k()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p0

    return-object p0
.end method

.method private final k()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->b:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-object v0
.end method

.method private final l()Lcn/mucang/jiakaoyi/uilib/model/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->c:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/e;

    return-object v0
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->onBackPressed()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->llPayMode:Landroid/widget/LinearLayout;

    iget-boolean v1, p1, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;->charge:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->checkBox3:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-boolean v1, p1, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;->payFirst:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->cbForcedEnd:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-boolean p1, p1, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;->forceEnd:Z

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->B(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->A(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final v()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v13, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 3
    sget v3, Lcn/mucang/android/jiakaoyi/mapcollect/R$drawable;->ic_car:I

    .line 4
    new-instance v7, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$b;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$b;-><init>()V

    const-string v4, "\u8f66\u8eab\u6570\u636e\u7ba1\u7406"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe0

    const/4 v12, 0x0

    move-object v2, v13

    .line 5
    invoke-direct/range {v2 .. v12}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 6
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 8
    sget v15, Lcn/mucang/android/jiakaoyi/mapcollect/R$drawable;->ic_site:I

    .line 9
    new-instance v19, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$c;

    invoke-direct/range {v19 .. v19}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$c;-><init>()V

    const-string v16, "\u8003\u573a\u5730\u56fe\u7ba1\u7406"

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xe0

    const/16 v24, 0x0

    move-object v14, v2

    .line 10
    invoke-direct/range {v14 .. v24}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 13
    sget v4, Lcn/mucang/android/jiakaoyi/mapcollect/R$drawable;->setting_ic_backup:I

    .line 14
    new-instance v8, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$d;

    invoke-direct {v8, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    const-string v5, "\u8003\u573a\u6570\u636e\u62a5\u5907"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v3, v2

    .line 15
    invoke-direct/range {v3 .. v13}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 18
    sget v15, Lcn/mucang/android/jiakaoyi/mapcollect/R$drawable;->setting_ic_exam_model:I

    .line 19
    new-instance v19, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$e;

    invoke-direct/range {v19 .. v19}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$e;-><init>()V

    const-string v16, "\u8003\u8bd5\u6a21\u5f0f\u8bbe\u7f6e"

    move-object v14, v2

    .line 20
    invoke-direct/range {v14 .. v24}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 21
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;

    .line 23
    sget v4, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->ic_switch_exam_rule:I

    .line 24
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->k()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v3

    const-string v5, "\u9ed8\u8ba4\u8003\u573a"

    if-nez v3, :cond_0

    :goto_0
    move-object v6, v5

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteName:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v3

    :goto_1
    const/4 v7, 0x1

    .line 25
    new-instance v8, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$f;

    invoke-direct {v8, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$f;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xc0

    const/4 v13, 0x0

    const-string v5, "\u8bc4\u5224\u89c4\u5219\u8003\u573a\u8bbe\u7f6e"

    move-object v3, v2

    .line 26
    invoke-direct/range {v3 .. v13}, Lcn/mucang/jiakaoyi/uilib/ui/setting/t0;-><init>(ILjava/lang/String;Ljava/lang/String;ZLcn/mucang/jiakaoyi/uilib/ui/setting/v0;ZZLcn/mucang/android/jiakaoyi/framework/h/b;ILkotlin/jvm/internal/o;)V

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private final w()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->a:Lcn/mucang/jiakaoyi/uilib/s/g;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/s/g;->a()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, v0, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;->payFirst:Z

    .line 3
    iget-boolean v2, v0, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;->forceEnd:Z

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->checkBox3:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->cbForcedEnd:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v2, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/a;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/a;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/e;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/e;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->checkBox3:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->cbForcedEnd:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/e;->q(ZZ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->cbForcedEnd:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;->forceEnd:Z

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->checkBox3:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p1, Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;->payFirst:Z

    .line 8
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/g;->a:Lcn/mucang/jiakaoyi/uilib/s/g;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/s/g;->d(Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;)V

    const-string p1, "\u8bbe\u7f6e\u6210\u529f"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/d;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/d;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const-string p1, "\u8bbe\u7f6e\u5931\u8d25"

    .line 11
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/c;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/c;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4fdd\u5b58\u5931\u8d25"

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4fdd\u5b58\u4ed8\u8d39\u6a21\u5f0f\u5931\u8d25,\u662f\u5426\u9000\u51fa\uff1f"

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/g;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    const-string v2, "\u9000\u51fa"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/e;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    const-string p0, "\u91cd\u8bd5"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const-string v0, "Builder(MucangConfig.get\u2026                .create()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u670d\u52a1\u5546\u8bbe\u7f6e"

    return-object v0
.end method

.method protected init()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u670d\u52a1\u5546\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/b;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity$a;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->v()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/e;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/jiakaoyi/uilib/model/e;->a:Landroidx/lifecycle/z;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/f;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->l()Lcn/mucang/jiakaoyi/uilib/model/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/e;->h()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityAgentManageBinding;->llPayMode:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/admin/AgentManageActivity;->w()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
