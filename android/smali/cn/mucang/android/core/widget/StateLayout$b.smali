.class Lcn/mucang/android/core/widget/StateLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/widget/StateLayout;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/widget/StateLayout;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/widget/StateLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/widget/StateLayout$b;->a:Lcn/mucang/android/core/widget/StateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/widget/StateLayout$b;->a:Lcn/mucang/android/core/widget/StateLayout;

    iget-object p1, p1, Lcn/mucang/android/core/widget/StateLayout;->s:Lcn/mucang/android/core/widget/StateLayout$c;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/core/widget/StateLayout$c;->a()V

    :cond_0
    return-void
.end method
