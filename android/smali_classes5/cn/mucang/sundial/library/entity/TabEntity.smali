.class public final Lcn/mucang/sundial/library/entity/TabEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/fragment/app/Fragment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u0000*\n\u0008\u0000\u0010\u0002 \u0001*\u00020\u00012\u00020\u0003B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\u0008\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ2\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0007H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R!\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0016\u001a\u0004\u0008\u0017\u0010\tR\u0019\u0010\n\u001a\u00020\u00048\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0006\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/sundial/library/entity/TabEntity;",
        "Landroidx/fragment/app/Fragment;",
        "T",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "Ljava/lang/Class;",
        "component2",
        "()Ljava/lang/Class;",
        "label",
        "page",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Class;)Lcn/mucang/sundial/library/entity/TabEntity;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Class;",
        "getPage",
        "Ljava/lang/String;",
        "getLabel",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Class;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final label:Ljava/lang/String;

.field private final page:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/entity/TabEntity;->label:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/sundial/library/entity/TabEntity;->page:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic copy$default(Lcn/mucang/sundial/library/entity/TabEntity;Ljava/lang/String;Ljava/lang/Class;ILjava/lang/Object;)Lcn/mucang/sundial/library/entity/TabEntity;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcn/mucang/sundial/library/entity/TabEntity;->label:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcn/mucang/sundial/library/entity/TabEntity;->page:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/entity/TabEntity;->copy(Ljava/lang/String;Ljava/lang/Class;)Lcn/mucang/sundial/library/entity/TabEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TabEntity;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TabEntity;->page:Ljava/lang/Class;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Class;)Lcn/mucang/sundial/library/entity/TabEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcn/mucang/sundial/library/entity/TabEntity<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "label"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcn/mucang/sundial/library/entity/TabEntity;

    invoke-direct {v0, p1, p2}, Lcn/mucang/sundial/library/entity/TabEntity;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcn/mucang/sundial/library/entity/TabEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcn/mucang/sundial/library/entity/TabEntity;

    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TabEntity;->label:Ljava/lang/String;

    iget-object v1, p1, Lcn/mucang/sundial/library/entity/TabEntity;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TabEntity;->page:Ljava/lang/Class;

    iget-object p1, p1, Lcn/mucang/sundial/library/entity/TabEntity;->page:Ljava/lang/Class;

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

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TabEntity;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getPage()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TabEntity;->page:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcn/mucang/sundial/library/entity/TabEntity;->label:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcn/mucang/sundial/library/entity/TabEntity;->page:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabEntity(label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/library/entity/TabEntity;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/sundial/library/entity/TabEntity;->page:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
