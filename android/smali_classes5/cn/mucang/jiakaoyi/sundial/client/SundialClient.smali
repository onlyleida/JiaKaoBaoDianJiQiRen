.class public final Lcn/mucang/jiakaoyi/sundial/client/SundialClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001;B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0002J\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010 \u001a\u00020\u001eJ\u0006\u0010!\u001a\u00020\u001eJ\u0006\u0010\"\u001a\u00020\u0006J\u0006\u0010#\u001a\u00020\u001eJ\u000e\u0010$\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u0006J\u0008\u0010%\u001a\u00020\u001eH\u0002J\u001c\u0010&\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001e0*J:\u0010+\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\t2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001e0*2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u001e0*J*\u00100\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020(2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001e0*2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u001e0*J\u0006\u00101\u001a\u00020\tJ\u0008\u0010\r\u001a\u00020\tH\u0002J\u0010\u00102\u001a\u00020\u001e2\u0006\u00103\u001a\u000204H\u0016J\u0006\u00105\u001a\u00020\u001eJ\u000e\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\u0014J\u0010\u00108\u001a\u00020\u001e2\u0006\u00109\u001a\u00020\u0004H\u0002J\u0006\u0010:\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\n\"\u0004\u0008\u0018\u0010\u000cR\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/client/SundialClient;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "carModel",
        "Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;",
        "config",
        "Lcn/mucang/jiakaoyi/sundial/client/SundialClient$Config;",
        "isStudentFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "setStudentFlow",
        "(Lkotlinx/coroutines/flow/MutableStateFlow;)V",
        "isSupport",
        "jkySundialService",
        "Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;",
        "lastDistance",
        "",
        "lastEngineStart",
        "latestPicFile",
        "Ljava/io/File;",
        "learnTimeFlow",
        "Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;",
        "getLearnTimeFlow",
        "setLearnTimeFlow",
        "signalChannel",
        "Lkotlinx/coroutines/channels/Channel;",
        "sundialMiniWindow",
        "Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;",
        "checkPermission",
        "",
        "closeAllPage",
        "destroy",
        "forceStudentLogout",
        "getConfig",
        "hideMiniWindow",
        "init",
        "initInternal",
        "interceptCoachLogin",
        "activity",
        "Landroid/app/Activity;",
        "next",
        "Lkotlin/Function0;",
        "interceptLogin",
        "xyToken",
        "",
        "isK2",
        "back",
        "interceptLogout",
        "isStudentLogin",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "openPage",
        "saveFacePic",
        "file",
        "sendObd",
        "clientCarModel",
        "showMiniWindow",
        "Config",
        "sundial_release"
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
.field public static final a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

.field private static b:Lkotlinx/coroutines/flow/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/b2<",
            "Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lkotlinx/coroutines/flow/b2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/b2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Z

.field private static f:F

.field private static g:Ljava/io/File;

.field private static final h:Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

.field private static final i:Lkotlinx/coroutines/channels/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/f<",
            "Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

.field private static k:Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

