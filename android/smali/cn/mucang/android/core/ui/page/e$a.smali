.class Lcn/mucang/android/core/ui/page/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/core/ui/page/e;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/ui/page/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/core/ui/page/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/e$a;->a:Lcn/mucang/android/core/ui/page/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/e$a;->a:Lcn/mucang/android/core/ui/page/e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/mucang/android/core/ui/page/e;->a(Lcn/mucang/android/core/ui/page/e;Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
