.class public abstract Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;->IDLE:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/material/appbar/AppBarLayout;Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;)V
.end method

.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a(Lcom/google/android/material/appbar/AppBarLayout;Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;)V

    .line 3
    :cond_0
    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 5
    iget-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;->COLLAPSED:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_2

    .line 6
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a(Lcom/google/android/material/appbar/AppBarLayout;Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;)V

    .line 7
    :cond_2
    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    goto :goto_0

    .line 8
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;->IDLE:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    if-eq p2, v0, :cond_4

    .line 9
    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a(Lcom/google/android/material/appbar/AppBarLayout;Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;)V

    .line 10
    :cond_4
    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;->a:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    :goto_0
    return-void
.end method
