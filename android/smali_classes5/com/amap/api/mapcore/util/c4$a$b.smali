.class Lcom/amap/api/mapcore/util/c4$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c4$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/mapcore/util/c4$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c4$a;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c4$a$b;->c:Lcom/amap/api/mapcore/util/c4$a;

    iput p2, p0, Lcom/amap/api/mapcore/util/c4$a$b;->a:I

    iput p3, p0, Lcom/amap/api/mapcore/util/c4$a$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a$b;->c:Lcom/amap/api/mapcore/util/c4$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/c4;->c(Lcom/amap/api/mapcore/util/c4;)I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore/util/c4$a$b;->a:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a$b;->c:Lcom/amap/api/mapcore/util/c4$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    iget v1, p0, Lcom/amap/api/mapcore/util/c4$a$b;->b:I

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c4;->q(Lcom/amap/api/mapcore/util/c4;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore/util/c4;->l:I

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c4$a$b;->c:Lcom/amap/api/mapcore/util/c4$a;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c4$a;->a:Lcom/amap/api/mapcore/util/c4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c4;->r(Lcom/amap/api/mapcore/util/c4;)V

    return-void
.end method
