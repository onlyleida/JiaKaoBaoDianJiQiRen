.class public final synthetic Lcn/mucang/android/selectcity/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/selectcity/y;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcn/mucang/android/selectcity/Area;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/selectcity/y;Landroid/view/View;Lcn/mucang/android/selectcity/Area;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/selectcity/k;->a:Lcn/mucang/android/selectcity/y;

    iput-object p2, p0, Lcn/mucang/android/selectcity/k;->b:Landroid/view/View;

    iput-object p3, p0, Lcn/mucang/android/selectcity/k;->c:Lcn/mucang/android/selectcity/Area;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/selectcity/k;->a:Lcn/mucang/android/selectcity/y;

    iget-object v1, p0, Lcn/mucang/android/selectcity/k;->b:Landroid/view/View;

    iget-object v2, p0, Lcn/mucang/android/selectcity/k;->c:Lcn/mucang/android/selectcity/Area;

    invoke-virtual {v0, v1, v2, p1}, Lcn/mucang/android/selectcity/y;->f0(Landroid/view/View;Lcn/mucang/android/selectcity/Area;Landroid/view/View;)V

    return-void
.end method
