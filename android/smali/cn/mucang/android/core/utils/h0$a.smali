.class public final Lcn/mucang/android/core/utils/h0$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/utils/h0;->c(Ljava/lang/String;Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/core/utils/RpcSupport$callRpcAction$2",
        "Landroid/content/BroadcastReceiver;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "core-lib_release"
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
.field final synthetic a:Lcn/mucang/android/core/utils/f0;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/utils/f0;JLjava/lang/RuntimeException;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/core/utils/h0$a;->a:Lcn/mucang/android/core/utils/f0;

    iput-wide p2, p0, Lcn/mucang/android/core/utils/h0$a;->b:J

    iput-object p4, p0, Lcn/mucang/android/core/utils/h0$a;->c:Ljava/lang/RuntimeException;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 2
    sget-object v0, Lcn/mucang/android/core/utils/h0;->a:Lcn/mucang/android/core/utils/h0;

    const-string p1, "directCalledResultBundle"

    .line 3
    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcn/mucang/android/core/utils/h0$a;->a:Lcn/mucang/android/core/utils/f0;

    .line 5
    iget-wide v3, p0, Lcn/mucang/android/core/utils/h0$a;->b:J

    .line 6
    iget-object v5, p0, Lcn/mucang/android/core/utils/h0$a;->c:Ljava/lang/RuntimeException;

    .line 7
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/core/utils/h0;->b(Lcn/mucang/android/core/utils/h0;Landroid/os/Bundle;Lcn/mucang/android/core/utils/f0;JLjava/lang/RuntimeException;)V

    return-void
.end method
