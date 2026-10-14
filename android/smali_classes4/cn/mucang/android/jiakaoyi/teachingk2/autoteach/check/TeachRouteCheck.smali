.class public final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;
.super Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/BaseTeachCheck;",
        "routeManager",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/TeachRouteManager;)V",
        "chooseDialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TypeChooseDialog;",
        "initStatus",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/CheckStatusModel;",
        "selectType",
        "",
        "waiting",
        "checkStatus",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "reset",
        "",
        "showDialog",
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
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

.field private final c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/g;

.field private e:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;)V
    .locals 1

    const-string v0, "routeManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/d;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->CheckType:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;)V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_select_teach_type:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;->i(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->Waiting:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    return-void
.end method

.method public static final synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    return-object p0
.end method

.method public static final synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->e:I

    return p0
.end method

.method public static final synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->e:I

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->h(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/g;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/g;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck$showDialog$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck$showDialog$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;)V

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/g;-><init>(Landroid/content/Context;Lkotlin/jvm/b/l;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/g;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/g;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/g;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;
    .locals 2

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->d()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->e:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->c:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    return-object p1

    .line 4
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/RobotAccount;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->e:I

    if-nez p1, :cond_2

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->g()V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->b:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/a;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->d:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/g;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    :goto_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->e:I

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/check/TeachRouteCheck;->a:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/manager/b0;->w(Z)V

    return-void
.end method
