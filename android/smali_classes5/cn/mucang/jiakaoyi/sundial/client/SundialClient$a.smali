.class public final Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/sundial/client/SundialClient$Config;",
        "",
        "()V",
        "needInitCamera",
        "",
        "getNeedInitCamera",
        "()Z",
        "setNeedInitCamera",
        "(Z)V",
        "sourceVideoFactory",
        "Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;",
        "getSourceVideoFactory",
        "()Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;",
        "setSourceVideoFactory",
        "(Lcn/mucang/android/jiakaoyi/framework/camera/SourceVideoFactory;)V",
        "sundialListener",
        "Lcn/mucang/jiakaoyi/sundial/client/SundialListener;",
        "getSundialListener",
        "()Lcn/mucang/jiakaoyi/sundial/client/SundialListener;",
        "setSundialListener",
        "(Lcn/mucang/jiakaoyi/sundial/client/SundialListener;)V",
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
.field private a:Lcn/mucang/jiakaoyi/sundial/client/o;

.field private b:Lcn/mucang/android/jiakaoyi/framework/camera/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcn/mucang/android/jiakaoyi/framework/camera/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->b:Lcn/mucang/android/jiakaoyi/framework/camera/a;

    return-object v0
.end method

.method public final b()Lcn/mucang/jiakaoyi/sundial/client/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->a:Lcn/mucang/jiakaoyi/sundial/client/o;

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    return-void
.end method

.method public final d(Lcn/mucang/android/jiakaoyi/framework/camera/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->b:Lcn/mucang/android/jiakaoyi/framework/camera/a;

    return-void
.end method

.method public final e(Lcn/mucang/jiakaoyi/sundial/client/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->a:Lcn/mucang/jiakaoyi/sundial/client/o;

    return-void
.end method