.field private static l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;-><init>(ZJ)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/l2;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/b2;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->b:Lkotlinx/coroutines/flow/b2;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/l2;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/b2;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->c:Lkotlinx/coroutines/flow/b2;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->h:Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 4
    invoke-static {v0, v1, v1, v2, v1}, Lkotlinx/coroutines/channels/h;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/b/l;ILjava/lang/Object;)Lkotlinx/coroutines/channels/f;

    move-result-object v0

    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->i:Lkotlinx/coroutines/channels/f;

    .line 5
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->j:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    .line 6
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->k:Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final B()Z
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->k:Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->b()Lcn/mucang/jiakaoyi/sundial/client/o;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/sundial/client/o;->a()Z

    move-result v0

    .line 2
    :goto_0
    sget-object v2, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->k:Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->b()Lcn/mucang/jiakaoyi/sundial/client/o;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcn/mucang/jiakaoyi/sundial/client/o;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 3
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-gt v4, v2, :cond_3

    const/16 v5, 0xe

    if-gt v2, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mcwlhy"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xf

    if-lez v3, :cond_4

    .line 6
    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 7
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lez v3, :cond_6

    const/4 v5, 0x0

    :cond_5
    add-int/2addr v5, v4

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v5, v3, :cond_5

    .line 8
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "result.toString()"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :cond_7
    invoke-static {v3}, Lcn/mucang/sundial/library/Sundial;->support(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    .line 10
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_9

    sget-object v1, Lcn/mucang/jiakaoyi/sundial/client/e;->a:Lcn/mucang/jiakaoyi/sundial/client/e;

    .line 11
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    .line 12
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba1\u65f6SDK\u914d\u7f6e\u4fe1\u606f imei:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return v0
.end method

.method private static final C()V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/sundial/library/Sundial;->bindDeviceNum(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic D()V
    .locals 0

    invoke-static {}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->C()V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->p(Lcn/mucang/android/core/permission/model/PermissionsResult;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->v(Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;)V

    return-void
.end method

.method private final H(Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/model/CarModel;

    invoke-direct {v0}, Lcn/mucang/sundial/android/model/CarModel;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->toServiceCarModel(Lcn/mucang/sundial/android/model/CarModel;)V

    .line 3
    sget-object v1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->b()Lcn/mucang/jiakaoyi/sundial/service/c;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/sundial/service/c;->a()Lcn/mucang/jiakaoyi/sundial/service/strategy/d;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Lcn/mucang/jiakaoyi/sundial/service/strategy/d;->a(Lcn/mucang/sundial/android/model/CarModel;)V

    .line 4
    :goto_0
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->b()Lcn/mucang/jiakaoyi/sundial/service/c;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/service/c;->b()Lcn/mucang/jiakaoyi/sundial/service/strategy/e;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p1, Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;->location:Landroid/location/Location;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/sundial/service/strategy/e;->a(Landroid/location/Location;)V

    :goto_1
    return-void
.end method

.method public static final synthetic a()Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->h:Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;

    return-object v0
.end method

.method public static final synthetic b()F
    .locals 1

    .line 1
    sget v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->f:F

    return v0
.end method

.method public static final synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->e:Z

    return v0
.end method

.method public static final synthetic d()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->g:Ljava/io/File;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/channels/f;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->i:Lkotlinx/coroutines/channels/f;

    return-object v0
.end method

.method public static final synthetic f()Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->j:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    return-object v0
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/sundial/client/SundialClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->w()V

    return-void
.end method

.method public static final synthetic h(Lcn/mucang/jiakaoyi/sundial/client/SundialClient;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->B()Z

    move-result p0

    return p0
.end method

.method public static final synthetic i()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->d:Z

    return v0
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/sundial/client/SundialClient;Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->H(Lcn/mucang/jiakaoyi/sundial/client/model/ClientCarModel;)V

    return-void
.end method

.method public static final synthetic k(F)V
    .locals 0

    .line 1
    sput p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->f:F

    return-void
.end method

.method public static final synthetic l(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->e:Z

    return-void
.end method

.method public static final synthetic m(Ljava/io/File;)V
    .locals 0

    .line 1
    sput-object p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->g:Ljava/io/File;

    return-void
.end method

.method public static final synthetic n(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->d:Z

    return-void
.end method

.method private final o()V
    .locals 5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/z;->b([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "\u8ba1\u65f6\u5df2\u83b7\u53d6\u6240\u6709\u6743\u9650"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->w()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcn/mucang/jiakaoyi/sundial/client/f;->a:Lcn/mucang/jiakaoyi/sundial/client/f;

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 7
    invoke-static {v2, v3, v0}, Lcn/mucang/android/core/utils/z;->d(Landroid/app/Activity;Lf/a/a/a/n/c/a;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final p(Lcn/mucang/android/core/permission/model/PermissionsResult;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/core/permission/model/PermissionsResult;->getGrantedAll()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->w()V

    :cond_0
    return-void
.end method

.method private static final v(Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;)V
    .locals 2

    const-string v0, "$config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->B()Z

    move-result v1

    sput-boolean v1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->d:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->b()Lcn/mucang/jiakaoyi/sundial/client/o;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcn/mucang/jiakaoyi/sundial/client/o;->b()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0xf

    if-ge p0, v1, :cond_3

    .line 3
    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->o()V

    goto :goto_1

    .line 4
    :cond_3
    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->w()V

    :goto_1
    return-void
.end method

.method private final w()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->e()V

    :cond_0
    const-string v0, "SundialLog"

    const-string v1, "Client:\u8ba1\u65f6\u5668\u7ec8\u7aef\u521d\u59cb\u5316"

    .line 4
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 6
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$initInternal$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$initInternal$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final A()Lkotlinx/coroutines/flow/b2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/b2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->c:Lkotlinx/coroutines/flow/b2;

    return-object v0
.end method

.method public final G()V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SundialLog"

    const-string v1, "Service:\u6253\u5f00\u8ba1\u65f6\u5668\u9875\u9762"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/sundial/library/Sundial;->startSundialPage(Landroid/content/Context;)V

    return-void
.end method

.method public final I()V
    .locals 7

    const-string v0, "SundialLog"

    const-string v1, "showMiniWindow"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$showMiniWindow$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$showMiniWindow$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 7

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$onSignalChanged$1;-><init>(Lcn/mucang/android/jiakaoyi/signal/c/e;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->a()V

    :goto_0
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->t()V

    return-void
.end method

.method public final r()Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->k:Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    return-object v0
.end method

.method public final s()Lkotlinx/coroutines/flow/b2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/b2<",
            "Lcn/mucang/jiakaoyi/sundial/client/model/LeaningTime;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->b:Lkotlinx/coroutines/flow/b2;

    return-object v0
.end method

.method public final t()V
    .locals 2

    const-string v0, "SundialLog"

    const-string v1, "hideMiniWindow"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/sundial/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->j:Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialMiniWindow;->f()V

    return-void
.end method

.method public final u(Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sput-object p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->k:Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->a()Lcn/mucang/android/jiakaoyi/framework/camera/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$b;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$b;-><init>()V

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->d(Lcn/mucang/android/jiakaoyi/framework/camera/a;)V

    .line 4
    :cond_0
    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/g;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/sundial/client/g;-><init>(Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(Landroid/app/Activity;Lkotlin/jvm/b/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->k:Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->b()Lcn/mucang/jiakaoyi/sundial/client/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/sundial/client/o;->a()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->d()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p2, v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;-><init>(Landroid/app/Activity;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_2

    .line 3
    :cond_4
    invoke-interface {p2}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final y(Landroid/app/Activity;Ljava/lang/String;ZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    move-object v3, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "xyToken"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    move-object v4, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "back"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->k:Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->b()Lcn/mucang/jiakaoyi/sundial/client/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/sundial/client/o;->a()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->d()Z

    move-result v0

    if-ne v0, v6, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    .line 2
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move-object/from16 v5, p5

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogin$1;-><init>(Ljava/lang/String;Landroid/app/Activity;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;ZLkotlin/coroutines/c;)V

    const/4 v6, 0x3

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_5
    :goto_2
    const-string v0, "interceptLogin\uff1a\u975e\u8ba1\u65f6\u8bbe\u5907\uff0c\u4e0d\u505a\u5904\u7406"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p4}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final z(Landroid/app/Activity;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "back"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->k:Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->b()Lcn/mucang/jiakaoyi/sundial/client/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcn/mucang/jiakaoyi/sundial/client/o;->a()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->l:Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/service/JkySundialService;->d()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    .line 2
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p2, p3, v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1;-><init>(Landroid/app/Activity;Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    .line 3
    :cond_5
    :goto_2
    invoke-interface {p2}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method
