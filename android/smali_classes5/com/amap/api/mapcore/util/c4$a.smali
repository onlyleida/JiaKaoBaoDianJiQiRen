.class Lcom/amap/api/mapcore/util/c4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c4;->g(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c4;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c4;->c(Lcom/amap/api/mapcore/util/c4;)I

    move-result v1

    sub-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c4;->l(Lcom/amap/api/mapcore/util/c4;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c4;->c(Lcom/amap/api/mapcore/util/c4;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c4;->l(Lcom/amap/api/mapcore/util/c4;)I

    move-result v1

    rem-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c4;->c(Lcom/amap/api/mapcore/util/c4;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c4;->l(Lcom/amap/api/mapcore/util/c4;)I

    move-result v2

    div-int/2addr v1, v2

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c4;->q(Lcom/amap/api/mapcore/util/c4;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore/util/c4;->l:I

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c4;->r(Lcom/amap/api/mapcore/util/c4;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c4;->l(Lcom/amap/api/mapcore/util/c4;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    new-instance v3, Lcom/amap/api/mapcore/util/c4$a$a;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/mapcore/util/c4$a$a;-><init>(Lcom/amap/api/mapcore/util/c4$a;II)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    new-instance v3, Lcom/amap/api/mapcore/util/c4$a$b;

    invoke-direct {v3, p0, v0, v1}, Lcom/amap/api/mapcore/util/c4$a$b;-><init>(Lcom/amap/api/mapcore/util/c4$a;II)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/c4;->d(Lcom/amap/api/mapcore/util/c4;I)I

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c4;->t(Lcom/amap/api/mapcore/util/c4;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    .line 13
    invoke-static {v2}, Lcom/amap/api/mapcore/util/c4;->v(Lcom/amap/api/mapcore/util/c4;)I

    move-result v2

    int-to-long v2, v2

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
