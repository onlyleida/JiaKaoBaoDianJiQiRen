.class public final Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007J \u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceManager;",
        "",
        "()V",
        "listener",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceListener;",
        "createAcceptanceImpl",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;",
        "mode",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;",
        "extra",
        "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;",
        "init",
        "",
        "initStatusBar",
        "binding",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;",
        "scope",
        "Landroidx/lifecycle/LifecycleCoroutineScope;",
        "isLight",
        "",
        "TeachingK2_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;

.field private static b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;
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

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/x;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/x;->b(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModule;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceChildModel;)Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/w;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/x;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/x;

    return-void
.end method

.method public static final c(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/y;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/x;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/x;->a(Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/RobotStatusBarBinding;Landroidx/lifecycle/m;Z)V

    :goto_0
    return-void
.end method
