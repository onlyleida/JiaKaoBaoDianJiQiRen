.class public final Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0005H\u0007R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$Companion;",
        "",
        "()V",
        "cache",
        "Ljava/util/HashMap;",
        "",
        "Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;",
        "getModule",
        "module",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->access$getCache$cp()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    if-nez p1, :cond_0

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;->Other:Lcn/mucang/android/jiakaoyi/signal/ai/PartIdentityModule;

    :cond_0
    return-object p1
.end method
