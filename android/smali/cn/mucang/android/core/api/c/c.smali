.class public abstract Lcn/mucang/android/core/api/c/c;
.super Lcn/mucang/android/core/api/c/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcn/mucang/android/core/config/n;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/mucang/android/core/api/c/d<",
        "TA;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/core/config/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/api/c/d;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected f()Lcn/mucang/android/core/config/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/api/c/d;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/config/n;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/core/api/exception/WeakRefLostException;

    const-string v1, "a is finishing"

    invoke-direct {v0, v1}, Lcn/mucang/android/core/api/exception/WeakRefLostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
