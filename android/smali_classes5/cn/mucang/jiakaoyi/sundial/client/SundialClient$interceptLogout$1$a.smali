.class public final Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/SundialCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "cn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1$2",
        "Lcn/mucang/sundial/library/SundialCallBack;",
        "onResult",
        "",
        "success",
        "",
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


# instance fields
.field final synthetic a:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/b/a;Lkotlin/jvm/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1$a;->a:Lkotlin/jvm/b/a;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1$a;->b:Lkotlin/jvm/b/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1$a;->d(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic b(Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1$a;->c(Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final c(Lkotlin/jvm/b/a;)V
    .locals 1

    const-string v0, "$next"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->SpecialVoice:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v0, "\u7b7e\u9000\u6210\u529f"

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static final d(Lkotlin/jvm/b/a;)V
    .locals 1

    const-string v0, "$back"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->A()Lkotlinx/coroutines/flow/b2;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/b2;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1$a;->a:Lkotlin/jvm/b/a;

    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/k;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/sundial/client/k;-><init>(Lkotlin/jvm/b/a;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptLogout$1$a;->b:Lkotlin/jvm/b/a;

    new-instance v0, Lcn/mucang/jiakaoyi/sundial/client/j;

    invoke-direct {v0, p1}, Lcn/mucang/jiakaoyi/sundial/client/j;-><init>(Lkotlin/jvm/b/a;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
