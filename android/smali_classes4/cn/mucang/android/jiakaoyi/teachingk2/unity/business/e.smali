.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0008\u0010\u0010\u001a\u00020\u000bH\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/KeMuAreaSwitcher;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "areaList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;",
        "dialog",
        "Landroid/app/Dialog;",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "onSignalChanged",
        "",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "showDialog",
        "startSwitch",
        "stop",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Landroid/app/Dialog;

.field private static d:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->b:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->c(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final b()V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->d:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->c:Landroid/app/Dialog;

    if-nez v1, :cond_3

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "getCurrentActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/dialog/SwitchKeMuDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V

    sput-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->c:Landroid/app/Dialog;

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/a;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->c:Landroid/app/Dialog;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final c(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->c:Landroid/app/Dialog;

    return-void
.end method

.method public static final d(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 3

    const-string v0, "keMu"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;

    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->d:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->b()Lcn/mucang/android/jiakaoyi/teachingk2/res/n;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/n;->m:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 4
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    :cond_0
    return-void
.end method

.method public static final e()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->d:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 4

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->b:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/res/model/AreaModel;->pointList:Ljava/util/List;

    invoke-static {v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->b()V

    goto :goto_0

    .line 6
    :cond_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/e;->c:Landroid/app/Dialog;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    :goto_0
    return-void
.end method
