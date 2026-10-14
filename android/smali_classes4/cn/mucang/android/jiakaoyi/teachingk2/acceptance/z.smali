.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/z$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/RobotAcceptanceListener;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceListener;",
        "()V",
        "createAcceptanceImpl",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;",
        "mode",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
        "extra",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;",
        "initStatusBar",
        "",
        "binding",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;",
        "scope",
        "Landroidx/lifecycle/LifecycleCoroutineScope;",
        "isLight",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->c(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V

    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;",
            ")",
            "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w<",
            "*>;"
        }
    .end annotation

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/z$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;->getNotPassSteps()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/teach/TeachAcceptanceImpl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;->getSubType()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;->getSubType()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
