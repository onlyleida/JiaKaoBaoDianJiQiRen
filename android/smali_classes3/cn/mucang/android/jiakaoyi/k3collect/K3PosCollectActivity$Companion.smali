.class public final Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "launch",
        "",
        "context",
        "Landroid/content/Context;",
        "siteModel",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "start",
        "MapCollectK3_release"
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
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion;->c(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V

    return-void
.end method

.method private final c(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/a;->c(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siteModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string v1, "\u52a0\u8f7d\u5730\u56fe\u6570\u636e\u4e2d"

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;

    const/4 v1, 0x0

    invoke-direct {v5, p2, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity$Companion$launch$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
