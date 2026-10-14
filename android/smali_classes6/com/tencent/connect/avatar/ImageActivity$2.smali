.class Lcom/tencent/connect/avatar/ImageActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/avatar/ImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/avatar/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/connect/avatar/ImageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->d(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->e(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->e(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object p1

    const/16 v1, 0x15

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 4
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->f(Lcom/tencent/connect/avatar/ImageActivity;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x24

    const/16 v1, 0x5e

    const/16 v2, 0x86

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 6
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/connect/avatar/ImageActivity$2$1;

    invoke-direct {v0, p0}, Lcom/tencent/connect/avatar/ImageActivity$2$1;-><init>(Lcom/tencent/connect/avatar/ImageActivity$2;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 8
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->h(Lcom/tencent/connect/avatar/ImageActivity;)Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-string v2, "10657"

    invoke-virtual {p1, v2, v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->i(Lcom/tencent/connect/avatar/ImageActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 11
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-string v4, "10655"

    invoke-virtual {p1, v4, v2, v3}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V

    .line 12
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {p1}, Lcom/tencent/connect/avatar/ImageActivity;->c(Lcom/tencent/connect/avatar/ImageActivity;)Lcom/tencent/connect/avatar/c;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/connect/avatar/c;->b:Z

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/tencent/connect/avatar/ImageActivity$2;->a:Lcom/tencent/connect/avatar/ImageActivity;

    const-string v2, "10654"

    invoke-virtual {p1, v2, v0, v1}, Lcom/tencent/connect/avatar/ImageActivity;->a(Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method
