.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->a()Lkotlinx/coroutines/t1;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->a()Lkotlinx/coroutines/t1;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->a(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/socket/u;->t(Z)Z

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "getCurrentActivity()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->e(Landroid/app/Activity;)V

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;

    sget-object v2, Lkotlinx/coroutines/l1;->a:Lkotlinx/coroutines/l1;

    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;

    invoke-direct {v5, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->b(Lkotlinx/coroutines/t1;)V

    return-void
.end method
