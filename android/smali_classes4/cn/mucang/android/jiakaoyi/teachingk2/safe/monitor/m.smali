.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0007J\u0008\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u0019H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/ModuleStatusMonitor;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "dialog",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/P0ErrorDialog;",
        "lastCode",
        "",
        "list",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
        "markIndex",
        "",
        "moduleMark",
        "getModuleMark",
        "()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
        "setModuleMark",
        "(Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V",
        "startErrorTime",
        "",
        "init",
        "",
        "isShowing",
        "",
        "onSignalChanged",
        "it",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "showErrorDialog",
        "signalGetter",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;

.field private static b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

.field private static g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->c:Ljava/util/List;

    const-string v0, ""

    .line 2
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b()V
    .locals 3

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/h;

    const-wide/16 v1, 0x3e8

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final c()V
    .locals 5

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/provider/TeachSafeProvider;->getCheckList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 5
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getLevel()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :goto_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public static final d()Z
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->c()V

    return-void
.end method

.method public static synthetic f(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->i(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 10

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    move-object v5, v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_4

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    .line 3
    invoke-virtual {v6, p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCheckInt(Lcn/mucang/android/jiakaoyi/signal/c/e;)I

    move-result v8

    .line 4
    invoke-virtual {v6, v8}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->checkPass(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getModule()I

    move-result v8

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/settings/CheckModuleManager;->a(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v5, :cond_0

    move-object v5, v6

    .line 6
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    :cond_1
    sget v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->e:I

    if-eqz v8, :cond_2

    if-ge v4, v8, :cond_3

    .line 8
    :cond_2
    sget-object v8, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;

    sput v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->e:I

    .line 9
    invoke-virtual {v8, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V

    :cond_3
    move v4, v7

    goto :goto_0

    .line 10
    :cond_4
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v1

    .line 11
    :cond_5
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v4, 0x1

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :cond_7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->d:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_9

    .line 14
    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/socket/u;->p(Ljava/lang/String;)Z

    .line 15
    :cond_9
    sput-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->d:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    instance-of v3, v0, Lcn/mucang/jiakaoyi/uilib/h;

    if-eqz v3, :cond_a

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/h;

    goto :goto_3

    :cond_a
    move-object v0, v1

    :goto_3
    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    sget-object v3, Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;->P0Error:Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;

    invoke-interface {v0, v3}, Lcn/mucang/jiakaoyi/uilib/h;->a(Lcn/mucang/jiakaoyi/uilib/AutoTeachEvent;)Z

    move-result v0

    if-ne v0, v4, :cond_c

    const/4 v2, 0x1

    :cond_c
    :goto_4
    if-eqz v2, :cond_e

    .line 17
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 18
    :goto_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->g:J

    return-void

    :cond_e
    if-nez v5, :cond_10

    .line 19
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/DialogExtensionKt;->b(Landroid/app/Dialog;)V

    .line 20
    :goto_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sput-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->g:J

    return-void

    .line 21
    :cond_10
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;

    if-nez v0, :cond_17

    .line 22
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Lcn/mucang/android/core/config/n;

    if-eqz v2, :cond_11

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/core/config/n;

    :cond_11
    if-eqz v1, :cond_16

    .line 23
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_7

    .line 24
    :cond_12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v0

    if-eqz v0, :cond_13

    instance-of v0, v1, Lcn/mucang/android/jiakaoyi/unity/activity/UnityMainActivity;

    if-nez v0, :cond_13

    return-void

    .line 25
    :cond_13
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    instance-of v0, v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/LoginActivity;

    if-nez v0, :cond_14

    invoke-interface {v1}, Lcn/mucang/android/core/config/t;->getStatName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "B2Main"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 26
    invoke-interface {v1}, Lcn/mucang/android/core/config/t;->getStatName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "B2Exam"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-interface {v1}, Lcn/mucang/android/core/config/t;->getStatName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "B2Train"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 27
    :cond_14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sget-wide v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->g:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x9c4

    cmp-long p1, v2, v6

    if-lez p1, :cond_19

    .line 28
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;

    invoke-direct {p1, v1, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V

    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;

    .line 29
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 30
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;

    if-nez p1, :cond_15

    goto :goto_8

    :cond_15
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/i;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/i;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_8

    :cond_16
    :goto_7
    return-void

    :cond_17
    if-nez v0, :cond_18

    goto :goto_8

    .line 31
    :cond_18
    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V

    :cond_19
    :goto_8
    return-void
.end method

.method private static final i(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/y;

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->f:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    return-object v0
.end method

.method public final g(Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;)V
    .locals 0

    .line 1
    sput-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->f:Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
