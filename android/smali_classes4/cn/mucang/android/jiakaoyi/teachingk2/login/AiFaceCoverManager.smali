.class public final Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rR\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;",
        "",
        "()V",
        "faceFilter",
        "cn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1;",
        "isEnableCover",
        "",
        "isFaceCover",
        "isInit",
        "startTime",
        "",
        "init",
        "Lcn/mucang/jiakaoyi/uilib/login/face/IFaceFilter;",
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
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;

.field private static b:Z

.field private static volatile c:Z

.field private static volatile d:Z

.field private static e:J

.field private static final f:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->e:J

    return-wide v0
.end method

.method public static final synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->c:Z

    return v0
.end method

.method public static final synthetic c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->d:Z

    return v0
.end method

.method public static final synthetic d(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->c:Z

    return-void
.end method

.method public static final synthetic e(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->d:Z

    return-void
.end method

.method public static final synthetic f(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->e:J

    return-void
.end method

.method private static final h(Lcn/mucang/android/jiakaoyi/signal/ai/b;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/b;->b:Z

    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->c:Z

    .line 2
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/b;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "\u662f\u5426\u5f00\u542fai\u4eba\u8138\u906e\u6321\u68c0\u6d4b\uff1a"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    return-void
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->isMask()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->isSunglasses()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->d:Z

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/utils/p;->a:Lcn/mucang/android/jiakaoyi/framework/utils/p;

    const/16 v1, 0x3e8

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/login/a;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V

    const-string p0, "AIFaceCoverModel"

    invoke-virtual {v0, p0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/p;->b(Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ai\u906e\u6321\u68c0\u6d4b\u662f\u5426\u906e\u6321\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cresult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;->result:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " \u5f00\u5173\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->c:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\uff0cstartTime\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->j(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->i(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/signal/ai/b;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->h(Lcn/mucang/android/jiakaoyi/signal/ai/b;)V

    return-void
.end method


# virtual methods
.method public final g()Lcn/mucang/jiakaoyi/uilib/login/face/o;
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->b:Z

    const-string v0, "\u521d\u59cb\u5316ai\u906e\u6321\u68c0\u6d4b"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->g(Ljava/lang/Object;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/b;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/login/b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->f:Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager$faceFilter$1;

    return-object v0
.end method
