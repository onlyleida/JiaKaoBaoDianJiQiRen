.class Lcom/blankj/utilcode/util/k$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method static b(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/blankj/utilcode/util/k$c;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/app/l;->d(Landroid/content/Context;)Landroidx/core/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/blankj/utilcode/util/k$d;

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/k$e;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/k$d;-><init>(Landroid/widget/Toast;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/blankj/utilcode/util/k$f;

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/k$e;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/k$f;-><init>(Landroid/widget/Toast;)V

    return-object v0
.end method
