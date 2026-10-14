.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J&\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bH\u0007J\u0008\u0010\u000c\u001a\u00020\u0006H\u0007J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;",
        "",
        "()V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "closeSafeWait30s",
        "",
        "handlerSafeModule",
        "open",
        "",
        "onSuccess",
        "Lkotlin/Function1;",
        "init",
        "showAdvanceBrakeDialog",
        "activity",
        "Landroid/app/Activity;",
        "showCloseBrakeDialog",
        "showForceBrakeDialog",
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


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;

.field private static b:Lkotlinx/coroutines/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/t1;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->b:Lkotlinx/coroutines/t1;

    return-object v0
.end method

.method public static final synthetic b(Lkotlinx/coroutines/t1;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->b:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final c()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->a(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static final d(ZLkotlin/jvm/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$handlerSafeModule$1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$handlerSafeModule$1;-><init>(ZLkotlin/jvm/b/l;)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->g(ZZLkotlin/jvm/b/a;ILjava/lang/Object;)V

    return-void
.end method

.method public static final declared-synchronized e()V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;

    monitor-enter v0

    :try_start_0
    const-string v1, "\u521d\u59cb\u5316\u5b89\u5168"

    .line 1
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SpeedBrakeManager;->b()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->b()V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/q;->c()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/v;->e()V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/s;->b()V

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/z;->e()V

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/r;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final f(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close_safe_30s:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_close_safe_30s)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close_safe_30s_hint:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$showAdvanceBrakeDialog$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$showAdvanceBrakeDialog$1$1;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->k(Lkotlin/jvm/b/l;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final g(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close_safe:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_close_safe)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_dialog_close_safe_hint:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$showCloseBrakeDialog$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$showCloseBrakeDialog$1$1;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->k(Lkotlin/jvm/b/l;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final h(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_disable_safe:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_disable_safe)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_disable_safe_hint:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$showForceBrakeDialog$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$showForceBrakeDialog$1$1;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/g0;->k(Lkotlin/jvm/b/l;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
