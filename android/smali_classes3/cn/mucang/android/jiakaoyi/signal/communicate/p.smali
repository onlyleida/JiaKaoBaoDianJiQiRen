.class public final Lcn/mucang/android/jiakaoyi/signal/communicate/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/communicate/ComProviderWrap;",
        "",
        "name",
        "",
        "provider",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/McCommunicatorProvider;",
        "(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/McCommunicatorProvider;)V",
        "getName",
        "()Ljava/lang/String;",
        "getProvider",
        "()Lcn/mucang/android/jiakaoyi/signal/communicate/restruct/channel/provider/McCommunicatorProvider;",
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


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/p;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/p;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/p;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    return-object v0
.end method
