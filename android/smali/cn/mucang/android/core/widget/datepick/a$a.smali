.class Lcn/mucang/android/core/widget/datepick/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/widget/datepick/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/widget/datepick/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/widget/datepick/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/widget/datepick/a$a;->a:Lcn/mucang/android/core/widget/datepick/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/mucang/android/core/widget/datepick/a$a;->a:Lcn/mucang/android/core/widget/datepick/a;

    invoke-static {p1}, Lcn/mucang/android/core/widget/datepick/a;->r(Lcn/mucang/android/core/widget/datepick/a;)Lcn/mucang/android/core/widget/datepick/a$h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/core/widget/datepick/a$a;->a:Lcn/mucang/android/core/widget/datepick/a;

    invoke-static {p1}, Lcn/mucang/android/core/widget/datepick/a;->r(Lcn/mucang/android/core/widget/datepick/a;)Lcn/mucang/android/core/widget/datepick/a$h;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/a$a;->a:Lcn/mucang/android/core/widget/datepick/a;

    invoke-static {v0}, Lcn/mucang/android/core/widget/datepick/a;->s(Lcn/mucang/android/core/widget/datepick/a;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/mucang/android/core/widget/datepick/a$h;->a(Ljava/util/Date;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/core/widget/datepick/a$a;->a:Lcn/mucang/android/core/widget/datepick/a;

    invoke-virtual {p1}, Landroidx/fragment/app/c;->dismiss()V

    return-void
.end method
