.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/a0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$observer$1",
        "Landroidx/lifecycle/Observer;",
        "",
        "onChanged",
        "",
        "url",
        "teachbase_release"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->d(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->e()V

    return-void
.end method

.method private static final d(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V

    return-void
.end method

.method private static final e()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/k;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/k;-><init>()V

    .line 3
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->ROBOT:Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/login/model/DeviceType;->getType()I

    move-result v1

    const-string v2, "yinhe_privacy_teach_video"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/k;->m(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    .line 1
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->a:Lcn/mucang/android/jiakaoyi/teachingk2/video/d;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->c()Landroidx/lifecycle/z;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p0}, Landroidx/lifecycle/LiveData;->m(Landroidx/lifecycle/a0;)V

    :goto_0
    const-string v2, "Video url \u8fd4\u56de\uff1a"

    move-object/from16 v7, p1

    .line 2
    invoke-static {v2, v7}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V

    .line 5
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    .line 6
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 7
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_robot_use_video:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_warm_tip_use_robot_video:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 9
    new-instance v14, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;

    .line 10
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf0

    const/4 v13, 0x0

    move-object v3, v14

    move-object/from16 v7, p1

    .line 11
    invoke-direct/range {v3 .. v13}, Lcn/mucang/android/jiakaoyi/teachingk2/video/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/o;)V

    invoke-static {v2, v14}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;Lcn/mucang/android/jiakaoyi/teachingk2/video/e;)V

    .line 12
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/video/e;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/l;

    invoke-direct {v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 13
    :goto_1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity;)Lcn/mucang/android/jiakaoyi/teachingk2/video/e;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :goto_2
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/video/d;->e(Landroidx/lifecycle/z;)V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/m;

    .line 15
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/RobotGuideActivity$e;->c(Ljava/lang/String;)V

    return-void
.end method
