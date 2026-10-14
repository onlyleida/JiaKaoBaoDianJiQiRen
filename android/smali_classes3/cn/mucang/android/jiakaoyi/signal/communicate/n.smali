.class public final Lcn/mucang/android/jiakaoyi/signal/communicate/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/signal/communicate/n$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u0006H\u0007J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J\u001c\u0010\r\u001a\u00020\u000c2\u0012\u0008\u0002\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005H\u0007J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0007J\u0008\u0010\u0015\u001a\u00020\u000cH\u0007R\u001e\u0010\u0003\u001a\u0012\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R2\u0010\u0007\u001a&\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00060\u0006 \t*\u0012\u0012\u000c\u0012\n \t*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/communicate/AiCommandAdapter;",
        "",
        "()V",
        "callback",
        "Ljava/lang/ref/WeakReference;",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
        "version",
        "Lcn/mucang/android/jiakaoyi/framework/utils/ValueCache;",
        "kotlin.jvm.PlatformType",
        "getVersion",
        "init",
        "",
        "requestAiVersion",
        "saveVersion",
        "setStudentId",
        "studentId",
        "",
        "setUploadInfo",
        "hardwareNumber",
        "deviceNumber",
        "startOta",
        "ReportDeviceApi",
        "signal_release"
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
.field public static final a:Lcn/mucang/android/jiakaoyi/signal/communicate/n;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/utils/r0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/n;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/n;

    const-string v0, "key.aiVersionInfo"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->i(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaVerResult;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/c;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/c;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/communicate/b;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    return-void
.end method

.method private static final b(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaVerResult;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/n;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaVerResult;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string v1, "it.version"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->j(Ljava/lang/String;)V

    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/signal/ai/c;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/n;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/c;->b:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->j(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->k()V

    return-void
.end method

.method public static synthetic e(Lcn/mucang/android/jiakaoyi/signal/ai/c;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->c(Lcn/mucang/android/jiakaoyi/signal/ai/c;)V

    return-void
.end method

.method public static synthetic f(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaVerResult;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->b(Lcn/mucang/android/jiakaoyi/signal/ai/AIOtaVerResult;)V

    return-void
.end method

.method public static synthetic g([B[B)[B
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->o([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(J)[B
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->m(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->b:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->a()Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiRequestVersion:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiQueryInfo:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private final j(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->c:Lcn/mucang/android/jiakaoyi/framework/utils/r0;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r0;->j(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/n;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :goto_0
    const-string v0, "\u83b7\u53d6\u5230 AI \u7248\u672c\uff1a"

    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v0, "aiVersion"

    .line 4
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/e/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/communicate/a;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/a;

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final k()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/n$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/n$a;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/n$a;->m()V

    .line 3
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 4
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

.method public static final l(J)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "AI \u53d1\u9001\u5b66\u5458 ID:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiSetStudentId:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/e;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/e;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    :cond_0
    return-void
.end method

.method private static final m(J)[B
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->g(J)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "hardwareNumber"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiSetHardwareId:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/d;

    invoke-direct {v2, p0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/d;-><init>([B[B)V

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    :cond_0
    return-void
.end method

.method private static final o([B[B)[B
    .locals 2

    const-string v0, "$hBytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$dBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    .line 2
    array-length v1, p0

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 4
    array-length p0, p1

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->f(I)V

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->d([B)V

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public static final p()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/ai/h/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AiStartOrder:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    goto :goto_0

    :cond_0
    const-string v0, "V2 \u7248\u672c Ai \u534f\u8bae\u4e0d\u652f\u6301\u624b\u52a8\u5347\u7ea7"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method
