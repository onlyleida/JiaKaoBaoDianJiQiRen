.class public final Lcom/loc/cq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:B

.field public b:Ljava/lang/String;

.field public c:Lcom/loc/dq;

.field public d:Lcom/loc/dq;

.field public e:Lcom/loc/dq;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loc/dq;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/loc/dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/cq$a;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/cq$a;->g:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/loc/dq;Lcom/loc/dq;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v2, p0, Lcom/loc/ds;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/loc/ds;

    if-eqz v2, :cond_2

    check-cast p0, Lcom/loc/ds;

    check-cast p1, Lcom/loc/ds;

    iget v2, p0, Lcom/loc/ds;->j:I

    iget v3, p1, Lcom/loc/ds;->j:I

    if-ne v2, v3, :cond_1

    iget p0, p0, Lcom/loc/ds;->k:I

    iget p1, p1, Lcom/loc/ds;->k:I

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    instance-of v2, p0, Lcom/loc/dr;

    if-eqz v2, :cond_4

    instance-of v2, p1, Lcom/loc/dr;

    if-eqz v2, :cond_4

    check-cast p0, Lcom/loc/dr;

    check-cast p1, Lcom/loc/dr;

    iget v2, p0, Lcom/loc/dr;->l:I

    iget v3, p1, Lcom/loc/dr;->l:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/loc/dr;->k:I

    iget v3, p1, Lcom/loc/dr;->k:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Lcom/loc/dr;->j:I

    iget p1, p1, Lcom/loc/dr;->j:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    instance-of v2, p0, Lcom/loc/dt;

    if-eqz v2, :cond_6

    instance-of v2, p1, Lcom/loc/dt;

    if-eqz v2, :cond_6

    check-cast p0, Lcom/loc/dt;

    check-cast p1, Lcom/loc/dt;

    iget v2, p0, Lcom/loc/dt;->j:I

    iget v3, p1, Lcom/loc/dt;->j:I

    if-ne v2, v3, :cond_5

    iget p0, p0, Lcom/loc/dt;->k:I

    iget p1, p1, Lcom/loc/dt;->k:I

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    instance-of v2, p0, Lcom/loc/du;

    if-eqz v2, :cond_7

    instance-of v2, p1, Lcom/loc/du;

    if-eqz v2, :cond_7

    check-cast p0, Lcom/loc/du;

    check-cast p1, Lcom/loc/du;

    iget v2, p0, Lcom/loc/du;->j:I

    iget v3, p1, Lcom/loc/du;->j:I

    if-ne v2, v3, :cond_7

    iget p0, p0, Lcom/loc/du;->k:I

    iget p1, p1, Lcom/loc/du;->k:I

    if-ne p0, p1, :cond_7

    return v0

    :cond_7
    return v1

    :cond_8
    :goto_0
    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_1

    :cond_9
    const/4 p0, 0x0

    :goto_1
    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_2
    if-ne p0, p1, :cond_b

    return v0

    :cond_b
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/loc/cq$a;->a:B

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cq$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cq$a;->c:Lcom/loc/dq;

    iput-object v0, p0, Lcom/loc/cq$a;->d:Lcom/loc/dq;

    iput-object v0, p0, Lcom/loc/cq$a;->e:Lcom/loc/dq;

    iget-object v0, p0, Lcom/loc/cq$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/loc/cq$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(BLjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/loc/dq;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/loc/cq$a;->a()V

    iput-byte p1, p0, Lcom/loc/cq$a;->a:B

    iput-object p2, p0, Lcom/loc/cq$a;->b:Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/loc/cq$a;->f:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/loc/cq$a;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/loc/dq;

    iget-boolean p3, p2, Lcom/loc/dq;->i:Z

    if-nez p3, :cond_1

    iget-boolean v0, p2, Lcom/loc/dq;->h:Z

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/loc/cq$a;->d:Lcom/loc/dq;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_0

    iget-boolean p3, p2, Lcom/loc/dq;->h:Z

    if-eqz p3, :cond_0

    iput-object p2, p0, Lcom/loc/cq$a;->e:Lcom/loc/dq;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/loc/cq$a;->d:Lcom/loc/dq;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/loc/cq$a;->e:Lcom/loc/dq;

    :cond_3
    iput-object p1, p0, Lcom/loc/cq$a;->c:Lcom/loc/dq;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellInfo{radio="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lcom/loc/cq$a;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operator=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cq$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mainCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cq$a;->c:Lcom/loc/dq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainOldInterCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cq$a;->d:Lcom/loc/dq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainNewInterCell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cq$a;->e:Lcom/loc/dq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cells="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cq$a;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", historyMainCellList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/loc/cq$a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
