.class public final Lcom/blankj/utilcode/util/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/k$c;,
        Lcom/blankj/utilcode/util/k$b;,
        Lcom/blankj/utilcode/util/k$f;,
        Lcom/blankj/utilcode/util/k$d;,
        Lcom/blankj/utilcode/util/k$e;
    }
.end annotation


# static fields
.field private static a:Lcom/blankj/utilcode/util/k$c; = null

.field private static b:I = -0x1

.field private static c:I = -0x1

.field private static d:I = -0x1

.field private static e:I = -0x1000001

.field private static f:I = -0x1

.field private static g:I = -0x1000001

.field private static h:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a()Lcom/blankj/utilcode/util/k$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/k;->a:Lcom/blankj/utilcode/util/k$c;

    return-object v0
.end method

.method static synthetic b(Lcom/blankj/utilcode/util/k$c;)Lcom/blankj/utilcode/util/k$c;
    .locals 0

    .line 1
    sput-object p0, Lcom/blankj/utilcode/util/k;->a:Lcom/blankj/utilcode/util/k$c;

    return-object p0
.end method

.method static synthetic c()I
    .locals 1

    .line 1
    sget v0, Lcom/blankj/utilcode/util/k;->g:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .line 1
    sget v0, Lcom/blankj/utilcode/util/k;->h:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .line 1
    sget v0, Lcom/blankj/utilcode/util/k;->b:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .line 1
    sget v0, Lcom/blankj/utilcode/util/k;->c:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .line 1
    sget v0, Lcom/blankj/utilcode/util/k;->d:I

    return v0
.end method

.method static synthetic h(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/k;->j(Landroid/widget/TextView;)V

    return-void
.end method

.method public static i()V
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/k;->a:Lcom/blankj/utilcode/util/k$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/blankj/utilcode/util/k$c;->cancel()V

    :cond_0
    return-void
.end method

.method private static j(Landroid/widget/TextView;)V
    .locals 5

    .line 1
    sget v0, Lcom/blankj/utilcode/util/k;->f:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2
    sget-object v0, Lcom/blankj/utilcode/util/k;->a:Lcom/blankj/utilcode/util/k$c;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/k$c;->getView()Landroid/view/View;

    move-result-object v0

    .line 3
    sget v2, Lcom/blankj/utilcode/util/k;->f:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lcom/blankj/utilcode/util/k;->e:I

    const v2, -0x1000001

    if-eq v0, v2, :cond_4

    .line 6
    sget-object v0, Lcom/blankj/utilcode/util/k;->a:Lcom/blankj/utilcode/util/k$c;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/k$c;->getView()Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 9
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lcom/blankj/utilcode/util/k;->e:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 10
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 11
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/blankj/utilcode/util/k;->e:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 12
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/blankj/utilcode/util/k;->e:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 13
    :cond_3
    sget p0, Lcom/blankj/utilcode/util/k;->e:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static k(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/k$a;

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/k$a;-><init>(Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/Utils;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static varargs l(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "null"

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 2
    :goto_0
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/k;->k(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static varargs m(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/k;->l(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
