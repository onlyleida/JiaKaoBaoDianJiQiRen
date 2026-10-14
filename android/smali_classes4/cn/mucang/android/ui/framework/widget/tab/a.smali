.class public final synthetic Lcn/mucang/android/ui/framework/widget/tab/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/framework/widget/tab/animation/c;


# instance fields
.field public final synthetic a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/ui/framework/widget/tab/a;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/ui/framework/widget/tab/a;->a:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
