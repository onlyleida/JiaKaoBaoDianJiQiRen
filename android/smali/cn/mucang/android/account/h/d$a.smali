.class Lcn/mucang/android/account/h/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/h/d;->u(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/h/d;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/h/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/h/d$a;->a:Lcn/mucang/android/account/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/h/d$a;->a:Lcn/mucang/android/account/h/d;

    invoke-static {p1}, Lcn/mucang/android/account/h/d;->r(Lcn/mucang/android/account/h/d;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/h/d$a;->a:Lcn/mucang/android/account/h/d;

    invoke-static {p1}, Lcn/mucang/android/account/h/d;->s(Lcn/mucang/android/account/h/d;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return p2
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/mucang/android/account/h/d$a;->a:Lcn/mucang/android/account/h/d;

    invoke-static {p1}, Lcn/mucang/android/account/h/d;->r(Lcn/mucang/android/account/h/d;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/account/h/d$a;->a:Lcn/mucang/android/account/h/d;

    invoke-static {p1}, Lcn/mucang/android/account/h/d;->s(Lcn/mucang/android/account/h/d;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method
