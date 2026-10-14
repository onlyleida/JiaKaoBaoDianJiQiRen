.class public abstract Lcn/mucang/android/core/api/verify/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/i/c;


# instance fields
.field private a:Lcn/mucang/android/core/api/verify/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcn/mucang/android/core/api/verify/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/e;->a:Lcn/mucang/android/core/api/verify/f;

    return-void
.end method

.method public c(ZLjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/api/verify/e;->a:Lcn/mucang/android/core/api/verify/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcn/mucang/android/core/api/verify/f;->a(ZLjava/lang/Object;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/api/verify/e;->a:Lcn/mucang/android/core/api/verify/f;

    :cond_0
    return-void
.end method
