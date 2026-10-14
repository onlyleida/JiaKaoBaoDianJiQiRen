.class public Lcn/mucang/android/core/config/x/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcn/mucang/android/core/config/x/d;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/core/config/x/c;

    invoke-direct {v0}, Lcn/mucang/android/core/config/x/c;-><init>()V

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcn/mucang/android/core/config/x/a;

    invoke-direct {v0}, Lcn/mucang/android/core/config/x/a;-><init>()V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcn/mucang/android/core/config/x/b;

    invoke-direct {v0}, Lcn/mucang/android/core/config/x/b;-><init>()V

    return-object v0
.end method
