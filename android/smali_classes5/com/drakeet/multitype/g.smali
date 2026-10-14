.class public final Lcom/drakeet/multitype/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/drakeet/multitype/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/drakeet/multitype/c<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/drakeet/multitype/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/drakeet/multitype/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/drakeet/multitype/c;Lcom/drakeet/multitype/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/drakeet/multitype/c<",
            "TT;*>;",
            "Lcom/drakeet/multitype/e<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/drakeet/multitype/g;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/drakeet/multitype/g;->b:Lcom/drakeet/multitype/c;

    iput-object p3, p0, Lcom/drakeet/multitype/g;->c:Lcom/drakeet/multitype/e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drakeet/multitype/g;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Lcom/drakeet/multitype/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/drakeet/multitype/c<",
            "TT;*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drakeet/multitype/g;->b:Lcom/drakeet/multitype/c;

    return-object v0
.end method

.method public final c()Lcom/drakeet/multitype/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/drakeet/multitype/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/drakeet/multitype/g;->c:Lcom/drakeet/multitype/e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/drakeet/multitype/g;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/drakeet/multitype/g;

    iget-object v0, p0, Lcom/drakeet/multitype/g;->a:Ljava/lang/Class;

    iget-object v1, p1, Lcom/drakeet/multitype/g;->a:Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/drakeet/multitype/g;->b:Lcom/drakeet/multitype/c;

    iget-object v1, p1, Lcom/drakeet/multitype/g;->b:Lcom/drakeet/multitype/c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/drakeet/multitype/g;->c:Lcom/drakeet/multitype/e;

    iget-object p1, p1, Lcom/drakeet/multitype/g;->c:Lcom/drakeet/multitype/e;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/drakeet/multitype/g;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/drakeet/multitype/g;->b:Lcom/drakeet/multitype/c;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/drakeet/multitype/g;->c:Lcom/drakeet/multitype/e;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type(clazz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drakeet/multitype/g;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drakeet/multitype/g;->b:Lcom/drakeet/multitype/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", linker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/drakeet/multitype/g;->c:Lcom/drakeet/multitype/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
