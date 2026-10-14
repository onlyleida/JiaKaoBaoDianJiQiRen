.class final Lcom/blankj/utilcode/util/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/k;->k(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/k$a;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/blankj/utilcode/util/k$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/k;->i()V

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/k$a;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/blankj/utilcode/util/k$a;->b:I

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/k$e;->b(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/blankj/utilcode/util/k$c;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/k;->b(Lcom/blankj/utilcode/util/k$c;)Lcom/blankj/utilcode/util/k$c;

    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/k;->a()Lcom/blankj/utilcode/util/k$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/k$c;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x102000b

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    invoke-static {}, Lcom/blankj/utilcode/util/k;->c()I

    move-result v1

    const v2, -0x1000001

    if-eq v1, v2, :cond_1

    .line 6
    invoke-static {}, Lcom/blankj/utilcode/util/k;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/k;->d()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 8
    invoke-static {}, Lcom/blankj/utilcode/util/k;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/k;->e()I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/k;->f()I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/k;->g()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 10
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/k;->a()Lcom/blankj/utilcode/util/k$c;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/k;->e()I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/k;->f()I

    move-result v3

    invoke-static {}, Lcom/blankj/utilcode/util/k;->g()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/blankj/utilcode/util/k$c;->a(III)V

    .line 11
    :cond_4
    invoke-static {v0}, Lcom/blankj/utilcode/util/k;->h(Landroid/widget/TextView;)V

    .line 12
    invoke-static {}, Lcom/blankj/utilcode/util/k;->a()Lcom/blankj/utilcode/util/k$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/k$c;->show()V

    return-void
.end method
