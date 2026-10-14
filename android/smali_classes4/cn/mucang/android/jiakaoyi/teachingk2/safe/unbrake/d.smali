.class public abstract Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\nH&J\u0008\u0010\u000f\u001a\u00020\u0010H&J\u0006\u0010\u0011\u001a\u00020\u0004J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;",
        "",
        "()V",
        "selected",
        "",
        "getSelected",
        "()Z",
        "setSelected",
        "(Z)V",
        "getIconRes",
        "",
        "getStatus",
        "getter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "getTextRes",
        "getWarningText",
        "",
        "isSelected",
        "updateSelect",
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


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
.end method

.method public abstract c()I
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->a:Z

    return v0
.end method

.method public final f(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 1

    const-string v0, "getter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->a:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;->a:Z

    return v0
.end method
