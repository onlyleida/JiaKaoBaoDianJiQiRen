.class public Lcn/mucang/android/ui/framework/widget/tab/animation/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;)Lcn/mucang/android/ui/framework/widget/tab/animation/d;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;->WIDTH_SCALE:Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Lcn/mucang/android/ui/framework/widget/tab/animation/e;

    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/animation/e;-><init>()V

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lcn/mucang/android/ui/framework/widget/tab/animation/b;

    invoke-direct {p0}, Lcn/mucang/android/ui/framework/widget/tab/animation/b;-><init>()V

    return-object p0
.end method
